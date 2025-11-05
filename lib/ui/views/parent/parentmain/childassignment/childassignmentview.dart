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
          backgroundColor: Colors.white,
          appBar: AppBar(
            elevation: 0,
            backgroundColor: Colors.white,
            title: const Text(
              "Homework Diary",
              style:
                  TextStyle(color: Colors.black, fontWeight: FontWeight.w600),
            ),
            centerTitle: true,
          ),
          body: Padding(
            padding: const EdgeInsets.all(16),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
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
