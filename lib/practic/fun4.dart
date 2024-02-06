import 'dart:io';

void main() {
  int i, j, numbers, n = 10;

  for(int i = 0 ; i< n; i++){
    numbers = 1;
    for(int j = 0;  j<= n ; j++)
    {
      for (int k= 0; k<=0 ; k++) {
        stdout.write(" ");
      }
      if (j >= n-i && j <= n+i)
        stdout.write("${numbers++}");
      else
        stdout.write("_");
      // stdout.write(' $numbers ');
      // numbers++;
   }
    print(" ");
  }
  print('end');
}



