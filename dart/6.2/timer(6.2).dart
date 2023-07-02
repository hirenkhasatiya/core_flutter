//timer
import 'dart:io';

void loop(
    {int starthour = 0, int startmin = 0, int startsec = 0, int endsec = 0}) {
  Future.delayed(Duration(microseconds: 200), () {
    print("$starthour : $startmin : $startsec");
    startsec++;
    if (startsec > 59) {
      startmin++;
      startsec = 0;
      endsec = endsec - 60;
    }
    if (startmin > 59) {
      starthour++;
      startmin = 0;
    }
    if (startsec <= endsec) {
      loop(
          starthour: starthour,
          startmin: startmin,
          startsec: startsec,
          endsec: endsec);
    }
  });
}

void main() async {
  int hour;
  int min;
  int sec;

  stdout.write("Enter hours\t : ");
  hour = int.parse(stdin.readLineSync()!);

  stdout.write("Enter minutes\t : ");
  min = int.parse(stdin.readLineSync()!);

  stdout.write("Enter second\t : ");
  sec = int.parse(stdin.readLineSync()!);

  if (hour != 0 || min != 0) {
    sec = sec + ((hour * 3600) + (min * 60));
  }

  loop(starthour: 0, startmin: 0, startsec: 0, endsec: sec);
}
