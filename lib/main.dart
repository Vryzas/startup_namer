import 'package:english_words/english_words.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Welcome to Flutter',
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Welcome to Flutter'),
        ),
        body: const Center(
          child: RamdomWords(),
        ),
      ),
    );
  }
}

// stateful widget
class RamdomWords extends StatefulWidget {
  const RamdomWords({super.key});

  @override
  State<RamdomWords> createState() => _RamdomWordsState();
}

class _RamdomWordsState extends State<RamdomWords> {
  @override
  Widget build(BuildContext context) {
    final wordPair = WordPair.random();
    return Text(wordPair.asPascalCase);
  }
}
