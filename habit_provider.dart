import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:habit_tracker_app/models/habit.dart';

class HabitProvider with ChangeNotifier {
  final FirebaseFirestore _firestore = FirebaseFirestore.instance;
  final String userId;

  HabitProvider(this.userId);

  Stream<List<Habit>> get habits {
    return _firestore
        .collection('users')
        .doc(userId)
        .collection('habits')
        .snapshots()
        .map((snapshot) {
      return snapshot.docs.map((doc) {
        return Habit.fromJson(doc.data() as Map<String, dynamic>);
      }).toList();
    });
  }

  Future<void> addHabit(Habit habit) async {
    await _firestore.collection('users').doc(userId).collection('habits').add(habit.toJson());
  }

  Future<void> updateHabit(String id, Habit habit) async {
    await _firestore.collection('users').doc(userId).collection('habits').doc(id).update(habit.toJson());
  }

  Future<void> deleteHabit(String id) async {
    await _firestore.collection('users').doc(userId).collection('habits').doc(id).delete();
  }
}
