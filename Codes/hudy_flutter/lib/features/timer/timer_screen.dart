import 'dart:async';

import 'package:flutter/material.dart';
import 'package:hudy_flutter/constants/gaps.dart';
import 'package:hudy_flutter/constants/sizes.dart';

class TimerScreen extends StatefulWidget {
  const TimerScreen({super.key});

  @override
  State<TimerScreen> createState() => _TimerScreenState();
}

class _TimerScreenState extends State<TimerScreen> {
  late DateTime targetDateTime;
  late Duration differenceDateTime;
  late Timer timer;

  @override
  void initState() {
    super.initState();
    // api call
    targetDateTime = DateTime.parse("20230301");
    differenceDateTime = targetDateTime.difference(DateTime.now());
    timer = Timer.periodic(const Duration(seconds: 1), onTick);
  }

  void onTick(Timer timer) {
    setState(() {
      differenceDateTime = targetDateTime.difference(DateTime.now());
    });
  }

  String format(Duration diff) =>
      "${diff.inDays}D ${diff.inHours % 24}H ${diff.inMinutes % 60}M ${diff.inSeconds % 60}S";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                format(differenceDateTime),
                style: const TextStyle(
                  fontSize: Sizes.size32,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Gaps.v28,
              const Text(
                "삼일절",
                style: TextStyle(
                  fontSize: Sizes.size24,
                  fontWeight: FontWeight.w600,
                ),
              ),
              Gaps.v8,
              const Text(
                "2023. 3. 1",
                style: TextStyle(
                  fontSize: Sizes.size16,
                  fontWeight: FontWeight.w500,
                ),
              ),
              const Text(
                "Wednesday",
                style: TextStyle(
                  fontSize: Sizes.size16,
                  fontWeight: FontWeight.w500,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
