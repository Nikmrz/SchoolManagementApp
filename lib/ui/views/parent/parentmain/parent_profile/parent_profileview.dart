import 'package:flutter/material.dart';
import 'package:schoolmngmtapp/ui/views/parent/parentmain/parent_profile/parent_profileviewmodel.dart';
import 'package:stacked/stacked.dart';

class ParentProfileview extends StatelessWidget {
  const ParentProfileview({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder.reactive(
      viewModelBuilder: () => ParentProfileviewModel(),
      builder: (
        BuildContext context,
        ParentProfileviewModel model,
        Widget? child,
      ) {
        return Scaffold(
          body: Center(
            child: Text(
              'ParentProfileview',
            ),
          ),
        );
      },
    );
  }
}
