import 'dart:io';

 void main() {
   final s = Solution();
   print(s.isNumber(".e3"));
}

class Solution {

  bool isNumber(String s) {
    for(int i=0;i<s.length;i++) {
      if (s.codeUnitAt(i) >= "a".codeUnitAt(0) && s.codeUnitAt(i) <= "d".codeUnitAt(0)) {
        return false;
        // num = num+5;
      } else if (s.codeUnitAt(i) >= "f".codeUnitAt(0) && s.codeUnitAt(i) <= "z".codeUnitAt(0)) {
        return false;
      } else if (s == "++" || s == "--" || s == "-+" || s == "+-" || s == ".") {
        return false;
      } else if (s == "e"  /*isNumeric(num)*/) {
        return false;
      }
    }
return true;
  }
}