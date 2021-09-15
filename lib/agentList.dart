import 'package:flutter/material.dart';
import 'package:agents/model/agent.dart';
import 'package:agents/agentListCard.dart';

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
