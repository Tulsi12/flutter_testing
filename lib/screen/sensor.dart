//screen with three button UI

import 'package:flutter/material.dart';

class SensorTest extends StatefulWidget {
  const SensorTest({Key? key}) : super(key: key);

  @override
  State<SensorTest> createState() => _SensorTestState();
}

class _SensorTestState extends State<SensorTest> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Sensor'),
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            ElevatedButton(
              child: const Text('Accelerometer'),
              onPressed: () {
                Navigator.pushNamed(context, '/accelerometer');
              },
            ),
            ElevatedButton(
              child: const Text('Proximity'),
              onPressed: () {
                Navigator.pushNamed(context, '/proximity');
              },
            ),
            ElevatedButton(
              child: const Text('Gyroscope'),
              onPressed: () {
                Navigator.pushNamed(context, '/gyroscope');
              },
            ),
          ],
        ),
      ),
    );
  }
}
