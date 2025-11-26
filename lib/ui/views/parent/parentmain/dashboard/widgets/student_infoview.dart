import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:schoolmngmtapp/ui/views/parent/parentmain/dashboard/dashboard_viewmodel.dart';

class StudentCard extends StatelessWidget {
  final Student student;
  const StudentCard({required this.student, super.key});

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(18),
      child: BackdropFilter(
        filter: ImageFilter.blur(sigmaX: 10, sigmaY: 10),
        child: Container(
          width: 120,
          margin: const EdgeInsets.only(right: 14),
          padding: const EdgeInsets.all(14),
          decoration: BoxDecoration(
            gradient: LinearGradient(
              colors: [
                Color(0xFF62E884),
                Color(0xFF17BD52),
              ],
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
            ),
            borderRadius: BorderRadius.circular(18),
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              CircleAvatar(
                radius: 30,
                backgroundColor: Colors.white.withOpacity(0.3),
                backgroundImage: NetworkImage(student.avatarUrl),
              ),
              const SizedBox(height: 10),
              Text(
                student.name,
                style: const TextStyle(
                  fontWeight: FontWeight.w700,
                  fontSize: 15,
                  color: Color.fromARGB(255, 255, 255, 255),
                ),
                textAlign: TextAlign.center,
              ),
              const SizedBox(height: 4),
              Text(
                "${student.roll} | ${student.studentClass}",
                style: TextStyle(
                  fontSize: 12,
                  color:
                      const Color.fromARGB(255, 255, 255, 255).withOpacity(0.9),
                ),
                textAlign: TextAlign.center,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
