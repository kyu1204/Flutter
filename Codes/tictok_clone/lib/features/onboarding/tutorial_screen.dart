import 'package:flutter/material.dart';
import 'package:tictok_clone/constants/sizes.dart';

class TutorialScreen extends StatelessWidget {
  const TutorialScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(children: const [
          Text(
            "Watch cool videos!",
            style: TextStyle(
              fontSize: Sizes.size40,
              fontWeight: FontWeight.bold,
            ),
          ),
        ]),
      ),
    );
  }
}
