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
            Container(
              color: Colors.amber,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  ElevatedButton(
                    onPressed: () {
                      print('+');
                    },
                    child: const Text('+'),
                  ),
                  const SizedBox(width: 30),
                  ElevatedButton(
                    onPressed: () {
                      print('-');
                    },
                    child: const Text('-'),
                  )
                ],
              ),
            ),
            ElevatedButton(
              onPressed: () {
                print('Reset');
              },
              child: const Text('Reset'),
            ),
          ],
        ),
      ),
    );
  }
}
