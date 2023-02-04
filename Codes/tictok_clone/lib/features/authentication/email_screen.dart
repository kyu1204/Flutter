import 'package:flutter/material.dart';
import 'package:tictok_clone/constants/sizes.dart';

class EmailScreen extends StatelessWidget {
  const EmailScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Sign Up",
        ),
      ),
      body: Column(
        children: const [
          Text(
            "Create username",
            style: TextStyle(
              fontSize: Sizes.size20,
              fontWeight: FontWeight.w600,
            ),
          ),
          Text(
            "You can always change this later.",
            style: TextStyle(
              fontSize: Sizes.size20,
              fontWeight: FontWeight.w600,
            ),
          )
        ],
      ),
    );
  }
}
