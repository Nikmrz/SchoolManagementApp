import 'package:flutter/material.dart';

class AttendStudentList extends StatelessWidget {
  const AttendStudentList({super.key});

  @override
  Widget build(BuildContext context) {
    List students = [
      {'roll': 1, 'name': 'Akash Gupta', 'present': true},
      {'roll': 2, 'name': 'Brijesh Gupta', 'present': false},
      {'roll': 3, 'name': 'Daniel Walter', 'present': true},
      {'roll': 4, 'name': 'Emma Watson', 'present': true},
      {'roll': 5, 'name': 'Fiona Smith', 'present': false},
      {'roll': 6, 'name': 'George Brown', 'present': true},
      {'roll': 7, 'name': 'Hannah Davis', 'present': true},
      {'roll': 8, 'name': 'Ian Clark', 'present': false},
      {'roll': 9, 'name': 'Jasmine Lee', 'present': true},
      {'roll': 10, 'name': 'Kevin White', 'present': true},
      {'roll': 11, 'name': 'Liam Johnson', 'present': false},
      {'roll': 12, 'name': 'Mia Martinez', 'present': true},
      {'roll': 13, 'name': 'Noah Garcia', 'present': true},
      {'roll': 14, 'name': 'Olivia Rodriguez', 'present': false},
      {'roll': 15, 'name': 'Paul Wilson', 'present': true},
    ];

    return ListView.separated(
      itemCount: students.length,
      separatorBuilder: (_, __) => Divider(height: 18),
      itemBuilder: (context, index) {
        var s = students[index];
        return Row(
          children: [
            SizedBox(
              width: 50,
              child: Text(s['roll'].toString(),
                  style: TextStyle(fontWeight: FontWeight.w500)),
            ),
            Expanded(
              child: Text(s['name'], style: TextStyle(fontSize: 15)),
            ),
            Container(
              padding: EdgeInsets.symmetric(horizontal: 12, vertical: 4),
              decoration: BoxDecoration(
                color:
                    s['present'] ? Colors.green.shade100 : Colors.red.shade100,
                borderRadius: BorderRadius.circular(20),
              ),
              child: Text(
                s['present'] ? "Present" : "Absent",
                style: TextStyle(
                  fontSize: 12,
                  color: s['present'] ? Colors.green : Colors.red,
                  fontWeight: FontWeight.w600,
                ),
              ),
            ),
            Switch(
              activeColor: Colors.green,
              value: s['present'],
              onChanged: (val) {},
            )
          ],
        );
      },
    );
  }
}
