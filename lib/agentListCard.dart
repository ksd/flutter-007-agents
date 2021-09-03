import 'package:flutter/material.dart';
import 'agentTheme.dart';

class AgentListCard extends StatelessWidget {
  const AgentListCard({Key? key}) : super(key: key);

  final String agent = 'Daniel Craig';
  final String active = '2006 -';
  final String latestMovie = 'No time to Die';
  final String latestMovieYear = '2021';

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        padding: const EdgeInsets.all(16),
        constraints: const BoxConstraints.expand(width: 350, height: 450),
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage('assets/daniel_craig.png'),
            fit: BoxFit.fitHeight,
          ),
          borderRadius: BorderRadius.all(Radius.circular(10.0)),
          color: Colors.white70,
        ),
        // Now for the content
        child: Stack(
          children: [
            Text(
              agent,
              style: AgentTheme.darkTextTheme.headline1,
            ),
            Positioned(
              child: Text(
                active,
                style: AgentTheme.darkTextTheme.headline2,
              ),
              top: 35,
            ),
            Positioned(
              child: Text(
                latestMovie,
                style: AgentTheme.darkTextTheme.headline2,
              ),
              bottom: 30,
              right: 0,
            ),
            Positioned(
              child: Text(
                latestMovieYear,
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
