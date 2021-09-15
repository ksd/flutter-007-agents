import 'package:flutter/material.dart';
import 'agentTheme.dart';
import 'home.dart';

void main() {
  runApp(Agents());
}

class Agents extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    final theme = AgentTheme.dark();
    return MaterialApp(
      title: 'Ian Flemmings Agents',
      theme: theme,
      home: const Home(),
    );
  }
}
