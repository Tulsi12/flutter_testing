import 'package:flutter/material.dart';

class DisplayScreen extends StatefulWidget {
  const DisplayScreen({Key? key}) : super(key: key);

  @override
  State<DisplayScreen> createState() => _DisplayScreenState();
}

class _DisplayScreenState extends State<DisplayScreen> {
  @override
  Widget build(BuildContext context) {
    final value = ModalRoute.of(context)!.settings.arguments as num?;

    return Scaffold(
      appBar: AppBar(
        title: const Text('Calculator'),
        centerTitle: true,
      ),
      body: Center(
        child: Text(
          'Result:$value',
          style: const TextStyle(
            fontSize: 25,
          ),
        ),
      ),
    );
  }
}
