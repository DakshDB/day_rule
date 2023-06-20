import 'dart:convert';

class Reminder {
  final int id;
  final String type;
  final int frequency;
  final DateTime startAt;
  final DateTime endAt;
  final List<int> repeatDays;

  Reminder(
      { required this.id,
        required this.type,
        required this.frequency,
        required this.startAt,
        required this.endAt,
        required this.repeatDays,
      });


  // fromJsonString converts a string to a Reminder object
  factory Reminder.fromJsonString(String jsonString) {
    Map<String, dynamic> jsonMap = json.decode(jsonString);
    return Reminder(
      id: jsonMap['id'],
      type: jsonMap['type'],
      frequency: jsonMap['frequency'],
      startAt: DateTime.parse(jsonMap['startAt']),
      endAt: DateTime.parse(jsonMap['endAt']),
      repeatDays: jsonMap['repeatDays'].cast<int>(),
    );
  }

  // toJsonString converts a Reminder object to a string
  String toJsonString() {
    Map<String, dynamic> jsonMap = {
      'id': id,
      'type': type,
      'frequency': frequency,
      'startAt': startAt.toString(),
      'endAt': endAt.toString(),
      'repeatDays': repeatDays,
    };
    return json.encode(jsonMap);
  }

}