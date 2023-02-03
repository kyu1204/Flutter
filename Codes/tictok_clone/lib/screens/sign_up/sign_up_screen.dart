import 'package:flutter/material.dart';
import 'package:tictok_clone/constants/gaps.dart';

class SignUpScreen extends StatelessWidget {
  const SignUpScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: const [
            Gaps.v80,
            Text("Sign up for TikTok"),
            Gaps.v20,
            Text(
                "Create a profile, follow other accounts, make your own videos, and more."),
          ],
        ),
      ),
    );
  }
}
