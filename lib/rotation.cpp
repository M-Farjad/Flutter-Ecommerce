#include <iostream>
using namespace std;
int main() {
	int testCases,N,K;
	
	cin >> testCases;    //Reading input from STDIN
	for(int i=0;i<testCases;i++){
		cin>>N>>K;
		int *A=new int[N];
		for(int j=0;j<N;j++){
			cin>>A[j];
		}
		for(int k=0;k<K;k++){
			int temp=A[k++];
			A[k]=A[K--];
			A[K]=temp;
		}
		for(int l=0;l<N;l++){
			cout<<A[l]<<" ";
		}
	}
}