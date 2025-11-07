import 'package:flutter/material.dart';
import '../teacher_assignment_viewmodel.dart';

class AssignmentForm extends StatelessWidget {
  final TeacherAssignmentViewModel viewModel;
  const AssignmentForm({super.key, required this.viewModel});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Text(
          "Create New Assignment",
          style: TextStyle(
            fontSize: 22,
            fontWeight: FontWeight.bold,
            color: Colors.blueAccent,
          ),
        ),
        const SizedBox(height: 16),
        _buildDropdown(
          label: "Select Class",
          value: viewModel.selectedClass,
          items: viewModel.assignedClasses,
          onChanged: viewModel.selectClass,
        ),
        _buildDropdown(
          label: "Select Subject",
          value: viewModel.selectedSubject,
          items: viewModel.assignedSubjects,
          onChanged: viewModel.selectSubject,
        ),
        const SizedBox(height: 12),
        TextField(
          controller: viewModel.titleController,
          decoration: const InputDecoration(
            labelText: "Title",
            border: OutlineInputBorder(),
          ),
        ),
        const SizedBox(height: 12),
        TextField(
          controller: viewModel.descriptionController,
          maxLines: 4,
          decoration: const InputDecoration(
            labelText: "Description",
            border: OutlineInputBorder(),
          ),
        ),
        const SizedBox(height: 12),
        Row(
          children: [
            Expanded(
              child: Text(
                "Due Date: ${viewModel.selectedDueDate.toLocal().toString().split(' ')[0]}",
                style: const TextStyle(fontSize: 16),
              ),
            ),
            TextButton(
              onPressed: () => viewModel.selectDueDate(context),
              child: const Text("Select Date"),
            ),
          ],
        ),
        const SizedBox(height: 20),
        Center(
          child: ElevatedButton.icon(
            style: ElevatedButton.styleFrom(
              backgroundColor: Colors.blue.shade600,
              padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 14),
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(12)),
            ),
            onPressed: viewModel.submitAssignment,
            icon: const Icon(Icons.send),
            label: const Text(
              "Send Assignment",
              style: TextStyle(fontSize: 16, color: Colors.white),
            ),
          ),
        ),
      ],
    );
  }

  Widget _buildDropdown({
    required String label,
    required String? value,
    required List<String> items,
    required Function(String?) onChanged,
  }) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 12),
      child: DropdownButtonFormField<String>(
        value: value,
        decoration: InputDecoration(
          labelText: label,
          border: const OutlineInputBorder(),
        ),
        items: items
            .map((item) => DropdownMenuItem(value: item, child: Text(item)))
            .toList(),
        onChanged: onChanged,
      ),
    );
  }
}
