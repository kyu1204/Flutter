import 'package:flutter/material.dart';
import 'package:tictok_clone/constants/gaps.dart';
import 'package:tictok_clone/constants/sizes.dart';

class InterestsScreen extends StatelessWidget {
  const InterestsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Choose your interests"),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: Sizes.size24),
        child: Column(children: const [
          Gaps.v32,
          Text(
            "Choose your interests",
            style: TextStyle(
              fontSize: Sizes.size40,
              fontWeight: FontWeight.w600,
            ),
          ),
          Gaps.v20,
          Text("Ge better video recommendations"),
        ]),
      ),
    );
  }
}
