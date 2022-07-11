import 'dart:async';

import 'package:all_sensors2/all_sensors2.dart';
import 'package:flutter/material.dart';

class AccelometerScreen extends StatefulWidget {
  const AccelometerScreen({Key? key}) : super(key: key);

  @override
  State<AccelometerScreen> createState() => _AccelometerTestState();
}

class _AccelometerTestState extends State<AccelometerScreen> {
  List<double> _accelorometerValues = <double>[];
  final List<StreamSubscription<dynamic>> _streamSubscriptions =
      <StreamSubscription<dynamic>>[];
  @override
  void initState() {
    _streamSubscriptions
        .add(accelerometerEvents!.listen((AccelerometerEvent event) {
      setState(() {
        _accelorometerValues = <double>[event.x, event.y, event.z];
      });
    }));
    super.initState();
  }

  @override
  void dispose() {
    for (StreamSubscription<dynamic> subscription in _streamSubscriptions) {
      subscription.cancel();
    }
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final List<String> accelerometer;
    accelerometer = _accelorometerValues.map((double value) {
      return value.toStringAsFixed(1);
    }).toList();

    return Scaffold(
      appBar: AppBar(
        title: const Text('Accelerometer'),
      ),
      body: Center(
        child: Text(
          'Accelerometer:\n X: ${accelerometer[0]}\n Y: ${accelerometer[1]}\n Z: ${accelerometer[2]}',
          style: const TextStyle(
            fontSize: 25,
          ),
        ),
      ),
    );
  }
}

  
  