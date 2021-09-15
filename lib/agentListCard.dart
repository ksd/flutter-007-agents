import 'package:agents/model/agent.dart';
import 'package:flutter/material.dart';
import 'package:outlined_text/outlined_text.dart';
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
          color: Colors.white54,
        ),
        // Now for the content
        child: Stack(
          children: [
            Positioned(
              child: Image.asset(
                'assets/agents/${agent.imageURL}',
              ),
              top: 20,
            ),
            Positioned(
              child: OutlinedText(
                text: Text(
                  agent.name,
                  style: AgentTheme.darkTextTheme.headline2,
                ),
                strokes: [
                  OutlinedTextStroke(color: Colors.black45, width: 3),
                ],
              ),
              top: 0,
            ),
            Positioned(
              child: OutlinedText(
                text: Text(
                  agent.active,
                  style: AgentTheme.darkTextTheme.headline4,
                ),
                strokes: [
                  OutlinedTextStroke(color: Colors.black45, width: 3),
                ],
              ),
              top: 35,
            ),
            Positioned(
              child: OutlinedText(
                text: Text(
                  agent.latestMovie,
                  style: AgentTheme.darkTextTheme.headline3,
                ),
                strokes: [
                  OutlinedTextStroke(color: Colors.black45, width: 3),
                ],
              ),
              bottom: 30,
              right: 0,
            ),
            Positioned(
              child: OutlinedText(
                text: Text(
                  agent.latestMovieYear,
                  style: AgentTheme.darkTextTheme.headline4,
                ),
                strokes: [
                  OutlinedTextStroke(color: Colors.black45, width: 3),
                ],
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
