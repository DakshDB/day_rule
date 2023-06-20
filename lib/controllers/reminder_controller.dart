import 'package:enhanced_you/providers/shared_preferences.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:shared_preferences/shared_preferences.dart';
import '../models/reminder.dart';

final reminderControllerProvider = StateNotifierProvider<ReminderController, List<Reminder>>((ref) {
  final sharedPreferences = ref.watch(sharedPreferencesProvider);
  return ReminderController(sharedPreferences);
});

class ReminderController extends StateNotifier<List<Reminder>> {

  ReminderController(this.sharedPreferences) : super([]) {
    getReminderList();
  }

  final SharedPreferences sharedPreferences;


  getState() {
    return state;
  }

// get reminders from shared preferences
  void getReminderList() {
    List<String>? reminderList = sharedPreferences.getStringList('reminders');
    List<Reminder> reminders = [];

    // if reminders exist, convert them to Reminder objects
    if (reminderList != null) {
      for (var reminder in reminderList) {
        reminders.add(Reminder.fromJsonString(reminder));
      }
    }

    state = reminders;
  }

// save reminder to shared preferences
  void saveReminder(Reminder reminder) async {

    // get reminders from shared preferences
    List<String>? reminderList = sharedPreferences.getStringList('reminders');
    // if reminders exist, add new reminder to list
    if (reminderList != null) {
      reminderList.add(reminder.toJsonString());
    } else {
      reminderList = [reminder.toJsonString()];
    }

    // save reminders to shared preferences
    sharedPreferences.setStringList('reminders', reminderList);
    state = reminderList.map((e) => Reminder.fromJsonString(e)).toList();
  }

  // delete reminder from shared preferences
  void deleteReminder(int id) async {

    // get reminders from shared preferences
    List<String>? reminderList = sharedPreferences.getStringList('reminders');

    // if reminders is empty, return
    if (reminderList == null) {
      return;
    }

    // remove reminder  from list by id
    reminderList.removeWhere((element) => Reminder.fromJsonString(element).id == id);

    // save reminders to shared preferences
    sharedPreferences.setStringList('reminders', reminderList);
    state = reminderList.map((e) => Reminder.fromJsonString(e)).toList();

  }
}

