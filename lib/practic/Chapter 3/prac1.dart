import 'dart:io';

void main() {
  num number = 3.14;
  // print(number is int);
  // print(number is double);
  print(number.runtimeType);
///oprater mix type

  const hourlyrate = 19.5;
  const hourswork = 10.5;

  final totalCost = (hourlyrate * hourswork).toInt() ;
  print(totalCost);

}