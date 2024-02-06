import 'dart:io';
void main(){
int n = 8;
  for(int i = 0 ; i< n; i++){
    for(int j = 0;  j<= n+i ; j++) {
      for (int k= 0; k<=0 ; k++) {
        stdout.write(" ");
      }
    if (j >= n-i && j <= n+i)
    stdout.write("*");
    else
    stdout.write("_");
  }
  print("");
 }
print('end');
}
