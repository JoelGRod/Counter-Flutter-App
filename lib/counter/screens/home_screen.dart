import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Home Screen'),
          elevation: 5.0,
          backgroundColor: Colors.purple,
        ),
        backgroundColor: Colors.white,
        body: Center(
          child: Column(children: const [
            Text('Clicks Counter'),
            Text('0'),
            Expanded(
                child: FittedBox(
              fit: BoxFit.contain,
              child: FlutterLogo(),
            ))
          ]),
        ));
  }
}
