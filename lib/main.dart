import 'package:flutter/material.dart';
import 'package:english_words/english_words.dart';

void main() {
  runApp(HelloWorld());
}

class HelloWorld extends StatelessWidget {
  const HelloWorld({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Material(
      child: Scaffold(
        appBar: AppBar(
          title: const Text('Hello World'),
          backgroundColor: Colors.black12,
        ),
        body: Center(
          child: Randomwords(),
        ),
      ),
    );
  }
}

class Randomwords extends StatefulWidget {
  const Randomwords({Key key}) : super(key: key);

  @override
  _RandomwordsState createState() => _RandomwordsState();
}

class _RandomwordsState extends State<Randomwords> {
  @override
  Widget build(BuildContext context) {
    final wordPair = WordPair.random();
    return Text(wordPair.asPascalCase);
  }
}
