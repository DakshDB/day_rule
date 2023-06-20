import 'package:enhanced_you/controllers/reminder_controller.dart';
import 'package:enhanced_you/models/reminder.dart';
import 'package:enhanced_you/screens/profile/settings/reminders/edit_reminder.dart';
import 'package:enhanced_you/widgets/header.dart';
import 'package:enhanced_you/widgets/reminder_tile.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class NotificationSettings extends ConsumerStatefulWidget {
  const NotificationSettings({super.key});

  @override
  ConsumerState<NotificationSettings> createState() =>
      _NotificationSettingsState();
}

class _NotificationSettingsState extends ConsumerState<NotificationSettings> {
  List<Reminder> _reminders = [];
  late ReminderController reminderController;

  @override
  void initState() {
    super.initState();
    reminderController = ref.read(reminderControllerProvider.notifier);
    WidgetsBinding.instance.addPostFrameCallback((_) {
      refresh();
    });

  }

  void refresh() {
    reminderController.getReminderList();
  }

  @override
  Widget build(BuildContext context) {
    _reminders = ref.watch(reminderControllerProvider);
    return Scaffold(
        body: ScrollConfiguration(
          behavior: const ScrollBehavior().copyWith(overscroll: false),
          child: SingleChildScrollView(
            child: Padding(
              padding: const EdgeInsets.all(16.0),
              child:
                  Column(mainAxisAlignment: MainAxisAlignment.start, children: [
                const Header(title: 'Reminders'),
                // Details about the page
                Padding(
                  padding: const EdgeInsets.only(top: 16.0, bottom: 8.0),
                  child: Text(
                    'Set up reminders to help you remember to get your daily dose.',
                    style: TextStyle(
                      fontSize: 16.0,
                      fontWeight: FontWeight.w400,
                      color: Colors.grey[600],
                    ),
                  ),
                ),
                // Notification not working text
                Padding(
                  padding: const EdgeInsets.only(top: 16.0, bottom: 16.0),
                  child: Row(
                    children: [
                      const Icon(
                        Icons.warning_amber_rounded,
                        color: Colors.red,
                      ),
                      const SizedBox(width: 10),
                      Text(
                        'Notifications are not working',
                        style: TextStyle(
                          fontSize: 12.0,
                          fontWeight: FontWeight.w400,
                          color: Colors.grey[600],
                        ),
                      ),
                    ],
                  ),
                ),
                // List of reminders
                ListView.builder(
                  shrinkWrap: true,
                  itemCount: _reminders.length,
                  itemBuilder: (context, index) {
                    return ReminderTile(reminder: _reminders[index], reminderController: reminderController,);
                  },
                ),
              ]),
            ),
          ),
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            Navigator.of(context).push(MaterialPageRoute(
                builder: (context) => EditReminder(
                      reminder: Reminder(
                          id: 1,
                          type: '',
                          frequency: 1,
                          startAt: DateTime.now(),
                          endAt: DateTime.now(),
                          repeatDays: []),
                    ))).then((value) => refresh());
          },
          child: const Icon(Icons.add),
        ));
  }
}
