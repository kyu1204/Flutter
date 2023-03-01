import 'package:flutter/material.dart';

class StfScreen extends StatefulWidget {
  const StfScreen({super.key});

  @override
  State<StfScreen> createState() => _StfScreenState();
}

class _StfScreenState extends State<StfScreen> {
  int _counter = 0;

  void _incress() {
    setState(() {
      _counter = _counter + 1;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            "$_counter",
            style: const TextStyle(fontSize: 48),
          ),
          TextButton(
            onPressed: _incress,
            child: const Text("+"),
          )
        ],
      ),
    );
  }
}
