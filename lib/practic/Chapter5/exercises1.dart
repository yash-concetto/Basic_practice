import 'dart:math';


// void main() {
// const value = 12;
// final output = compliment(value);
// print(output);
// }
//
// String compliment(int num){
//   return "$num is very nice number.";
// }


// void main() {
// print(fullName("yash", "baldha"));
// print(fullName("jayesh", "lila" ,"profesor"));
// }
//
// String fullName(String first, String last, [String? title]) {
//   if (title != null) {
//     return '$title $first $last';
//   } else {
//     return '$first $last';
//   }
// }


// void main(){
//   anInnocentLookingFunction("");
//   print(myPreciousData); // yash - 2 //jasmin- 1
//   print(withinTolerance(5));
//   print(withinTolerance(15));
// }
// bool withinTolerance(int value, [int min = 0, int max = 10]) {
//   return min <= value && value <= max;
// }

// var myPreciousData = 5782;
// String anInnocentLookingFunction(String name) {
// myPreciousData++;
// print(myPreciousData);
// ++myPreciousData;
// print(myPreciousData);//j -5784 y-no
// return 'Hello, $name. Heh, heh, heh.';
// }


// void main() {
//   const value = "jasmin";
//   const people = 10;
//   final out = youAreWonderful(numberPeople: people);
//   print(out);
// }
//
// String youAreWonderful({String name = "yash", int numberPeople = 30}) {
//   return "your wonderful,$name. $numberPeople people think so.";
// }


// }


// void main() {
//   const people = ['Chris', 'Tiffani', 'Pablo'];
//
// people.forEach((name) => print("$name is wonderful."));

// void main() {
//   int N = 3;
//   if (isPrime(N)) {
//     print('$N is a prime number.');
//   } else {
//     print('$N is not a prime number.');
//   }
// }
//
// bool isPrime(N) {
//   for (var i = 2; i <= N / i; ++i) {
//     if (N % i == 0) {
//       return false;
//     }
//   }
//   return true;
// }



void main(){
  // const times = 4;
  // const input = 2;
  print(repeatTask(4, 2,(int times , int input){
    return pow(2, 4);
  }));
  // print(value);
}
int repeatTask(int times, int input,Function task){
  return task(input, times);
}
