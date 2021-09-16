import 'package:agents/model/movie.dart';
import 'package:flutter/material.dart';
import 'package:outlined_text/outlined_text.dart';
import 'agentTheme.dart';

class MovieListCard extends StatelessWidget {
  const MovieListCard({Key? key, required this.movie}) : super(key: key);

  final Movie movie;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        padding: const EdgeInsets.all(16),
        margin: const EdgeInsets.fromLTRB(8.0, 4.0, 8.0, 4.0),
        constraints: const BoxConstraints.expand(height: 250),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.all(Radius.circular(10.0)),
          color: Colors.white,
        ),
        // Now for the content
        child: Stack(
          children: [
            if (movie.posterURL != null)
              Positioned(
                child: Image.asset(
                  'assets/movies/${movie.posterURL}',
                ),
                top: 0,
                right: 0,
              ),
            Positioned(
              child: OutlinedText(
                text: Text(
                  movie.title,
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
                  movie.agent.name,
                  style: AgentTheme.darkTextTheme.headline2,
                ),
                strokes: [
                  OutlinedTextStroke(color: Colors.black45, width: 3),
                ],
              ),
              bottom: 0,
            )
          ],
        ),
      ),
    );
  }
}
