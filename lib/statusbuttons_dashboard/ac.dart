
import 'package:flutter/material.dart';

class AirConditioner extends StatelessWidget {
  const AirConditioner({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('AirConditioner'),
        backgroundColor: Colors.lightBlue,
      ),
      body: const Center(child: Text('AirConditioner status')),
    );
  }
}