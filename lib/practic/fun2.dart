import 'dart:io';
void main() {
  int n = 3;
  for (int i = 0; i < n; i++) {
    for (int j = 4; j >= i * 2; j = j - 1) {
      for (int k= 0; k<=0 ; k++) {
        stdout.write(" ");
      }
      // for (int k = 0; k <=0; k=k+1) {
        // if (
        // j >= n-i && j <= n+i)
        stdout.write("*");
        // else
        //   stdout.write(" ");

      }
    print(" ");
  }
  print('end');
}