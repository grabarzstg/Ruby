#include <stdio.h>
#include <time.h>
#define N 10
//Sortowanie przez kopcowanie
int parent(int i){return i/2;};
int left(int i){if(i==0)return 1; else return 2*i;};
int right(int i){if(i==0)return 2; else return 2*i+1;};
void heapify(int t[], int i, int n);
void build_heap(int t[]);
void heapsort(int t[]);
 
int main(){
 
 srand(time(0));
 int t[10];
 int i=0;
 for (i=0;i<N;++i)
     t[i]=rand()%123;
 for (i=0;i<N;++i)
    printf("%d\t", t[i]);
 heapsort(t);
 printf("\n\n\n");
 for (i=0; i<N;++i)
    printf("%d\t", t[i]);
 
 
return 0;
}
void heapify(int t[], int i, int n){   
 int largest;
 int l = left(i);
 int r = right(i);
 if (l<n && t[l] > t[i])
    largest = l;
 else
    largest = i;
 
 if (r< n && t[r] > t[largest])
    largest = r;
 if (largest != i){
     int x;
    x=t[i];
    t[i]=t[largest];
    t[largest]=x;
    heapify(t, largest, n);
 }    
}
////////////////////////////////////////////////////////////////////////
void build_heap(int t[]){ 
 int i;
 for (i=N/2; i>=0; --i) ///???
    heapify(t,i,N);
}
/////////////////////////////////////////////////////////////////////////
void heapsort(int t[]){
 build_heap(t);
 int i;
 int n=N;
 for (i=N-1; i>=1; --i){  
     int x=t[0];
    t[0]=t[i];
    t[i]=x;
 
    --n;
    heapify(t,0,n);
 }
}