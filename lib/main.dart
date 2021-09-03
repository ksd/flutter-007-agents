import 'package:flutter/material.dart';
import 'agentList.dart';

void main() {
  runApp(Agents());
}

class Agents extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Ian Flemmings Agents',
      theme: ThemeData(primaryColor: Colors.white, accentColor: Colors.black),
      home: AgentList(),
    );
  }
}
