import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';
import 'notice_viewmodel.dart';
import 'widgets/notice_tile.dart';

class NoticeView extends StatelessWidget {
  const NoticeView({super.key});

  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder.reactive(
      viewModelBuilder: () => NoticeViewModel(),
      builder: (context, model, child) {
        return Scaffold(
          body: ListView(
            padding: const EdgeInsets.symmetric(vertical: 10),
            children: [
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 16, vertical: 8),
                child: Text('NOTICES',
                    style: TextStyle(
                        fontSize: 28,
                        fontWeight: FontWeight.bold,
                        color: const Color.fromARGB(255, 0, 227, 106))),
              ),
              if (model.newNotices.isNotEmpty)
                const Padding(
                  padding: EdgeInsets.symmetric(horizontal: 16, vertical: 8),
                  child: Text("New",
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 18)),
                ),
              ...model.newNotices.map((n) => NoticeTile(notice: n)),
              if (model.oldNotices.isNotEmpty)
                const Padding(
                  padding: EdgeInsets.symmetric(horizontal: 16, vertical: 8),
                  child: Text("Earlier",
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 18)),
                ),
              ...model.oldNotices.map((n) => NoticeTile(notice: n)),
            ],
          ),
        );
      },
    );
  }
}
