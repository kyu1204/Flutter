import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:tictok_clone/constants/gaps.dart';

class NavTab extends StatelessWidget {
  const NavTab({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: const [
        FaIcon(
          FontAwesomeIcons.house,
          color: Colors.white,
        ),
        Gaps.v5,
        Text(
          'Home',
          style: TextStyle(color: Colors.white),
        )
      ],
    );
  }
}
