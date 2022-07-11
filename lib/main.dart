import 'package:flutter/material.dart';
import 'package:testing/screen/accelometer.dart';
import 'package:testing/screen/sensor.dart';

import 'screen/gyroscope.dart';
import 'screen/proximity.dart';

void main() {
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: '/',
      routes: {
        '/': (context) => const SensorTest(),

        '/accelerometer': (context) => const AccelometerScreen(),
        '/gyroscope': (context) => const GyroscopeTest(),
        '/proximity': (context) => const ProximityTest(),

        // '/display': (context) => const DisplayScreen(),
        // '/sensor': (context) => const SensorTest(),
      },
    ),
  );
}

class Calculator extends StatefulWidget {
  const Calculator({Key? key}) : super(key: key);

  @override
  State<Calculator> createState() => _CalculatorState();
}

class _CalculatorState extends State<Calculator> {
  final _formKey = GlobalKey<FormState>();

  final TextEditingController _firstNumber = TextEditingController();
  final TextEditingController _secondNumber = TextEditingController();

  num result = 0;

  add() {
    setState(() {
      result =
          double.parse(_firstNumber.text) + double.parse(_secondNumber.text);
    });
  }

  subtract() {
    setState(() {
      result =
          double.parse(_firstNumber.text) - double.parse(_secondNumber.text);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Calculator'),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(12.0),
        child: Form(
          key: _formKey,
          child: Column(
            children: <Widget>[
              TextFormField(
                  key: const ValueKey('firstNumber'),
                  controller: _firstNumber,
                  keyboardType: TextInputType.number,
                  decoration: const InputDecoration(
                      labelText: 'First Number',
                      hintText: 'Enter First number',
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(10)),
                      ))),
              const SizedBox(
                height: 10,
              ),
              TextFormField(
                key: const ValueKey('secondNumber'),
                controller: _secondNumber,
                keyboardType: TextInputType.number,
                decoration: const InputDecoration(
                    labelText: 'Second Number',
                    hintText: 'Enter Second number',
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(10)),
                    )),
              ),
              const SizedBox(
                height: 10,
              ),
              SizedBox(
                width: double.infinity,
                child: ElevatedButton(
                  key: const ValueKey('addBtn'),
                  onPressed: () {
                    add();
                    Navigator.pushNamed(context, '/display', arguments: result);
                  },
                  child: const Text('Add'),
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              SizedBox(
                width: double.infinity,
                child: ElevatedButton(
                  key: const ValueKey('subtractBtn'),
                  onPressed: () {
                    subtract();
                  },
                  child: const Text('Subtract'),
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              // Card(
              //   color: const Color.fromARGB(255, 61, 197, 34),
              //   child: ListTile(
              //     shape: const RoundedRectangleBorder(
              //       borderRadius: BorderRadius.all(Radius.circular(10)),
              //     ),
              //     title: Text('Result:$result',
              //         style: const TextStyle(fontWeight: FontWeight.bold),
              //         textAlign: TextAlign.center),
              //   ),
              // ),
            ],
          ),
        ),
      ),
    );
  }
}
