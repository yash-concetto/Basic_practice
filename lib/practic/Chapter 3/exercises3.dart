import 'dart:io';

void main() {
  // const vote = 'Thumbs up! 👍🏿';
  // print(vote.codeUnits);

  // var name = 'Yash';
  // name += 'Baldha';
  // print(name);

  // const value = 10 / 2;
  // print(value);

  const number = 10;
  const multiplier = 5;
  final summary = '$number \u00D7 $multiplier = ${number * multiplier}';
  print(summary);
}