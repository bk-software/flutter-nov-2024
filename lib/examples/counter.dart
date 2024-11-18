import 'package:flutter/material.dart';

class CounterApp extends StatelessWidget {
  const CounterApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Center(
          child: Column(children: [
            const Text('hello'),
            ElevatedButton(
                onPressed: () => print('pressed'), child: const Text('+'))
          ]),
        ),
      ),
    );
  }
}
