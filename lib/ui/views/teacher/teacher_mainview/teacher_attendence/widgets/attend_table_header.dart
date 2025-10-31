import 'package:flutter/material.dart';

class AttendTableHeader extends StatelessWidget {
  const AttendTableHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 8),
      decoration: BoxDecoration(
        color: Color(0xffE3F2FD), // light teacher theme blue
        borderRadius: BorderRadius.circular(8),
      ),
      child: Row(
        children: const [
          SizedBox(
              width: 50,
              child:
                  Text("Roll", style: TextStyle(fontWeight: FontWeight.bold))),
          Expanded(
              child:
                  Text("Name", style: TextStyle(fontWeight: FontWeight.bold))),
          SizedBox(
              width: 90,
              child: Text("Status",
                  style: TextStyle(fontWeight: FontWeight.bold))),
        ],
      ),
    );
  }
}
