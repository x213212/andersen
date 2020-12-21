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
	for (int i =0 ; i <150; i++){
		
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

