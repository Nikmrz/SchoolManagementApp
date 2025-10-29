import 'package:flutter/material.dart';

class ActivityFeedTile extends StatelessWidget {
  final String title;
  final String time;

  const ActivityFeedTile({
    super.key,
    required this.title,
    required this.time,
  });

  @override
  Widget build(BuildContext context) {
    return ListTile(
      contentPadding: const EdgeInsets.symmetric(horizontal: 8),
      leading: const Icon(Icons.circle, color: Colors.blue, size: 12),
      title: Text(title,
          style: const TextStyle(fontSize: 14, fontWeight: FontWeight.w500)),
      subtitle:
          Text(time, style: const TextStyle(fontSize: 12, color: Colors.grey)),
    );
  }
}
