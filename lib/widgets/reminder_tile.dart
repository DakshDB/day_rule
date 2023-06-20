import 'package:enhanced_you/controllers/reminder_controller.dart';
import 'package:enhanced_you/models/reminder.dart';
import 'package:flutter/material.dart';

class ReminderTile extends StatefulWidget {

  const ReminderTile({Key? key, required this.reminder, required this.reminderController}) : super(key: key);

  final Reminder reminder;
  final ReminderController reminderController;

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
          icon: IconButton(onPressed: (){
            widget.reminderController.deleteReminder(widget.reminder.id);

          } , icon: Icon(Icons.delete)),
          onPressed: () {},
        ),
      )
    );
  }

}