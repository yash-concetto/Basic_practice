import 'dart:io';
import 'dart:math';

void main() {
  // final someNumber = DateTime.now().hour;
  // final someNumber;
  // const someNumber = 10;
  // var someNumber = 10;
  // dynamic someNumber = 10.5;
  // someNumber = 15;
  // someNumber = 16;
  // someNumber = 3.14159;
  // someNumber = "concetto";
  // print(someNumber);

//   var counter = 0 ;
//   counter += 1;
//   counter -= 1;
// print(counter);

  // var age = 16;
  // print(age);
  // age = 30;
  // print(age);

  // const x = 46;
  // const y = 10;
  // const answer1 = (x * 100) + y;
  // const answer2 = (x * 100) + (y * 100);
  // const answer3 = (x * 100) + (y / 10);
  // print(answer1);
  // print(answer2);
  // print(answer3);

  // final rating1 = 10.5;
  // const rating2 = 15.6;
  // const rating3 = 19.36;
  //
  // final averageRating = (rating1 + rating2 + rating3)/3 ;
  // print(averageRating);



  const a = 7;
  const b = 55;
  const c = 4;
  var result = pow(b, 2);
  /// if use +
  final x1 = (-b + sqrt(result - 4 * a * c)) / (2 * a);
  var x1power = pow(x1, 2);

  final ansx1 = a * x1power + b * x1 + c;
  print("use '+' $ansx1");
  if (ansx1 == 0) {
    print(true);
  } else {
    print(false);
  }
    /// if use -
    final x2 = (-b - sqrt(result - 4 * a * c)) / (2 * a);
    var x2power = pow(x2, 2);

    final ansx2 = a * x2power + b * x2 + c;
    print("use '-' $ansx2");
    if (ansx2== 0) {
      print(true);
    } else {
      print(false);
  }


}

