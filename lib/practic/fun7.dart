import 'dart:io';

void main() {
  int n =8;

  for (int i=0; i<n; i++) {
    for (int j = 0; j <= n+(i-1); j++) {
      for (int k = 0; k <= 0; k++) {
        stdout.write(" ");
      }
      if (j < n - i)
        stdout.write("_");
      if (j >= n - i && j <= n - i)
        stdout.write("*");
      if (j > n - i && j < n + i)
        stdout.write("${i}");

      // }
      // }
    }
    for (int k = 0; k <= 0; k++) {
      stdout.write(" ");
    }
      for (int h = 0; h <= n - i; h++) {
        if (i == 0 && h <= 0)
          stdout.write("${i}");

        if (h <= 0 && h >= 0 && i > 0)
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






