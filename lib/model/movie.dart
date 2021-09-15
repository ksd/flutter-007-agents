import 'agent.dart';

class Movie {
  String title;
  String releaseYear;
  String? posterURL;
  Agent agent;

  Movie(
      {required this.title,
      required this.releaseYear,
      this.posterURL,
      required this.agent});

  static List<Movie> list = [
    Movie(
      title: 'Dr. No',
      releaseYear: '1962',
      posterURL: '1.png',
      agent: Agent.list[0],
    ),
    Movie(
      title: 'From Russia with Love',
      releaseYear: '1963',
      posterURL: '2.png',
      agent: Agent.list[0],
    ),
    Movie(
        title: 'Goldfinger',
        releaseYear: '1964',
        posterURL: '3.png',
        agent: Agent.list[0]),
    Movie(
      title: 'Thunderball',
      releaseYear: '1965',
      agent: Agent.list[0],
    ),
    Movie(
      title: 'You Only Live Twice',
      releaseYear: '1967',
      agent: Agent.list[0],
    ),
    Movie(
      title: 'On Her Majesty\'s Secret Service',
      releaseYear: '1969',
      agent: Agent.list[1],
    ),
    Movie(
      title: 'Diamonds Are Forever',
      releaseYear: '1971',
      agent: Agent.list[0],
    ),
    Movie(
      title: 'Live and Let Die',
      releaseYear: '1973',
      posterURL: '8.png',
      agent: Agent.list[2],
    ),
    Movie(
      title: 'The Man with the Golden Gun',
      releaseYear: '1974',
      agent: Agent.list[2],
    ),
    Movie(
      title: 'The Spy Who Loved Me',
      releaseYear: '1977',
      posterURL: '10.png',
      agent: Agent.list[2],
    ),
    Movie(
      title: 'Moonraker',
      releaseYear: '1979',
      posterURL: '11.png',
      agent: Agent.list[2],
    ),
    Movie(
      title: 'For Your Eyes Only',
      releaseYear: '1981',
      agent: Agent.list[2],
    ),
    Movie(
      title: 'Octopussy',
      releaseYear: '1983',
      agent: Agent.list[2],
    ),
    Movie(
      title: 'A View to a Kill',
      releaseYear: '1985',
      posterURL: '14.png',
      agent: Agent.list[2],
    ),
    Movie(
      title: 'The Living Daylights',
      releaseYear: '1987',
      agent: Agent.list[3],
    ),
    Movie(
      title: 'Licence to Kill',
      releaseYear: '1989',
      agent: Agent.list[3],
    ),
    Movie(
      title: 'GoldenEye',
      releaseYear: '1995',
      agent: Agent.list[4],
    ),
    Movie(
      title: 'Tomorrow Never Dies',
      releaseYear: '1997',
      agent: Agent.list[4],
    ),
    Movie(
      title: 'The World Is Not Enough',
      releaseYear: '1999',
      agent: Agent.list[4],
    ),
    Movie(
      title: 'Die Another Day',
      releaseYear: '2002',
      agent: Agent.list[4],
    ),
    Movie(
      title: 'Casino Royale',
      releaseYear: '2006',
      agent: Agent.list[5],
    ),
    Movie(
      title: 'Quantum of Solace',
      releaseYear: '2008',
      posterURL: '22.png',
      agent: Agent.list[5],
    ),
    Movie(
      title: 'Skyfall',
      releaseYear: '2012',
      agent: Agent.list[5],
    ),
    Movie(
      title: 'Spectre',
      releaseYear: '2015',
      posterURL: '24.png',
      agent: Agent.list[5],
    ),
    Movie(
      title: 'No Time to Die',
      releaseYear: '2021',
      posterURL: '25.png',
      agent: Agent.list[5],
    ),
  ];
}
