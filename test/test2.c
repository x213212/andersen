#include <stdio.h>
#include <stdlib.h>
#include <assert.h>
int *(*funbyarray(void))[10];

int *(*(*pfunc)(void))[10];
void Initialization(int*(*)[10]);void print(int*(*)[10]);
void (*pfunc_void)(int*(*)[10]);

int main(int argc,char **argv){
    pfunc=funbyarray;
    pfunc_void=Initialization;
    int *(*pi)[10]=(******pfunc)();
    for (int i=0;i<10;i++){
        *((*pi)+i)=calloc(10,sizeof(int));
    }
    (******pfunc_void)(pi);
    pfunc_void=print;
    (******pfunc_void)(pi);
    for (int i=0;i<10;i++){
        free(*(*(pi)+i));
    }
    free(pi);
    return 0;
}

int *(*funbyarray(void))[10]{
    int *(*pi)[10]=malloc(sizeof(int*)*10);
    assert(pi!=NULL);
    return pi;
}

void Initialization(int*(*pi)[10]){
    for (int i=0;i<10;i++){
        *(*(pi)+i)=calloc(10,sizeof(int));
    }
    for (int i=0;i<10;i++){
        for (int j=0;j<10;j++){
            *(*(*(pi)+i)+j)=i*j;
        }
    }
    return ;
}

void print(int*(*pi)[10]){
    for (int i=0;i<10;i++){
        for (int j=0;j<10;j++){
            printf("%2d ",*(*(*(pi)+i)+j));
        }
        printf("\n");
    }
    return ;
}

