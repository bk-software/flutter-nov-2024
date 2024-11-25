import 'package:flutter/material.dart';

class Counter extends StatelessWidget {
  const Counter({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Counter'),
          backgroundColor: Colors.blue,
          foregroundColor: Colors.white,
        ),
        body: Column(
          children: [
            const Text('hello'),
            Row(
              children: [
                ElevatedButton(
                  onPressed: () {
                    print('+');
                  },
                  child: const Text('+'),
                ),
                ElevatedButton(
                  onPressed: () {
                    print('-');
                  },
                  child: const Text('-'),
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}
