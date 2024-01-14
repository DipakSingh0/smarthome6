import 'package:flutter/material.dart';

class Refrigerator extends StatelessWidget {
  const Refrigerator({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Refrigerator'),
        backgroundColor: Colors.lightBlue,
      ),
      body: const Center(child: Text('this is Refrigerator status')),
    );
  }
}