import 'package:flutter/material.dart';
import 'package:schoolmngmtapp/ui/views/parent/parentmain/childassignment/childassignmentviewmodel.dart';
import 'package:schoolmngmtapp/ui/views/parent/parentmain/childassignment/widgets/assignment_list.dart';
import 'package:schoolmngmtapp/ui/views/parent/parentmain/childassignment/widgets/child_selector.dart';
import 'package:stacked/stacked.dart';

class Childassignmentview extends StatelessWidget {
  const Childassignmentview({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder.reactive(
      viewModelBuilder: () => ChildassignmentviewModel(),
      builder: (context, model, child) {
        return Scaffold(
          body: Padding(
            padding: const EdgeInsets.all(16),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "ASSIGNMENTS",
                  style: TextStyle(
                    fontSize: 28,
                    fontWeight: FontWeight.bold,
                    color: const Color.fromARGB(255, 51, 244, 2),
                  ),
                ),
                SizedBox(
                  height: 16,
                ),
                // Child selector
                ChildSelector(
                  children: model.children,
                  selectedChild: model.selectedChildId,
                  onChildTap: model.onChildSelected,
                ),

                const SizedBox(height: 16),

                Text(
                  "Today — ${model.todayDateString}",
                  style: const TextStyle(
                      fontSize: 16, fontWeight: FontWeight.w600),
                ),

                const SizedBox(height: 12),

                Expanded(
                  child: AssignmentList(assignments: model.todayAssignments),
                )
              ],
            ),
          ),
        );
      },
    );
  }
}
