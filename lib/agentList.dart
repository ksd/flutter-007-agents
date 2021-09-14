import 'package:agents/agentListCard.dart';
import 'package:flutter/material.dart';
import 'model/agent.dart';

class AgentList extends StatefulWidget {
  const AgentList({Key? key}) : super(key: key);

  @override
  _AgentListState createState() => _AgentListState();
}

class _AgentListState extends State<AgentList> {
  // In order to use the bottom navigation bar
  // we need to keep track of the selected tab
  int _selectedIndex = 0;

  // A list of pages to visit from the bottom navigation bar
  static List<Widget> pages = <Widget>[
    AgentListBuilderWidget(),
    Container(color: Colors.green),
  ];

  // The function to be called when you tap on an
  // bottom navigation bar item

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          '007 Agenter',
          style: Theme.of(context).textTheme.headline6,
        ),
      ),
      body: SafeArea(
        child: pages[_selectedIndex],
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _selectedIndex,
        onTap: _onItemTapped,
        items: <BottomNavigationBarItem>[
          const BottomNavigationBarItem(
              icon: Icon(Icons.person), label: 'Agents'),
          const BottomNavigationBarItem(
              icon: Icon(Icons.movie), label: 'Movies'),
        ],
      ),
    );
  }
}

class AgentListBuilderWidget extends StatelessWidget {
  const AgentListBuilderWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: Agent.list.length,
      itemBuilder: (BuildContext context, int index) {
        return AgentListCard(agent: Agent.list[index]);
      },
    );
  }
}
