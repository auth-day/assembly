#include <stdio.h>
#include <stdint.h>
#include <math.h>

double polyFPU(double A, double B, double C, double D, double E, int iX);

int main(int argc, char* argv[]) {
  double A,B,C,D,E,X;
  int iX,res;

  A=6;
  B=5;
  C=4;
  D=3;
  E=2;
  X=2;
  if(argc != 7)
    {
    printf("./main A B C D E X\n");
    printf("./main 6 5 0 3 2 -2\n");
    } 
  else
    {
    sscanf(argv[1],"%le",&A);
    sscanf(argv[2],"%le",&B);
    sscanf(argv[3],"%le",&C);
    sscanf(argv[4],"%le",&D);
    sscanf(argv[5],"%le",&E);
    sscanf(argv[6],"%le",&X);
    }
  printf("A=%lg\tB=%lg\tC=%lg\tD=%lg\tE=%lg\tX=%lg\n",A,B,C,D,E,X);
  iX=(int)X;

  for(iX=-10; iX<=10;iX++)
    {
    res =(int) polyFPU(A,B,C,D,E,iX);
    printf("%d %d\n", iX,res);
    }
  return(0);

}
