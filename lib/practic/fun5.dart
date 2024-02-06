import 'dart:io';

void main() {
  int i, j, numbers=1, n = 5;

  for(i=1;i<=n;i++){

    for(j = 1; j<i+1;j++)
    {
      for (int k= 0; k<=1 ; k++) {
        stdout.write(" ");
      }
      stdout.write('${numbers++}');
    }
    for (int k= 0; k<=1 ; k++) {
      stdout.write(" ");
    }
    for(int h=1 ; h<=n-i; h++){
      stdout.write("*");
      for (int k= 0; k<=1 ; k++) {
        stdout.write(" ");
      }
    }
    stdout.writeln();
  }
}