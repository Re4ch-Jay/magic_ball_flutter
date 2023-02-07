import 'package:flutter/material.dart';
import 'magic_ball.dart';

void main() {
  runApp(const App());
}

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.blueGrey[500],
        appBar: AppBar(
          backgroundColor: Colors.blueGrey[600],
          title: const Text("Ask Me Anything"),
        ),
        body: const Center(
          child: MagicBall(),
        ),
      ),
    );
  }
}
