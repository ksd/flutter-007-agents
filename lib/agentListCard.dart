import 'package:agents/agent.dart';
import 'package:flutter/material.dart';
import 'agentTheme.dart';

class AgentListCard extends StatelessWidget {
  const AgentListCard({Key? key, required this.agent}) : super(key: key);

  final Agent agent;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        padding: const EdgeInsets.all(16),
        margin: const EdgeInsets.fromLTRB(8.0, 4.0, 8.0, 4.0),
        constraints: const BoxConstraints.expand(height: 250),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.all(Radius.circular(10.0)),
          color: Colors.white70,
        ),
        // Now for the content
        child: Stack(
          children: [
            Positioned(
              child: Image.asset(
                agent.imageURL,
              ),
              top: 20,
            ),
            Positioned(
              child: Text(
                agent.name,
                style: AgentTheme.darkTextTheme.headline2,
              ),
              top: 0,
            ),
            Positioned(
              child: Text(
                agent.active,
                style: AgentTheme.darkTextTheme.headline4,
              ),
              top: 35,
            ),
            Positioned(
              child: Text(
                agent.latestMovie,
                style: AgentTheme.darkTextTheme.headline3,
              ),
              bottom: 30,
              right: 0,
            ),
            Positioned(
              child: Text(
                agent.latestMovieYear,
                style: AgentTheme.darkTextTheme.headline4,
              ),
              bottom: 10,
              right: 0,
            )
          ],
        ),
      ),
    );
  }
}
