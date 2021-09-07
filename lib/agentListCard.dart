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
        margin: const EdgeInsets.only(bottom: 16),
        constraints: const BoxConstraints.expand(width: 350, height: 450),
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage(agent.imageURL),
            fit: BoxFit.fitHeight,
          ),
          borderRadius: BorderRadius.all(Radius.circular(10.0)),
          color: Colors.white70,
        ),
        // Now for the content
        child: Stack(
          children: [
            Text(
              agent.name,
              style: AgentTheme.darkTextTheme.headline1,
            ),
            Positioned(
              child: Text(
                agent.active,
                style: AgentTheme.darkTextTheme.headline2,
              ),
              top: 35,
            ),
            Positioned(
              child: Text(
                agent.latestMovie,
                style: AgentTheme.darkTextTheme.headline2,
              ),
              bottom: 30,
              right: 0,
            ),
            Positioned(
              child: Text(
                agent.latestMovieYear,
                style: AgentTheme.darkTextTheme.headline3,
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
