import 'package:clock_app/Utils/routsutils.dart';
import 'package:flutter/material.dart';
import 'package:one_clock/one_clock.dart';

class ClockPage extends StatefulWidget {
  const ClockPage({Key? key}) : super(key: key);

  @override
  State<ClockPage> createState() => _ClockPageState();
}

class _ClockPageState extends State<ClockPage> {
  @override
  Widget build(BuildContext context) {
    return AnalogClock(
      decoration: BoxDecoration(
          border: Border.all(width: 2.0, color: Colors.white),
          color: Colors.transparent,
          shape: BoxShape.circle),
      width: 150.0,
      isLive: true,
      hourHandColor: Colors.white,
      minuteHandColor: Colors.white,
      showSecondHand: true,
      numberColor: Colors.white,
      showNumbers: true,
      showAllNumbers: false,
      textScaleFactor: 1.4,
      showTicks: true,
      showDigitalClock: true,
      digitalClockColor: Colors.white,
      datetime: DateTime.now(),
      tickColor: Colors.red,
      secondHandColor: Colors.red,
    );
  }
}