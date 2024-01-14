
import 'package:flutter/material.dart';

class StreetLights extends StatelessWidget {
  const StreetLights({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('StreetLights'),
        backgroundColor: Colors.lightBlue,
      ),
      body: const Center(child: Text('StreetLight status')),
    );
  }
}