import 'package:flutter/material.dart';

class CounterScreenOptimized extends StatefulWidget {
  const CounterScreenOptimized({Key? key}) : super(key: key);

  @override
  State<CounterScreenOptimized> createState() => _CounterScreenOptimizedState();
}

// Parent Widget
class _CounterScreenOptimizedState extends State<CounterScreenOptimized> {
  int counter = 0; // State

  void increase() => setState(() => counter++);
  
  void decrease() => setState(() => counter--);
  
  void restore() => setState(() => counter = 0);
  
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
              Text('$counter', style: font20),
            ]),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      floatingActionButton: CustomCounterButtons(
        increaseAction: increase,
        decreaseAction: decrease,
        restoreAction: restore,
      ),
    );
  }
}

// Child Widget
class CustomCounterButtons extends StatelessWidget {
  final Function increaseAction;
  final Function decreaseAction;
  final Function restoreAction;

  const CustomCounterButtons(
      {Key? key,
      required this.increaseAction,
      required this.decreaseAction,
      required this.restoreAction})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: <Widget>[
        FloatingActionButton(
          child: const Icon(Icons.restart_alt), 
          onPressed: () => restoreAction()),

        // const SizedBox(width: 10),

        FloatingActionButton(
          child: const Icon(Icons.remove), 
          onPressed: () => decreaseAction()),

        // const SizedBox(width: 10),

        FloatingActionButton(
          child: const Icon(Icons.add), 
          onPressed: () => increaseAction()),
      ],
    );
  }
}
