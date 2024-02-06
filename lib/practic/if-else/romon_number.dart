import 'dart:math';
import 'package:characters/characters.dart';

void main() {
  String value = "ABC";
  int num  = 0;
 for(int i =0;i<value.length;i++) {
   print(value[i]);
   print(value.codeUnits);
   if (value.codeUnitAt(i) >= "a".codeUnitAt(0) && value.codeUnitAt(i) <= "e".codeUnitAt(0) ) {
     num = num+5;
   }
   if (value.codeUnitAt(i) >= "f".codeUnitAt(0) && value.codeUnitAt(i) <= "j".codeUnitAt(0) ) {
     num=num+10;
   }
   if (value.codeUnitAt(i) >= "k".codeUnitAt(0) && value.codeUnitAt(i) <= "o".codeUnitAt(0) ) {
     num=num+15;
   }
   if (value.codeUnitAt(i) >= "p".codeUnitAt(0) && value.codeUnitAt(i) <= "t".codeUnitAt(0) ) {
     num=num+20;
   }
   if (value.codeUnitAt(i) >= "u".codeUnitAt(0) && value.codeUnitAt(i) <= "z".codeUnitAt(0) ) {
     num=num+25;
   }
 }
  print(num);
}

///a-e = 5
// f-j = 10
// k-o = 15
// p-t = 20
// u-z = 25