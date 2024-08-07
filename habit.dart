import 'package:flutter/material.dart';

class Habit {
  String id;
  String name;
  String description;
  int frequency; // E.g., 1 for daily, 7 for weekly
  TimeOfDay reminderTime;
  List<DateTime> completionDates;

  Habit({
    required this.id,
    required this.name,
    required this.description,
    required this.frequency,
    required this.reminderTime,
    required this.completionDates,
  });

  factory Habit.fromJson(Map<String, dynamic> json) => Habit(
    id: json['id'],
    name: json['name'],
    description: json['description'],
    frequency: json['frequency'],
    reminderTime: TimeOfDay(hour: json['reminderTime']['hour'], minute: json['reminderTime']['minute']),
    completionDates: List<DateTime>.from(json['completionDates'].map((date) => DateTime.parse(date))),
  );

  Map<String, dynamic> toJson() => {
    'id': id,
    'name': name,
    'description': description,
    'frequency': frequency,
    'reminderTime': {'hour': reminderTime.hour, 'minute': reminderTime.minute},
    'completionDates': completionDates.map((date) => date.toIso8601String()).toList(),
  };
}
