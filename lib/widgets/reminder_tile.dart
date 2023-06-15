import 'package:enhanced_you/models/reminder.dart';
import 'package:flutter/material.dart';

class ReminderTile extends StatefulWidget {

  const ReminderTile({Key? key, required this.reminder}) : super(key: key);

  final Reminder reminder;

  @override
  State<ReminderTile> createState() => _ReminderTileState();
}

class _ReminderTileState extends State<ReminderTile> {

  @override
  Widget build(BuildContext context) {
    return Card(
      child: ListTile(
        title: Text(widget.reminder.id.toString()),
        subtitle: Text(widget.reminder.startAt.toString()),
        trailing: IconButton(
          icon: const Icon(Icons.delete),
          onPressed: () {},
        ),
      )
    );
  }

}