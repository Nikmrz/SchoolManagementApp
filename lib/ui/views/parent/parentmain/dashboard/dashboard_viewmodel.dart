import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';

class Student {
  final String name;
  final String roll;
  final String studentClass;
  final String avatarUrl;

  Student(
      {required this.name,
      required this.roll,
      required this.studentClass,
      required this.avatarUrl});
}

class Service {
  final IconData icon;
  final String label;

  Service({required this.icon, required this.label});
}

class DashboardViewModel extends BaseViewModel {
  final List<Student> students = [
    Student(
        name: "Sita Rai",
        roll: "01",
        studentClass: "5A",
        avatarUrl: "https://i.pravatar.cc/150?img=3"),
    Student(
        name: "Ram Rai",
        roll: "02",
        studentClass: "3B",
        avatarUrl: "https://i.pravatar.cc/150?img=5"),
  ];

  final List<Service> services = [
    Service(icon: Icons.calendar_today, label: "Attendance"),
    Service(icon: Icons.payment, label: "Fees"),
    Service(icon: Icons.notifications, label: "Notices"),
    Service(icon: Icons.edit, label: "Exam"),
    Service(icon: Icons.school, label: "Results"),
    Service(icon: Icons.directions_bus, label: "Bus Routes"),
    Service(icon: Icons.person, label: "Teacher"),
    Service(icon: Icons.book, label: "Diary"),
    Service(icon: Icons.report_problem, label: "Complaints"),
  ];

  void onAddStudent() {
    // Implement add student functionality
  }

  void onServiceSelected(String serviceLabel) {
    // Navigate or show service details
    debugPrint("Selected: $serviceLabel");
  }
}
