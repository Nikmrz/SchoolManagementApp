import 'package:flutter/material.dart';

class NoHomeworkMessage extends StatelessWidget {
  const NoHomeworkMessage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Center(
      child: Text(
        "🎉 No homework for today!",
        style: TextStyle(fontSize: 16, fontWeight: FontWeight.w500),
      ),
    );
  }
}
