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
          body: const CounterWidget()),
    );
  }
}

class CounterWidget extends StatefulWidget {
  const CounterWidget({super.key});

  @override
  State<CounterWidget> createState() => _CounterWidgetState();
}

class _CounterWidgetState extends State<CounterWidget> {
  int _counter = 0;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(_counter.toString()),
        Container(
          color: Colors.green[300],
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              ElevatedButton(
                onPressed: () {
                  setState(() {
                    _counter++;
                  });
                  print(_counter);
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
    );
  }
}
