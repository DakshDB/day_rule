import 'package:enhanced_you/models/reminder.dart';
import 'package:enhanced_you/widgets/header.dart';
import 'package:flutter/material.dart';

class EditReminder extends StatefulWidget {
  const EditReminder({Key? key, required this.reminder}) : super(key: key);

  final Reminder reminder;

  @override
  State<EditReminder> createState() => _EditReminderState();
}

class _EditReminderState extends State<EditReminder> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Column(
          children: [
            Header(title: 'Edit Reminder'),
            Card(
              margin: const EdgeInsets.all(20),
              child: Padding(
                padding: const EdgeInsets.all(16.0),
                child: Column(
                  children: [
                    // Reminder Type
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        const Text('Reminder Type: '),

                        DropdownButton<String>(
                          value: 'Daily',
                          onChanged: (String? newValue) {
                            setState(() {
                            });
                          },
                          items: <String>['Daily', 'Weekly', 'Monthly', 'Yearly']
                              .map<DropdownMenuItem<String>>((String value) {
                            return DropdownMenuItem<String>(
                              value: value,
                              child: Text(value, style: const TextStyle(fontSize: 20),),
                            );
                          }).toList(),
                        ),
                      ],
                    ),
                    // Reminder Frequency
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        const Text('Reminder Frequency: '),

                        DropdownButton<String>(
                          value: '5',
                          onChanged: (String? newValue) {
                            setState(() {
                            });
                          },
                          items: <String>['5', '10', '15', '20', '25', '30']
                              .map<DropdownMenuItem<String>>((String value) {
                            return DropdownMenuItem<String>(
                              value: value,
                              child: Text(value, style: const TextStyle(fontSize: 20),),
                            );
                          }).toList(),
                        ),
                      ],
                    ),
                    // Reminder Start Time
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        const Text('Reminder Start Time: '),

                        DropdownButton<String>(
                          value: '5',
                          onChanged: (String? newValue) {
                            setState(() {
                            });
                          },
                          items: <String>['5', '10', '15', '20', '25', '30']
                              .map<DropdownMenuItem<String>>((String value) {
                            return DropdownMenuItem<String>(
                              value: value,
                              child: Text(value, style: const TextStyle(fontSize: 20),),
                            );
                          }).toList(),
                        ),
                      ],
                    ),
                    // Reminder End Time
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        const Text('Reminder End Time: '),

                        DropdownButton<String>(
                          value: '5',
                          onChanged: (String? newValue) {
                            setState(() {
                            });
                          },
                          items: <String>['5', '10', '15', '20', '25', '30']
                              .map<DropdownMenuItem<String>>((String value) {
                            return DropdownMenuItem<String>(
                              value: value,
                              child: Text(value, style: const TextStyle(fontSize: 20),),
                            );
                          }).toList(),
                        ),
                      ],
                    ),
                    // Reminder Repeat Days
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        const Text('Reminder Repeat Days: '),

                        DropdownButton<String>(
                          value: '5',
                          onChanged: (String? newValue) {
                            setState(() {
                            });
                          },
                          items: <String>['5', '10', '15', '20', '25', '30']
                              .map<DropdownMenuItem<String>>((String value) {
                            return DropdownMenuItem<String>(
                              value: value,
                              child: Text(value, style: const TextStyle(fontSize: 20),),
                            );
                          }).toList(),
                        ),
                      ],
                    ),

                  ],
                ),
              ),
            ),
          ],
        ),
    );
  }
}