import 'package:flutter/material.dart';
import 'package:agents/model/movie.dart';
import 'package:agents/movieListCard.dart';

class MovieListBuilderWidget extends StatelessWidget {
  const MovieListBuilderWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: Movie.list.length,
      itemBuilder: (BuildContext context, int index) {
        return MovieListCard(movie: Movie.list[index]);
      },
    );
  }
}
