import 'dart:io';
void main(){
  int n = 5;
  for(int i = 0 ; i< n;  i++){
    for(int j = 0;  j < n; j++) {
      for (int k= 0; k<=1 ; k++) {
        stdout.write(" ");
      }
      if (j >= i && j <= n-1)
        stdout.write("*");
      else
        stdout.write("_");
    }
    print(" ");
  }
print('end');
}