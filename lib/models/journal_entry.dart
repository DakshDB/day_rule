import 'package:flutter/material.dart';

class JournalEntry {
  String id;
  String title;
  String body;
  DateTime date;
  Color backgroundColor;

  JournalEntry({required this.id, required this.title, required this.body, required this.date, required this.backgroundColor});

  factory JournalEntry.fromJson(Map<String, dynamic> json) {
    return JournalEntry(
      id: json['id'],
      title: json['title'],
      body: json['body'],
      date: DateTime.parse(json['date']),
      backgroundColor: json['backgroundColor'],
    );
  }

  Map<String, dynamic> toJson() => {
    'id': id,
    'title': title,
    'body': body,
    'date': date.toIso8601String(),
    'backgroundColor': backgroundColor,
  };

}