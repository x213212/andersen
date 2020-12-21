Andersen's pointer analysis
===============================

Andersen's algorithm is a famous pointer-analysis algorithm proposed in L.O. Andersen's 1994 Ph.D. thesis. The core idea of his algorithm is to translate the input program with statements of the form "p = q" to constraints of the form "q's points-to set is a subset of p's points-to set", hence it is sometimes also referred to as "inclusion-based" algorithm. The analysis is flow-insensitive and context-insensitive, meaning that it just completely ignores the control-flows in the input program and considers that all statements can be executed in arbitrary order.

This project is an implementation of Andersen's analysis in LLVM. The entire algorithm is broken down into three phases:
- Translating from input LLVM IR into a set of constraints.
- Rewriting the constraints into a smaller set of constraints whose solution should be the same as the original set.
- Solving the optimized constraints.

In phase 1, we treats structs in LLVM-IR field-insensitively. This will yield worse result, but the analysis efficiency and correctness can be more easily guaranteed. We plan to move to a field-sensitive implementation in the future, but for now we want to do the quick dirty things first. Dynamic memory allocations are modelled by their allocation site.

In phase 2, two constraint optimization techniques called HVN and HU are used. The basic idea is to search for pointers that have equivalent points-to set and merge together their representations. Details can be found in Ben Hardekopf's SAS'07 paper.

In phase 3, two constraint solving techniques called HCD and LCD are used. The basic idea is to search for strongly-connected-components in the constraint graph on-the-fly. Details can be found in Ben Hardekopf's PLDI'07 paper ("The Ant and the Grasshopper").

Publications
------------

[Program Analysis and Specialization for the C Programming Language](http://www.cs.cornell.edu/courses/cs711/2005fa/papers/andersen-thesis94.pdf). Ph.D. thesis

[Exploiting Pointer and Location Equivalence to Optimize Pointer Analysis](http://www.cs.ucsb.edu/~benh/research/papers/hardekopf07exploiting.pdf). International Static Analysis Symposium (SAS), 2007

[The Ant and the Grasshopper: Fast and Accurate Pointer Analysis for Millions of Lines of Code](http://www.cs.ucsb.edu/~benh/research/papers/hardekopf07ant.pdf). ACM Conference on Programming Language Design and Implementation (PLDI), 2007

Building the project
-----------------

To build Andersen's analysis, you need to have a C++ compiler with C++14 support
installed (e.g. g++ 4.9 or later, clang++ 3.4 or later) as well as cmake 2.8.8 or later. It should compile without trouble on most recent Linux or MacXOS
machines.

1. Making sure that LLVM 6.0 is installed somewhere on your system and CMake is able to find it by setting LLVM_DIR variable if necessary (see [here](https://llvm.org/docs/CMake.html#embedding-llvm-in-your-project) for more details). You might want to look at the commit history for how to cope with the API changes if you are interested in targeting older versions of LLVM (the project was initially written for LLVM 3.9 and patches were made whenever LLVM makes a new release).

2. Checkout this project

3. Build this project
```bash
cd <directory-you-want-to-build-this-project>
cmake <project-source-code-dir> -DCMAKE_BUILD_TYPE=<specify build type (Debug or Release)> -DBUILD_TESTS=<specify whether you want to build test files (ON or OFF)>
make
```
Note that in the configuration step you might want to consider setting the build mode (Release/Debug with or without Asserts) to match the build mode of your LLVM library.

Using Andersen's analysis
----------------

The analysis is implemented as an LLVM pass. By default it does not dump anything into the console, hence the only way you can extract information from it is to write another pass that take the AndersenAA pass as a prerequisite and make alias queries using AndersenAA's public interfaces. AndersenAA conforms to the standard LLVM AliasAnalysis pass, so it shouldn't be too difficult if you know how to use other build-in alias analysis in LLVM (like basicaa).

If you want points-to information rather than alias information, things become trickier. The Andersen pass does have all the points-to information available: check out `Andersen::getPointsToSet()`. Note that memory objects, in our case, are represented by their corresponding allocation site. 

Limitations
----------------

- The analysis does not support the following LLVM instructions: extractvalue, insertvalue, landingpad, resume, atomicrmw, atomiccmpxchg. In other words, exception handling and atomic operations are not considered in my project. (The atomic instruction restriction is easy to get around, though: LLVM has a loweratomic pass that lowers all atmoic instructions.)

- Field-insensitivity. Adding support for field sensitivity will drastically increase the complexity of the algorithm. 

- External library calls are not completely modelled. Calls to common library functions, such as malloc(), printf(), strcmp(), etc. are properly handled, yet other uncommonly used functions in libc are not. The analysis will dump the name of all external functions not recognized by it to the command line, and if you need the analysis to model them, please look at ExternalLibrary.cpp, or contact me.

Related projects
----------------

Check out my [tpa](https://github.com/grievejia/tpa) repo for a full-blown flow-sensitive, context-sensitive, field-sensitive pointer analysis for LLVM. It hasn't been updated for a while and is woefully undocumented, but I hope it could give up some ideas of how to write such a thing. 

If you only want a more precise alias analysis for your compiler pipeline, I'd recommend using the new [CFLAliasAnalysis](https://github.com/grievejia/GSoC2016) I contributed to in GSoC 2016. The Andersen variant is highly experimental, but it is in-tree and is much less of a hassle to use. 

# 嘗試修改專案為平行化測試
上次課堂作業
https://x8795278.blogspot.com/2020/11/simple-llvm-pass-analysis.html
分析的專案
https://github.com/grievejia/andersen
在尋找可以開啟修改為平行化的地方，雖然後面改完了但是發現一個大bug

主要想法是
https://github.com/grievejia/andersen/blob/master/include/Andersen.h
在這個地方
![](https://i.imgur.com/rbRqzRc.png)
去尋找程式進入點那我選擇的是 collectConstraints 這個地方
https://github.com/grievejia/andersen/blob/ec036a43ac7bc3523cf50d43ad711c095c5f1112/lib/ConstraintCollect.cpp
可以看到
![](https://i.imgur.com/MXMkegw.png)
```c=

  // Here is a notable point before we proceed:
  // For functions with non-local linkage type, theoretically we should not
  // trust anything that get passed to it or get returned by it. However,
  // precision will be seriously hurt if we do that because if we do not run a
  // -internalize pass before the -anders pass, almost every function is marked
  // external. We'll just assume that even external linkage will not ruin the
  // analysis result first

  for (auto const &f : M) {
    if (f.isDeclaration() || f.isIntrinsic())
      continue;

    // Scan the function body
    // A visitor pattern might help modularity, but it needs more boilerplate
    // codes to set up, and it breaks down the main logic into pieces

    // First, create a value node for each instruction with pointer type. It is
    // necessary to do the job here rather than on-the-fly because an
    // instruction may refer to the value node defined before it (e.g. phi
    // nodes)
    for (const_inst_iterator itr = inst_begin(f), ite = inst_end(f); itr != ite;
         ++itr) {
      auto inst = &*itr.getInstructionIterator();
      if (inst->getType()->isPointerTy())
        nodeFactory.createValueNode(inst);
    }

    // Now, collect constraint for each relevant instruction
    for (const_inst_iterator itr = inst_begin(f), ite = inst_end(f); itr != ite;
         ++itr) {
      auto inst = &*itr.getInstructionIterator();
      collectConstraintsForInstruction(inst);
    }
  }
```
意味者我們可以在最後一個 function
> collectConstraintsForInstruction

找到我們的蒐集相關約束的程式碼
也就是

https://github.com/grievejia/andersen/blob/ec036a43ac7bc3523cf50d43ad711c095c5f1112/lib/ConstraintCollect.cpp

![](https://i.imgur.com/OHw5afl.png)
可以看到 
>switch (inst->getOpcode()) {
  case Instruction::Alloca: {
  
這是原來的分析方式，程式流程 每一個 stmt 走 switch case 應該會是這樣
![](https://i.imgur.com/c0AjOWK.png)
應該是這樣子的走法，我想假設我在這邊引用thread pool 會發生什麼事
我隨便找了一個 thread pool 就直接改了
https://github.com/AngryHacker/articles/issues/1#issue-369867252
那麼合體後可能
![](https://i.imgur.com/qvc2K3q.png)
程式流程會變成這樣
可以看到原本的 function 裡面有這些東西
代表 可能nodeFactory 可能有順序上關係，那我們要找方法迴避一下
 > NodeIndex valNode = nodeFactory.getValueNodeFor(inst);

下面有用到一些作弊 和 function 指標的方式算是紀錄一下
我打算 在每一個 task 其實只是單存 插入 以 inst 當 key 和 fptr 當 value
>typedef void (Andersen::*fptr)(const llvm::Instruction *);
map<const llvm::Instruction *, fptr> mymap2;

那麼我就可以在 任務隊列任務出來的時候看當時設定的幾個 thread 來決定處理幾個
我額外用一個
Andersen *thistmp;
再void Andersen::collectConstraints(const Module &M) 
裡面去 指向自己
thistmp = this;
這樣方便我們在 task 指定的時候 防止抓不到 我們自己的 fucntion 
主要是Andersen fucntion 定義在外面 所以用了指標，絕對不是炫技xd
那麼簡單說一下技巧可能 在 cmake 的時候 仔細看
![](https://i.imgur.com/2x0AfNw.png)
![](https://i.imgur.com/26mwArT.png)
加入我們的  -lpthread
再把剛剛的 專案 make 完後的
libthreadpool.o 
複製到
CMakeFiles/AndersenObj.dir/libthreadpool.o 
回到目錄我們在 一開始的 ConstraintCollect.cpp
#include <threadpool.h> 也不會在編譯完 找不到我們的 標頭檔了
![](https://i.imgur.com/qkOjr8W.png)
![](https://i.imgur.com/IfgXVDB.png)

再往下面看我們蒐集約束的位置
```c=
    // Now, collect constraint for each relevant instruction
    //#pragma omp for schedule(static)
    for (const_inst_iterator itr = inst_begin(f), ite = inst_end(f); itr != ite;
         ++itr) {

      // fprintf(stderr, "%p\n", &inst);
      auto inst = &*itr.getInstructionIterator();
      threadpool_add(pool, &dummy_task, (Instruction *)inst, 0);
      pthread_mutex_lock(&lock);
      tasks++;
      pthread_mutex_unlock(&lock);

      // collectConstraintsForInstruction(inst);
    }
```
到這邊我們要來看一下dummy_task
這邊我對 arg 進行了強轉，沒有gdb 只能 printf 記憶體位置，如果指向
    auto inst 和arg記憶體位置 一樣
    有成功 ，很大機率就是成功了，記得一直強轉一下或許有機會
```c=
void dummy_task(void *arg) {

  (thistmp->collectConstraintsForInstruction)((Instruction *)arg);

}

```
這邊可以看到 thistmp 為什麼要用這個呢原因就是
要在 外部 fucntion 去呼叫我們的 void Andersen:: class 裡面的 fucntion ，其實是不能的

void 不行呼叫 void Andersen:: fucntion
![](https://i.imgur.com/XTEcRps.png)
也就是這樣呼叫方式是不行的
所以我先預存 this 指標
![](https://i.imgur.com/uJUaaNf.png)
這樣就可以了
這邊用到了兩次指標，再來看我們的switch case 變得怎樣吧
那麼目前我們的 測資只有用到這些 case function 


也就是說對應到原本的code


```c=
 switch (inst->getOpcode()) {
  case Instruction::Alloca: {
    NodeIndex valNode = nodeFactory.getValueNodeFor(inst);
    assert(valNode != AndersNodeFactory::InvalidIndex &&
           "Failed to find alloca value node");
    NodeIndex objNode = nodeFactory.createObjectNode(inst);
    constraints.emplace_back(AndersConstraint::ADDR_OF, valNode, objNode);
    break;
  }
  case Instruction::Call:
  case Instruction::Invoke: {
    ImmutableCallSite cs(inst);
    assert(cs && "Something wrong with callsite?");

    addConstraintForCall(cs);

    break;
  }
  case Instruction::Ret: {
    if (inst->getNumOperands() > 0 &&
        inst->getOperand(0)->getType()->isPointerTy()) {
      NodeIndex retIndex =
          nodeFactory.getReturnNodeFor(inst->getParent()->getParent());
      assert(retIndex != AndersNodeFactory::InvalidIndex &&
             "Failed to find return node");
      NodeIndex valIndex = nodeFactory.getValueNodeFor(inst->getOperand(0));
      assert(valIndex != AndersNodeFactory::InvalidIndex &&
             "Failed to find return value node");
      constraints.emplace_back(AndersConstraint::COPY, retIndex, valIndex);
    }
    break;
  }
  case Instruction::Load: {
    if (inst->getType()->isPointerTy()) {
      NodeIndex opIndex = nodeFactory.getValueNodeFor(inst->getOperand(0));
      assert(opIndex != AndersNodeFactory::InvalidIndex &&
             "Failed to find load operand node");
      NodeIndex valIndex = nodeFactory.getValueNodeFor(inst);
      assert(valIndex != AndersNodeFactory::InvalidIndex &&
             "Failed to find load value node");
      constraints.emplace_back(AndersConstraint::LOAD, valIndex, opIndex);
    }
    break;
  }
  case Instruction::Store: {
    if (inst->getOperand(0)->getType()->isPointerTy()) {
      NodeIndex srcIndex = nodeFactory.getValueNodeFor(inst->getOperand(0));
      assert(srcIndex != AndersNodeFactory::InvalidIndex &&
             "Failed to find store src node");
      NodeIndex dstIndex = nodeFactory.getValueNodeFor(inst->getOperand(1));
      assert(dstIndex != AndersNodeFactory::InvalidIndex &&
             "Failed to find store dst node");
      constraints.emplace_back(AndersConstraint::STORE, dstIndex, srcIndex);
    }
    break;
  }
```

```c=
void Andersen::instAlloca(const Instruction *inst) {
 
  NodeIndex valNode = nodeFactory.getValueNodeFor(inst);
  assert(valNode != AndersNodeFactory::InvalidIndex &&
         "Failed to find alloca value node");
  NodeIndex objNode = nodeFactory.createObjectNode(inst);
  constraints.emplace_back(AndersConstraint::ADDR_OF, valNode, objNode);
}
void Andersen::instInvoke(const Instruction *inst) {

  ImmutableCallSite cs(inst);
  assert(cs && "Something wrong with callsite?");
  addConstraintForCall(cs);
}
void Andersen::instRet(const Instruction *inst) {

  if (inst->getNumOperands() > 0 &&
      inst->getOperand(0)->getType()->isPointerTy()) {
    NodeIndex retIndex =
        nodeFactory.getReturnNodeFor(inst->getParent()->getParent());
    assert(retIndex != AndersNodeFactory::InvalidIndex &&
           "Failed to find return node");
    NodeIndex valIndex = nodeFactory.getValueNodeFor(inst->getOperand(0));
    assert(valIndex != AndersNodeFactory::InvalidIndex &&
           "Failed to find return value node");
    constraints.emplace_back(AndersConstraint::COPY, retIndex, valIndex);
  }
}
void Andersen::instLoad(const Instruction *inst) {

  if (inst->getType()->isPointerTy()) {
    NodeIndex opIndex = nodeFactory.getValueNodeFor(inst->getOperand(0));
    assert(opIndex != AndersNodeFactory::InvalidIndex &&
           "Failed to find load operand node");
    NodeIndex valIndex = nodeFactory.getValueNodeFor(inst);
    assert(valIndex != AndersNodeFactory::InvalidIndex &&
           "Failed to find load value node");
    constraints.emplace_back(AndersConstraint::LOAD, valIndex, opIndex);
  }
}
void Andersen::instStore(const Instruction *inst) {
 
  if (inst->getOperand(0)->getType()->isPointerTy()) {
    NodeIndex srcIndex = nodeFactory.getValueNodeFor(inst->getOperand(0));
    assert(srcIndex != AndersNodeFactory::InvalidIndex &&
           "Failed to find store src node");
    NodeIndex dstIndex = nodeFactory.getValueNodeFor(inst->getOperand(1));
    assert(dstIndex != AndersNodeFactory::InvalidIndex &&
           "Failed to find store dst node");
    constraints.emplace_back(AndersConstraint::STORE, dstIndex, srcIndex);
  }
}
```

這邊可以看到我先把 case 裡面的東西給 獨立出來成一個 fucntion 當switch case 條件成真的時候 我把我當時的 this Andersen::instAlloca; fucntion 指標給指給 fptr 
再來我把 inst 當key fptr 當 value 
並加上鎖
>pthread_mutex_lock(&lock);
> pthread_mutex_unlock(&lock);
```c=
 switch (inst->getOpcode()) {

  case Instruction::Alloca: {
    //  Andersen *p =this;
    // cout << "Alloca" <<endl;
    // cout << "fuck123" <<endl;
    pthread_mutex_lock(&lock);

    fptr f = &Andersen::instAlloca;
    mymap2[inst] = f;
    done++;
    pthread_mutex_unlock(&lock);
    // Andersen xobject;
    // (this->*f)(inst);
    //
    //(this)->f(inst);
    // instAlloca(inst);
    break;
  }
  case Instruction::Call:
  case Instruction::Invoke: {
    pthread_mutex_lock(&lock);
    fptr f = &Andersen::instInvoke;

    //  (this->*f)(inst);
    mymap2[inst] = f;
    done++;
    pthread_mutex_unlock(&lock);
    //   cout << "fuck" <<endl;
    // fptr f = instInvoke;
    // f(inst);

    break;
  }
  case Instruction::Ret: {
    pthread_mutex_lock(&lock);
    fptr f = &Andersen::instRet;
    //  (this->*f)(inst);
    mymap2[inst] = f;
    done++;
    pthread_mutex_unlock(&lock);
    //  cout << "fuck2" <<endl;
    // fptr f = instRet;
    // f(inst);

    break;
  }
  case Instruction::Load: {
    pthread_mutex_lock(&lock);
    fptr f = &Andersen::instLoad;
    //  (this->*f)(inst);
    mymap2[inst] = f;
    done++;
    pthread_mutex_unlock(&lock);
    //  cout << "fuck3" <<endl;
    // fptr f = instLoad;
    // f(inst);
    // instLoad(inst);
    break;
  }
  case Instruction::Store: {
    pthread_mutex_lock(&lock);
    //   cout << "fuck4" <<endl;
    fptr f = &Andersen::instStore;
    mymap2[inst] = f;
    done++;
    pthread_mutex_unlock(&lock);
    //  (this->*f)(inst);

    // fptr f = instStore;
    //  f(inst);
    // instStore(inst);
    break;
  }
  }
```


到這邊產生任務已經完成了

如何完成一個任務呢
```c=
fprintf(stderr, "Added %d tasks\n", tasks);

  /* 不断检查任务数是否完成一半以上，没有则继续休眠 */
  while (done != tasks) {
    // fprintf(stderr, "Did %d tasks\n", done);
    // usleep(1);
  }
  fprintf(stderr, "Did %d tasks\n", done);
  /* 这时候销毁线程池,0 代表 immediate_shutdown */

  assert(threadpool_destroy(pool, 0) == 0);
  int k = 0;
  for (auto const &f : M) {
    if (f.isDeclaration() || f.isIntrinsic())
      continue;
    for (const_inst_iterator itr = inst_begin(f), ite = inst_end(f); itr != ite;
         ++itr) {
      k++;

      auto inst = &*itr.getInstructionIterator();
      // fprintf(stderr, "%p\n", &inst);
        去找我的 key 和 value
      fptr f = mymap2.find((Instruction *)inst)->second;
      ;
      (this->*f)(inst);
      // fprintf(stderr, "%d\n", k);
      // mymap2[inst] = f;
      // collectConstraintsForInstruction(inst);
    }
  }
```

因為順序性問題
我透過  
去找我的 key 和 value
```c=
fptr f = mymap2.find((Instruction *)inst)->second;
(this->*f)(inst);
```

最後實作完成的時候發現的bug 就是
thread 為1個的時候很正常
![](https://i.imgur.com/cENu81A.png)

左邊是我的版本，有加上那麼多 thread 很正常
也就是說
我額外寫了一個 產生程式碼的工具
```c=
#include <iostream>
#include <omp.h>
using namespace std;
/* run this program using the console pauser or add your own getch, system("pause") or input loop */
#include <stdio.h>
#include <stdlib.h>
#include <vector>
#include <fstream> 

int main()
{
	ofstream myfile ("exampletest.c");
	int i = 0; 
	 if (myfile.is_open())   {
	 myfile << "int main (){\n";
	for (int i =0 ; i <15; i++){
		
	//myfile << "inline  void test"<<i<<"()"<<"{ int *i"<<i<<"; i"<<i<<"=malloc(sizeof (int)*1); free(i"<<i<<"); }\n";
//	myfile<<"inline  void test"<<i<<"()" <<"{ int i, j, k;  int *a = &i;          int *b = &k;           a = &j;            int **p = &a;           int **q = &b;           p = q;           int *c = *q; if(a>0)  q=p; else a=&k; }\n";
//myfile << "test"<<i<<"();\n";
	//myfile <<"int i, j, k;\nint *a = &i;\nint *b = &k;\na = &j;\nint **p = &a;\nint **q = &b;\np = q;\n ";
	myfile <<"int i"<<i<<", j"<<i<<", k"<<i<<";\nint *a"<<i<<" = &i"<<i<<";\nint *b"<<i<<" = &k"<<i<<";\na"<<i<<" = &j"<<i<<";\nint **p"<<i<<" = &a"<<i<<";\nint **q"<<i<<" = &b"<<i<<";\np"<<i<<" = q"<<i<<";\n ";
	}
		 myfile << "}\n";
	myfile.close();
	}
	else cout << "Unable to open file";

}


```

可以輸出成一個exampletest.c 檔案
![](https://i.imgur.com/UD7yEYF.png)

```bash=
vim gen.cpp 
g++ gen.cpp  -o gen
./gen 
clang -S -emit-llvm exampletest.c -o testexe.ll

opt-10 -S -load ../lib/libAndersen.so -dump-result  -anders-aa  ./testexe.ll  -o andertest.ll
```

真實環境我是不知道有沒有這麼多指標互指，大專案應該是有
![](https://i.imgur.com/G5qjUJb.png)


那麼我產生了150000 次 得到了程式碼數量快兩百萬行的程式碼
這邊時間 以2000001行來測試，這邊時間比較偏向於一開始蒐集的位置
可以知道蒐集約束這邊應該不是瓶頸，或許是後面的fucntion
 void collectConstraints(const llvm::Module &);
  void optimizeConstraints(); <====
  void solveConstraints(); <===
  其實在分析專案前已經看過了，那邊也是在做類似的事情，也就是程式碼在其他 fucntion 的時候遍歷fucntion return 等等，不是在 main fucntion 
thread pool 單執行緒版本 30s
![](https://i.imgur.com/ChAMoSM.png)
原版                    23s
![](https://i.imgur.com/0snLhcH.png)

可以看到為什麼我在這邊 還是單執行緒在程式碼量小的時候還可以多開thread 去處理可能要自己調task pool 和 thread 數量，也就是前面我說的為什麼有bug，太多 thread 搶著要mymap2 那這個地方又有加鎖，所以程式會被整個 lock 住
![](https://i.imgur.com/Xl2MqH6.png)

結論就是
單一thread
thread pool lose
多多少少  pthread_mutex_lock(&lock);
會影響

Original win

多 thread 

thread pool lose
程式碼量大的話
Original win

thread pool版本都會小輸幾秒，應該就是最大的瓶頸就在存取我們的mymap2
這部分。
2thread
![](https://i.imgur.com/rZdQ9o5.png)
4thread
![](https://i.imgur.com/8KtIZi4.png)

8thread
![](https://i.imgur.com/NBuIg9X.png)

Original win
![](https://i.imgur.com/uiySM3M.png)


