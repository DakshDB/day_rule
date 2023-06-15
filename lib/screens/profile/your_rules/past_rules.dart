import 'package:enhanced_you/widgets/header.dart';
import 'package:flutter/material.dart';

import '../../../models/rule.dart';
import '../../../widgets/rule_card.dart';

class PastRules extends StatefulWidget {
  const PastRules({Key? key}) : super(key: key);

  @override
  State<PastRules> createState() => _PastRulesState();
}

class _PastRulesState extends State<PastRules> {

  final List<Rule> _pastRules = [
    Rule(
      ruleID: '1',
      rule: 'Rule 1',
      date: DateTime.now(),
    ),
    Rule(
      ruleID: '2',
      rule: 'Rule 2',
      date: DateTime.now(),
    ),
    Rule(
      ruleID: '3',
      rule: 'Rule 3',
      date: DateTime.now(),
    ),
    ];

@override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          // Top Row of Profile Page (Back Button, Page Name (Past Rules))
          const Header(title: 'Past Rules'),
          // List of Past Rules
          Expanded(
            child: ListView.builder(
              itemCount: _pastRules.length,
              itemBuilder: (context, index) {
                return RuleCard(
                    rule: _pastRules[index],
                    onTap: () {},
                    onLongPress: () {},
                    isFavorite: false
                );
              },
            ),
          ),
        ],
      ),
    );
  }

}