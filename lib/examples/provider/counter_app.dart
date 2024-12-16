import 'package:class_examples/examples/provider/counter_provider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'counter_screen.dart';

final changeNotifier = ChangeNotifierProvider(
  create: (_) => CounterProvider(),
  child: const MyApp(),
);

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: 'Provider Example',
      home: CounterScreen(),
    );
  }
}
