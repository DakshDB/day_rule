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




}