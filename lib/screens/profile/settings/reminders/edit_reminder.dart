import 'dart:math';

import 'package:cherry_toast/cherry_toast.dart';
import 'package:enhanced_you/configs/reminder.dart';
import 'package:enhanced_you/controllers/reminder_controller.dart';
import 'package:enhanced_you/models/reminder.dart';
import 'package:enhanced_you/widgets/custom_app_bar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class EditReminder extends ConsumerStatefulWidget {
  const EditReminder({Key? key, required this.reminder}) : super(key: key);

  final Reminder reminder;

  @override
  ConsumerState<EditReminder> createState() => _EditReminderState();
}

class _EditReminderState extends ConsumerState<EditReminder> {

  @override
  Widget build(BuildContext context) {
    var reminderController = ref.watch(reminderControllerProvider.notifier);
    return Scaffold(
      appBar:
          customAppBar(context, title: "Edit Reminder", isBackEnabled: true),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Card(
              elevation: 5,
              margin: const EdgeInsets.all(20),
              child: Padding(
                padding: const EdgeInsets.all(16.0),
                child: Column(
                  children: [
                    // Reminder Type
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        const Text('Type: ',
                          style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),),
                        DropdownButton<String>(
                          value: reminderTypes[0],
                          onChanged: (String? newValue) {
                            setState(() {});
                          },
                          items: reminderTypes
                              .map<DropdownMenuItem<String>>((String value) {
                            return DropdownMenuItem<String>(
                              value: value,
                              child: Text(
                                value,
                                style: const TextStyle(fontSize: 16),
                              ),
                            );
                          }).toList(),
                        ),
                      ],
                    ),
                    // Reminder Frequency
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        const Text('Frequency: ',
                          style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),),
                        // + Button for incrementing frequency by 1 : frequency : - Button for decrementing frequency by 1
                        Row(
                          children: [
                            ElevatedButton(
                              onPressed: () {},
                              style: ElevatedButton.styleFrom(
                                minimumSize: Size.zero, // Set this
                                padding: const EdgeInsets.all(12), // and this
                              ),
                              child: const Text('+'),
                            ),
                            const SizedBox(width: 10),
                            const Text('5x'),
                            const SizedBox(width: 10),
                            ElevatedButton(
                              onPressed: () {},
                              style: ElevatedButton.styleFrom(
                                minimumSize: Size.zero, // Set this
                                padding: const EdgeInsets.all(12), // and this
                              ),
                              child: const Text('-'),
                            ),
                          ],
                        ),
                      ],
                    ),
                    // Reminder Start Time
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        const Text('Start Time: ',
                          style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),),
                        // + Button for incrementing time by 30 minutes : time : - Button for decrementing time by 30 minutes
                        Row(
                          children: [
                            ElevatedButton(
                              onPressed: () {},
                              style: ElevatedButton.styleFrom(
                                minimumSize: Size.zero, // Set this
                                padding: const EdgeInsets.all(12), // and this
                              ),
                              child: const Text('+'),
                            ),
                            const SizedBox(width: 10),
                            const Text('5:00 PM'),
                            const SizedBox(width: 10),
                            ElevatedButton(
                              onPressed: () {},
                              style: ElevatedButton.styleFrom(
                                minimumSize: Size.zero, // Set this
                                padding: const EdgeInsets.all(12), // and this
                              ),
                              child: const Text('-'),
                            ),
                          ],
                        ),
                      ],
                    ),
                    // Reminder End Time
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        const Text('End Time: ',
                          style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),),
                        // + Button for incrementing time by 30 minutes : time : - Button for decrementing time by 30 minutes
                        Row(
                          children: [
                            ElevatedButton(
                              onPressed: () {},
                              style: ElevatedButton.styleFrom(
                                minimumSize: Size.zero, // Set this
                                padding: const EdgeInsets.all(12), // and this
                              ),
                              child: const Text('+'),
                            ),
                            const SizedBox(width: 10),
                            const Text('5:00 PM'),
                            const SizedBox(width: 10),
                            ElevatedButton(
                              onPressed: () {},
                              style: ElevatedButton.styleFrom(
                                minimumSize: Size.zero, // Set this
                                padding: const EdgeInsets.all(12), // and this
                              ),
                              child: const Text('-'),
                            ),
                          ],
                        ),
                      ],
                    ),
                    // Reminder Repeat Days
                    const Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text('Repeat Days: ',
                          style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                        ),
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        // Circular Buttons for each day of the week
                        // Monday Button
                        ElevatedButton(

                          onPressed: () {},
                          style: ElevatedButton.styleFrom(
                            tapTargetSize: MaterialTapTargetSize.shrinkWrap,
                            minimumSize: Size.zero, // Set this
                            padding: const EdgeInsets.all(12), // and this
                          ),
                          child: const Text('M'),
                        ),
                        // Tuesday Button
                        ElevatedButton(
                          onPressed: () {},
                          style: ElevatedButton.styleFrom(
                            tapTargetSize: MaterialTapTargetSize.shrinkWrap,
                            minimumSize: Size.zero, // Set this
                            padding: const EdgeInsets.all(12), // and this
                          ),
                          child: const Text('T'),
                        ),
                        // Wednesday Button
                        ElevatedButton(
                          onPressed: () {},
                          style: ElevatedButton.styleFrom(
                            tapTargetSize: MaterialTapTargetSize.shrinkWrap,
                            minimumSize: Size.zero, // Set this
                            padding: const EdgeInsets.all(12), // and this
                          ),
                          child: const Text('W'),
                        ),
                        // Thursday Button
                        ElevatedButton(
                          onPressed: () {},
                          style: ElevatedButton.styleFrom(
                            tapTargetSize: MaterialTapTargetSize.shrinkWrap,
                            minimumSize: Size.zero, // Set this
                            padding: const EdgeInsets.all(12), // and this
                          ),
                          child: const Text('T'),
                        ),
                        // Friday Button
                        ElevatedButton(
                          onPressed: () {},
                          style: ElevatedButton.styleFrom(
                            tapTargetSize: MaterialTapTargetSize.shrinkWrap,
                            minimumSize: Size.zero, // Set this
                            padding: const EdgeInsets.all(12), // and this
                          ),
                          child: const Text('F'),
                        ),
                        // Saturday Button
                        ElevatedButton(
                          onPressed: () {},
                          style: ElevatedButton.styleFrom(
                            tapTargetSize: MaterialTapTargetSize.shrinkWrap,
                            minimumSize: Size.zero, // Set this
                            padding: const EdgeInsets.all(12), // and this
                          ),
                          child: const Text('S'),
                        ),
                        // Sunday Button
                        ElevatedButton(
                          onPressed: () {},
                          style: ElevatedButton.styleFrom(
                            tapTargetSize: MaterialTapTargetSize.shrinkWrap,
                            minimumSize: Size.zero, // Set this
                            padding: const EdgeInsets.all(12), // and this
                          ),
                          child: const Text('S'),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
            // Save Button and delete button at the bottom with icons
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                ElevatedButton.icon(
                  onPressed: () {
                    reminderController.saveReminder(
                      Reminder(
                        id: Random().nextInt(1000),
                        type: 'Reminder',
                        frequency: 1,
                        startAt: DateTime.now(),
                        endAt: DateTime.now(),
                        repeatDays: [1,2,3,4,5,6,7],
                      ),
                    );
                    // Navigate to Reminders Page
                    Navigator.of(context).pop();
                    // Toast Message
                    CherryToast.success(title: const Text('Reminder Saved')).show(context);


                  },
                  icon: const Icon(Icons.save),
                  label: const Text('Save'),
                ),
                ElevatedButton.icon(
                  onPressed: () {},
                  icon: const Icon(Icons.delete),
                  label: const Text('Delete'),
                ),
              ],
            ),

          ],
        ),
      ),
    );
  }
}
