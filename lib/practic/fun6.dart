import 'dart:io';

void main() {
  int n =8;

  for (int i=1; i<=n; i++) {
    for (int j = 1; j <= n-1; j++) {
      for (int k = 0; k <= 0; k++) {
        stdout.write(" ");
      }
      if (j <= n-i)
        stdout.write("_");

      if (j >= n-(i-1) && j < n+(i-1))
        for (int k = 0; k <= 0; k++) {
          stdout.write("*");
          for (int k = 0; k <= 0; k++) {
            stdout.write(" ");
          }
          stdout.write("${i}");

          for (int k = 0; k <= 0; k++) {
            stdout.write("");
          }
        }
    }
    for (int k = 0; k <= 0; k++) {
      stdout.write(" ");
    }

    for(int h=0 ; h<=n-i; h++) {
      if (i == 1 && h <= 0)
        stdout.write("${i}");

      if (h <= 0 && h >= 0 && i > 1)
        stdout.write("*");
      for (int k = 0; k <= 0; k++) {
        stdout.write(" ");
      }
      if (h < n - i)
        stdout.write("_");
    }
    print("");
  }
  print('end');
}


