import 'package:stacked/stacked.dart';

class ChildassignmentviewModel extends BaseViewModel {
  // Dummy children TEMP
  final List<Map<String, dynamic>> children = [
    {
      "id": 1,
      "name": "Rohan",
      "avatar": "https://i.pravatar.cc/300?img=5",
    },
    {
      "id": 2,
      "name": "Sita",
      "avatar": "https://i.pravatar.cc/300?img=47",
    }
  ];

  int selectedChildId = 1;

  List<Map<String, dynamic>> todayAssignments = [];

  String get todayDateString => "Jan 05, 2025";

  ChildassignmentviewModel() {
    loadAssignments();
  }

  void onChildSelected(int id) {
    selectedChildId = id;
    loadAssignments();
    notifyListeners();
  }

  void loadAssignments() {
    // Dummy data
    if (selectedChildId == 1) {
      todayAssignments = [
        {
          "subject": "Math",
          "task": "Practice page 21-23\nCopy twice in notebook.",
          "attachment": true
        },
        {
          "subject": "English",
          "task": "Write 10 sentences about your Family.",
          "attachment": false
        },
      ];
    } else {
      todayAssignments = [
        {
          "subject": "Science",
          "task": "Revise Chapter 2 for oral quiz.",
          "attachment": false
        }
      ];
    }
  }
}
