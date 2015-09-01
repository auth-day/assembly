#include <stdio.h>
#include <stdint.h>
#include <math.h>

unsigned long long int asem(unsigned long long int A,unsigned long long int B);

int main (int argc, char* argv[]) {
unsigned long long int  A,B, res;

A = 2000000;
B = 5000000;

if(argc !=3)
{
	res = asem(A,B);
	printf("%lld\n",res);
}

else
{
    sscanf(argv[1],"%lld",&A);
    sscanf(argv[2],"%lld",&B);


    res = asem(A,B);
    printf("%lld\n",res);
	}
return(0);
}
