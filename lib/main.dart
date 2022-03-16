import 'package:flutter/material.dart';

void main() {
  runApp(HomePage());
}

class HomePage extends StatelessWidget {
  const HomePage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Welcome Home',
      home: CountFuction(title: 'Buffet'),
    );
  }
}

class CountFuction extends StatefulWidget {
  CountFuction({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _CountFuctionState createState() => _CountFuctionState();
}

class _CountFuctionState extends State<CountFuction> {
  int _counter = 0;

  _incrementCounter() {
    _counter++;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Counter Side"),
      ),
      body: Center(
        child: Column(
          children: [
            Text('Welcome to counter App'),
            Text('My Current count is $_counter')
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
          onPressed: _incrementCounter(),
          tooltip: "click me",
          child: Icon(Icons.add)),
    );
  }
}
