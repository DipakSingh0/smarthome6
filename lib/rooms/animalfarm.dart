import 'package:flutter/material.dart';

void main() {
  runApp(const MaterialApp(
    home: AnimalFarm(),
  ));
}

class AnimalFarm extends StatelessWidget {
  const AnimalFarm({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Animal Farm'),
        backgroundColor: Colors.lightBlue,
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          // const Center(child: Text('This is Animal Farm')),
          const SizedBox(height: 10.0),
          const MotorButton(),
          const SizedBox(height: 20.0),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              PrettyGauge(
                gaugeSize: 150,
                segments: [
                  GaugeSegment('Low', 20, Colors.red),
                  GaugeSegment('Medium', 40, Colors.orange),
                  GaugeSegment('High', 40, Colors.green),
                ],
                currentValue: 46,
                displayWidget: const Text('Humidity of Soil',
                    style: TextStyle(fontSize: 11.0)),
              ),
              const SizedBox(width: 5.0),
              PrettyGauge(
                gaugeSize: 150,
                segments: [
                  GaugeSegment('Cold', 30, Colors.lightGreen),
                  GaugeSegment('Normal', 30, Colors.blue),
                  GaugeSegment('Hot', 40, Colors.red),
                ],
                currentValue: 25,
                displayWidget:
                    const Text('Temperature', style: TextStyle(fontSize: 12)),
              ),
            ],
          ),
        ],
      ),
    );
  }
}

class MotorButton extends StatefulWidget {
  const MotorButton({super.key});

  @override
  // ignore: library_private_types_in_public_api
  _MotorButtonState createState() => _MotorButtonState();
}

class _MotorButtonState extends State<MotorButton> {
  bool isMOTOROn = false;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(16.0),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(15.0),
        color: isMOTOROn ? Colors.blue : Colors.grey[300],
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Icon(
            Icons.wind_power,
            size: 50.0,
            color: Colors.black,
          ),
          const SizedBox(height: 10.0),
          Text(
            isMOTOROn ? 'MOTOR ON' : 'MOTOR OFF',
            style: const TextStyle(
              color: Colors.black,
              fontSize: 18.0,
            ),
          ),
          const SizedBox(height: 10.0),
          GestureDetector(
            onTap: () {
              setState(() {
                isMOTOROn = !isMOTOROn;
              });
              // Add your logic for ON/OFF functionality here
            },
            child: Container(
              padding:
                  const EdgeInsets.symmetric(horizontal: 10.0, vertical: 10.0),
              decoration: BoxDecoration(
                color: Colors.blue.shade200,
                borderRadius: BorderRadius.circular(10.0),
              ),
              child: const Text(
                'ON/OFF',
                style: TextStyle(
                  fontSize: 16.0,
                  color: Colors.white,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class PrettyGauge extends StatelessWidget {
  const PrettyGauge({
    super.key,
    required this.gaugeSize,
    required this.segments,
    required this.currentValue,
    required this.displayWidget,
  });

  final double gaugeSize;
  final List<GaugeSegment> segments;
  final double currentValue;
  final Widget displayWidget;

  @override
  Widget build(BuildContext context) {
    // Implement your PrettyGauge widget here
    return SizedBox(
      width: 200,
      height: 200,
      child: Stack(
        alignment: Alignment.center,
        children: [
          // Implement your gauge segments here based on the provided segments list
          for (var segment in segments) ...[
            // Implement each segment as required
            Container(
              width: 150,
              height: 150,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: segment.color,
              ),
            ),
          ],
          Center(
            child: displayWidget,
          ),
        ],
      ),
    );
  }
}

class GaugeSegment {
  final String label;
  final double value;
  final Color color;

  GaugeSegment(this.label, this.value, this.color);
}
