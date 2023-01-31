import 'package:flutter/material.dart';
import 'package:analog_clock/analog_clock.dart';
import 'package:onlineshop/constants/colors.dart';

class MyClock extends StatefulWidget {
  const MyClock({super.key});

  @override
  State<MyClock> createState() => _MyClockState();
}

class _MyClockState extends State<MyClock> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: onShDADA,
      body: SafeArea(
          child: Center(
        child: AnalogClock(
          decoration: BoxDecoration(
              borderRadius: const BorderRadius.all(Radius.circular(50)),
              border: Border.all(
                  width: 4.0, color: Colors.white, style: BorderStyle.solid),
              color: onShDarkBlue,
              // color: onShSterling,
              shape: BoxShape.rectangle),
          width: 440.0,
          height: 440.0,
          isLive: true,
          showNumbers: true,
          hourHandColor: Colors.white,
          minuteHandColor: Colors.white,
          showSecondHand: true,
          numberColor: Colors.white,

          // showAllNumbers: true,
          // showNumbers: true,
          textScaleFactor: 1.6,
          showTicks: true,
          showDigitalClock: true,
          digitalClockColor: Colors.white,
          datetime: DateTime.now(),

          // datetime: DateTime(2023, 1, 26, 2, 26),
        ),
      )),
    );
  }
}
