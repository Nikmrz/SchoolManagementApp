import 'package:flutter/material.dart';

class Notice {
  final String title;
  final String content;
  final DateTime date;
  final bool isNew;

  Notice({
    required this.title,
    required this.content,
    required this.date,
    this.isNew = true,
  });
}

class NoticeViewModel extends ChangeNotifier {
  final List<Notice> _notices = [
    Notice(
      title: "School Closed Tomorrow",
      content: "Due to bad weather, classes will remain closed tomorrow.",
      date: DateTime.now(),
      isNew: true,
    ),
    Notice(
      title: "Parent Teacher Meeting",
      content: "PTM scheduled for Friday, 10 AM at the school hall.",
      date: DateTime.now().subtract(const Duration(days: 1)),
      isNew: false,
    ),
    Notice(
      title: "New Exam Schedule Released",
      content: "Midterm exam timetable has been updated on the portal.",
      date: DateTime.now().subtract(const Duration(days: 3)),
      isNew: false,
    ),
  ];

  List<Notice> get newNotices => _notices.where((n) => n.isNew).toList();
  List<Notice> get oldNotices => _notices.where((n) => !n.isNew).toList();
}
