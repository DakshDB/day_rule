import 'package:flutter/material.dart';

import '../models/rule.dart';

class RuleCard extends StatelessWidget {
  final Rule rule;
  final Function() onTap;
  final Function() onLongPress;
  final bool isFavorite;

  const RuleCard({super.key,
    required this.rule,
    required this.onTap,
    required this.onLongPress,
    required this.isFavorite,
  });


  @override
  Widget build(BuildContext context) {
    return Card(
      child: ListTile(
        title: Text(rule.rule),
        subtitle: Text(rule.date.toString()),
        trailing: IconButton(
          icon: Icon(
            isFavorite ? Icons.favorite : Icons.favorite_border,
            color: isFavorite ? Colors.red : null,
          ),
          onPressed: () {

          },
        ),
        onTap: onTap,
        onLongPress: onLongPress,
      ),
    );
  }
}