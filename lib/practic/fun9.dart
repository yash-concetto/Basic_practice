import 'dart:io';

void main() {
  int n =4;

  for (int i=0; i<=n; i++) {
    for (int j = 0; j <= n; j++) {
      for (int k = 0; k <= 0; k++) {
        stdout.write(" ");
      }
      if(i==0 && j == n)
        stdout.write("*");

      if (i>0 && j >= n-i && j < (n))
        for (int k = 0; k <= 0; k++) {
          stdout.write("*");
          // for (int k = 0; k <= 0; k++) {
            stdout.write(" ");
          // }
          stdout.write("${i}");
        }
      else
        stdout.write(" ");

      if (i > 0 && j > n-2 && j < n)
        for (int k = 0; k <= 0; k++) {
          stdout.write(" ");
          stdout.write("*");
        }
    }

    print("");
  }
  print('end');
}
