import 'package:flutter/material.dart';

class AssignmentTile extends StatelessWidget {
  final Map data;

  const AssignmentTile({Key? key, required this.data}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(bottom: 12),
      padding: const EdgeInsets.all(14),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(12),
        border: Border.all(color: Colors.grey.shade300),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            data["subject"],
            style: const TextStyle(fontWeight: FontWeight.w700, fontSize: 15),
          ),
          const SizedBox(height: 6),
          Text(
            data["task"],
            style: const TextStyle(fontSize: 14, height: 1.4),
          ),
          if (data["attachment"])
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: const [
                Icon(Icons.attach_file, size: 18),
                Text("Attachment", style: TextStyle(fontSize: 12))
              ],
            )
        ],
      ),
    );
  }
}
