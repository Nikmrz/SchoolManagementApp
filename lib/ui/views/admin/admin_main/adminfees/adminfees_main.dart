import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';
import 'adminfees_viewmodel.dart';
import 'widgets/fee_summary_card.dart';
import 'widgets/student_search_bar.dart';
import 'widgets/student_tile.dart';
import 'pages/student_fee_page.dart';

class AdminFeeView extends StatelessWidget {
  const AdminFeeView({super.key});

  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder.reactive(
      viewModelBuilder: () => AdminFeeViewModel(),
      builder: (context, model, child) {
        return Scaffold(
          body: SafeArea(
            child: Padding(
              padding: const EdgeInsets.all(16),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text("Student Fees",
                      style: TextStyle(
                          fontSize: 24,
                          fontWeight: FontWeight.bold,
                          color: Colors.redAccent)),
                  SizedBox(height: 20),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      FeeSummaryCard(
                        title: 'Total Collected',
                        amount: model.totalCollected,
                        color: Colors.green,
                      ),
                      FeeSummaryCard(
                        title: 'Remaining',
                        amount: model.totalRemaining,
                        color: Colors.redAccent,
                      ),
                    ],
                  ),
                  const SizedBox(height: 20),

                  // Search Bar
                  StudentSearchBar(onSearch: model.onSearchStudent),
                  const SizedBox(height: 12),

                  // Student List
                  Expanded(
                    child: ListView.builder(
                      itemCount: model.filteredStudents.length,
                      itemBuilder: (context, index) {
                        final student = model.filteredStudents[index];
                        return StudentTile(
                          student: student,
                          onTap: () {
                            model.setSelectedStudent(student);
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (_) =>
                                    StudentFeePage(student: student),
                              ),
                            );
                          },
                        );
                      },
                    ),
                  ),
                ],
              ),
            ),
          ),
        );
      },
    );
  }
}
