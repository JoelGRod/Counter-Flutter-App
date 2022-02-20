import 'package:flutter/material.dart';

class CounterScreen extends StatefulWidget {
  const CounterScreen({Key? key}) : super(key: key);

  @override
  State<CounterScreen> createState() => _CounterScreenState();
}

class _CounterScreenState extends State<CounterScreen> {

  int counter = 0;  // State

  @override
  Widget build(BuildContext context) {
    const TextStyle font30 = TextStyle(fontSize: 30);
    const TextStyle font20 = TextStyle(fontSize: 20);

    return Scaffold(
      appBar: AppBar(
        title: const Text('Counter Screen'),
        elevation: 5.0,
        backgroundColor: Colors.purple,
      ),
      backgroundColor: Colors.white,
      body: Center(
        child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              const Text(
                'Clicks Counter',
                style: font30,
              ),
              Text(
                '$counter', 
                style: font20),
            ]
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      floatingActionButton: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: <Widget>[
          FloatingActionButton(
              child: const Icon(Icons.restart_alt),
              onPressed: () => setState(() => counter = 0)
          ),

          // const SizedBox(width: 10),

          FloatingActionButton(
              child: const Icon(Icons.remove),
              onPressed: () => setState(() => counter--)
          ),

          // const SizedBox(width: 10),

          FloatingActionButton(
              child: const Icon(Icons.add),
              onPressed: () {
                counter++;        // Change state
                setState(() {});  // Update screen
              }
          ),
        ],
      ),
    );
  }
}
