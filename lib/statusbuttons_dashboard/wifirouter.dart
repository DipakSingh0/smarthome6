
import 'package:flutter/material.dart';

class WifiRouter extends StatelessWidget {
  const WifiRouter({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('WifiRouter'),
        backgroundColor: Colors.lightBlue,
      ),
      body: const Center(child: Text('WifiRouter status')),
    );
  }
}