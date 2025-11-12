import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';

class Notice {
  final String title;
  final String description;
  final String audience;
  final DateTime date;

  Notice({
    required this.title,
    required this.description,
    required this.audience,
    required this.date,
  });
}

class AdminNoticeViewModel extends BaseViewModel {
  final List<Notice> _notices = [
    Notice(
      title: "Holiday Notice",
      description: "School will remain closed on Bhadra 21 due to festival.",
      audience: "All",
      date: DateTime.now(),
    ),
    Notice(
      title: "Meeting Reminder",
      description: "Teachers meeting at 9 AM in staff room.",
      audience: "Teachers Only",
      date: DateTime.now().subtract(const Duration(days: 3)),
    ),
    Notice(
      title: "Meeting Reminder",
      description: "Teachers meeting at 7 AM in staff room.",
      audience: "Teachers Only",
      date: DateTime.now().subtract(const Duration(days: 5)),
    ),
  ];

  List<Notice> get newNotices => _notices
      .where((n) =>
          n.date.isAfter(DateTime.now().subtract(const Duration(days: 2))))
      .toList();

  List<Notice> get olderNotices => _notices
      .where((n) =>
          n.date.isBefore(DateTime.now().subtract(const Duration(days: 2))))
      .toList();

  void addNotice(Notice newNotice) {
    _notices.insert(0, newNotice);
    notifyListeners();
  }

  void deleteNotice(Notice notice) {
    _notices.remove(notice);
    notifyListeners();
  }

  void editNotice(BuildContext context, Notice notice) {
    TextEditingController titleCtrl = TextEditingController(text: notice.title);
    TextEditingController descCtrl =
        TextEditingController(text: notice.description);

    showDialog(
      context: context,
      builder: (_) => AlertDialog(
        title: const Text("Edit Notice"),
        content: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            TextField(
                controller: titleCtrl,
                decoration: const InputDecoration(labelText: "Title")),
            const SizedBox(height: 8),
            TextField(
                controller: descCtrl,
                decoration: const InputDecoration(labelText: "Description")),
          ],
        ),
        actions: [
          TextButton(
              onPressed: () => Navigator.pop(context),
              child: const Text("Cancel")),
          ElevatedButton(
            onPressed: () {
              final idx = _notices.indexOf(notice);
              if (idx != -1) {
                _notices[idx] = Notice(
                  title: titleCtrl.text,
                  description: descCtrl.text,
                  audience: notice.audience,
                  date: notice.date,
                );
                notifyListeners();
              }
              Navigator.pop(context);
            },
            style: ElevatedButton.styleFrom(backgroundColor: Colors.redAccent),
            child: const Text("Save"),
          ),
        ],
      ),
    );
  }
}
