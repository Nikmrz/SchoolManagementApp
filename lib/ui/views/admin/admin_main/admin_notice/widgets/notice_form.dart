import 'package:flutter/material.dart';
import 'package:schoolmngmtapp/ui/views/admin/admin_main/admin_notice/admin_noticeviewmodel.dart';

class NoticeForm extends StatefulWidget {
  final Function(Notice) onSubmit;
  const NoticeForm({super.key, required this.onSubmit});

  @override
  State<NoticeForm> createState() => _NoticeFormState();
}

class _NoticeFormState extends State<NoticeForm> {
  final _formKey = GlobalKey<FormState>();
  final TextEditingController _titleController = TextEditingController();
  final TextEditingController _descController = TextEditingController();
  String _audience = 'All';
  DateTime _selectedDate = DateTime.now();

  final List<String> _audiences = [
    'All',
    'Teachers Only',
    'Students Only',
    'Class 1',
    'Class 2',
    'Class 3',
    'Class 4',
    'Class 5',
    'Class 6',
    'Class 7',
    'Class 8',
    'Class 9',
    'Class 10',
  ];

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(20),
      decoration: const BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.vertical(top: Radius.circular(25)),
      ),
      child: SingleChildScrollView(
        child: Form(
          key: _formKey,
          child: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text(
                "Create New Notice",
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              ),
              const SizedBox(height: 16),
              TextFormField(
                controller: _titleController,
                decoration: const InputDecoration(
                  labelText: "Title",
                  border: OutlineInputBorder(),
                ),
                validator: (v) => v!.isEmpty ? "Enter a title" : null,
              ),
              const SizedBox(height: 12),
              TextFormField(
                controller: _descController,
                maxLines: 3,
                decoration: const InputDecoration(
                  labelText: "Description",
                  border: OutlineInputBorder(),
                ),
                validator: (v) => v!.isEmpty ? "Enter description" : null,
              ),
              const SizedBox(height: 12),
              DropdownButtonFormField<String>(
                value: _audience,
                items: _audiences
                    .map((a) => DropdownMenuItem(value: a, child: Text(a)))
                    .toList(),
                decoration: const InputDecoration(
                  labelText: "Audience",
                  border: OutlineInputBorder(),
                ),
                onChanged: (val) => setState(() => _audience = val!),
              ),
              const SizedBox(height: 16),
              SizedBox(
                width: double.infinity,
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.redAccent,
                    padding: const EdgeInsets.symmetric(vertical: 14),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(12),
                    ),
                  ),
                  onPressed: () {
                    if (_formKey.currentState!.validate()) {
                      widget.onSubmit(
                        Notice(
                          title: _titleController.text,
                          description: _descController.text,
                          audience: _audience,
                          date: _selectedDate,
                        ),
                      );
                      Navigator.pop(context);
                    }
                  },
                  child: const Text(
                    "Publish Notice",
                    style: TextStyle(fontSize: 16, color: Colors.white),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
