import 'package:flutter/material.dart';

final colors = [Colors.red, Colors.green, Colors.blue, Colors.yellow];

class Card extends StatelessWidget {
  final Color color;
  const Card({super.key, this.color = Colors.red});

  @override
  Widget build(BuildContext context) {
    return Container(
        color: color,
        width: 100,
        height: 100,
        child: const Center(
            child: Text('?',
                style: TextStyle(fontSize: 40, color: Colors.white))));
  }
}

class MyWidget extends StatelessWidget {
  const MyWidget({super.key});

  @override
  Widget build(BuildContext context) {
    List<Widget> createList() {
      List<Widget> containers = [];
      for (int i = 0; i < 4; i++) {
        containers.add(const Card(color: Colors.red));
        containers.add(const SizedBox(width: 50));
      }
      return containers;
    }

    return MaterialApp(
        home: Scaffold(
      body: Row(children: createList()),
    ));
  }
}
