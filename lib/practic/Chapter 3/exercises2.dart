import 'dart:io';

void main() {
  const totalattendance = 90;
  const totalhomework = 80;
  const totalexam = 94;

  const attendance = 85;
  const homework = 60;
  const exam = 85;

  final gotingattendance = ((attendance*100)/totalattendance);
  final gothomework = ((homework*100)/totalhomework);
  final gotexam = ((exam*100)/totalexam);

  final attendancegrade = ((gotingattendance*20)/100);
  final homegrade = ((gothomework*30)/100);
  final examgrade = ((gotexam*50)/100);

  final totalresult = (attendancegrade + homegrade + examgrade);
  print(totalresult.round());
}