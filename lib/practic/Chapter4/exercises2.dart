import 'dart:io';

void main() {
  const myAge = 21;
 const check = (13>=myAge && myAge<=19) ? "Teenager" : "Not a Teenager";
  // if(13>=myAge && myAge<=19){
  //   print("Teenager");
  // }else{
  //   print("Not a Teenager");
  // }
  print(check);
}