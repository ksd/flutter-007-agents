class Agent {
  String name;
  String imageURL;

  Agent(this.name, this.imageURL);

  static List<Agent> list = [
    Agent('Sean Connery', 'sean_connery.png'),
    Agent('George Lazenby', 'george_lazenby.png'),
    Agent('Roger Moore', 'roger_moore.png'),
    Agent('Timothy Dalton', 'timothy_dalton.png'),
    Agent('Pierce Brosnan', 'pierce_brosnan.png'),
    Agent('Daniel Craig', 'daniel_craig.png')
  ];
}
