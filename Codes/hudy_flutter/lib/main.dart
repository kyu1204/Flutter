import 'package:flutter/material.dart';
import 'package:hudy_flutter/constants/sizes.dart';
import 'package:hudy_flutter/features/timer/timer_screen.dart';

void main() {
  runApp(const HuDyApp());
}

class HuDyApp extends StatelessWidget {
  const HuDyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'HuDy',
      theme: ThemeData(
        scaffoldBackgroundColor: Colors.white,
        primaryColor: const Color(0xFFC00000),
        appBarTheme: const AppBarTheme(
          backgroundColor: Colors.white,
          foregroundColor: Colors.black,
          elevation: 0,
          titleTextStyle: TextStyle(
            color: Colors.black,
            fontSize: Sizes.size16 + Sizes.size2,
            fontWeight: FontWeight.w600,
          ),
        ),
      ),
      home: const TimerScreen(),
    );
  }
}
