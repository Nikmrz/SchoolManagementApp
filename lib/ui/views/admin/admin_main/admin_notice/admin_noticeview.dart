import 'package:flutter/material.dart';
import 'package:schoolmngmtapp/ui/views/admin/admin_main/admin_notice/admin_noticeviewmodel.dart';
import 'package:schoolmngmtapp/ui/views/admin/admin_main/admin_notice/widgets/notice_card.dart';
import 'package:schoolmngmtapp/ui/views/admin/admin_main/admin_notice/widgets/notice_form.dart';
import 'package:stacked/stacked.dart';

class AdminNoticeView extends StatelessWidget {
  const AdminNoticeView({super.key});

  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder.reactive(
      viewModelBuilder: () => AdminNoticeViewModel(),
      builder: (context, model, child) {
        return Scaffold(
          backgroundColor: Colors.grey[50],
          body: model.isBusy
              ? const Center(child: CircularProgressIndicator())
              : ListView(
                  padding: const EdgeInsets.all(16),
                  children: [
                    Text(
                      "Notices",
                      style: TextStyle(
                        fontSize: 24,
                        fontWeight: FontWeight.bold,
                        color: Colors.redAccent,
                      ),
                    ),
                    SizedBox(
                      height: 14,
                    ),
                    if (model.newNotices.isNotEmpty)
                      const Padding(
                        padding: EdgeInsets.only(bottom: 8),
                        child: Text(
                          "New",
                          style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ...model.newNotices.map(
                      (notice) => NoticeCard(
                        notice: notice,
                        onEdit: () => model.editNotice(context, notice),
                        onDelete: () => model.deleteNotice(notice),
                      ),
                    ),
                    const SizedBox(height: 20),
                    if (model.olderNotices.isNotEmpty)
                      const Padding(
                        padding: EdgeInsets.only(bottom: 8),
                        child: Text(
                          "Earlier",
                          style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ...model.olderNotices.map(
                      (notice) => NoticeCard(
                        notice: notice,
                        onEdit: () => model.editNotice(context, notice),
                        onDelete: () => model.deleteNotice(notice),
                      ),
                    ),
                  ],
                ),
          floatingActionButton: FloatingActionButton(
            onPressed: () => showModalBottomSheet(
              context: context,
              isScrollControlled: true,
              backgroundColor: Colors.transparent,
              builder: (context) => Padding(
                padding: EdgeInsets.only(
                    bottom: MediaQuery.of(context).viewInsets.bottom),
                child: NoticeForm(
                  onSubmit: (newNotice) => model.addNotice(newNotice),
                ),
              ),
            ),
            backgroundColor: Colors.redAccent,
            child: const Icon(Icons.add, color: Colors.white, size: 30),
          ),
        );
      },
    );
  }
}
