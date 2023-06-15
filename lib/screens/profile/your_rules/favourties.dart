import 'package:enhanced_you/widgets/header.dart';
import 'package:enhanced_you/widgets/rule_card.dart';
import 'package:flutter/material.dart';

import '../../../models/rule.dart';

class Favourites extends StatefulWidget {
  const Favourites({super.key});

  @override
  State<Favourites> createState() => _FavouritesState();
}

class _FavouritesState extends State<Favourites> {

  final List<Rule> _favourites = [
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
          // Top Row of Profile Page (Back Button, Page Name (Favourites))
          const Header(title: 'Favourites'),

          // List of Favourites
          Expanded(
            child: ListView.builder(
              itemCount: _favourites.length,
              itemBuilder: (context, index) {
                return RuleCard(
                    rule: _favourites[index],
                    onTap: () {},
                    onLongPress: () {},
                    isFavorite: true
                );
              },
            ),
          ),


        ],
      ),
    );
  }
}

