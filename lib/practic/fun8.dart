import 'dart:io';

void main() {
  int n =8;

  for (int i=1; i<=n; i++) {
    for (int j = 0; j <= n; j++) {
      for (int k = 0; k <= 0; k++) {
        stdout.write(" ");
      }
     if(i==1 && j == n-1)
       stdout.write("${i}");

      if (i>1 && j >= (n-1)-(i-1) && j < (n-1))
        for (int k = 0; k <= 0; k++) {
          stdout.write("*");
          for (int k = 0; k <= 0; k++) {
            stdout.write(" ");
          }
          stdout.write("${i}");
        }
      else
        stdout.write(" ");

        if (i > 1 && j > (n-3) && j < (n-1))
          for (int k = 0; k <= 0; k++) {
            stdout.write(" ");
          stdout.write("*");
      }
    }

    print("");
  }
  print('end');
}
