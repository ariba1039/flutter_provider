import 'package:flutter/material.dart';

class Example2 extends StatefulWidget {
  const Example2({super.key});

  @override
  State<Example2> createState() => _Example2State();
}

class _Example2State extends State<Example2> {
  double value = 1.0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Ariba'),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Slider(
            value: value,
            onChanged: (valUe) {},
          ),
          Row(
            children: [
              Container(
                decoration: BoxDecoration(color: Colors.green,),
                child: const Center(
                  child: Text('Container 1 '),
                ),
              )
            ],
          )
        ],
      ),
    );
  }
}
