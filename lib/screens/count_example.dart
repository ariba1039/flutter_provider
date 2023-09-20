import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_provider/provider/count_provider.dart';
import 'package:provider/provider.dart';

class CountExample extends StatefulWidget {
  const CountExample({super.key});

  @override
  State<CountExample> createState() => _CountExampleState();
}

class _CountExampleState extends State<CountExample> {
  void initState() {
    final countProvider = Provider.of<CountProvider>(context, listen: false);

    // TODO: implement initState
    super.initState();

    Timer.periodic(const Duration(seconds: 1), (timer) {
      countProvider.setCount();
    });
  }

  @override
  Widget build(BuildContext context) {
    final countProvider = Provider.of<CountProvider>(context, listen: false);
    return Scaffold(
      appBar: AppBar(
          title: Consumer<CountProvider>(builder: (context, value, child) {
        print('Only this widget builds');
        return Text(
          value.count.toString(),
          style: const TextStyle(
            fontSize: 10,
          ),
        );
      })),
      body: FloatingActionButton(
        onPressed: () {
          countProvider.setCount();
        },
        child: const Icon(Icons.add),
      ),
    );
  }
}
