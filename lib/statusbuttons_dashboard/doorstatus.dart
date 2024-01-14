import 'package:flutter/material.dart';

class DoorStatus extends StatelessWidget {
  const DoorStatus({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('DoorStatus'),
        backgroundColor: Colors.lightBlue,
      ),
      body: const Center(child: Text('DoorStatus page')),
    );
  }
}