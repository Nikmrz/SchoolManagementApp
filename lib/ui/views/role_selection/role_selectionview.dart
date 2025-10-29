import 'package:flutter/material.dart';
import 'package:schoolmngmtapp/ui/views/role_selection/role_selectionviewmodel.dart';
import 'package:stacked/stacked.dart';

class RoleSelectionView extends StatelessWidget {
  const RoleSelectionView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder.reactive(
      viewModelBuilder: () => RoleSelectionViewModel(),
      builder: (
        context,
        model,
        child,
      ) {
        return Scaffold(
          body: Center(
            child: SafeArea(
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 24.0),
                child: Column(
                  children: [
                    const SizedBox(height: 100),

                    // Heading
                    const Text(
                      "Please select your role",
                      style: TextStyle(
                        fontSize: 28,
                        fontWeight: FontWeight.bold,
                      ),
                      textAlign: TextAlign.center,
                    ),

                    const SizedBox(height: 12),

                    // Subheading
                    const Text(
                      "Choose the role that matches you to continue in the app",
                      style: TextStyle(
                        fontSize: 16,
                        color: Colors.grey,
                      ),
                      textAlign: TextAlign.center,
                    ),

                    Expanded(
                      child: Center(
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            SizedBox(
                              width: MediaQuery.of(context).size.width * 0.5,
                              child: ElevatedButton(
                                onPressed: () {
                                  model.onadminpressed();
                                },
                                child: Text('Admin'),
                                style: ElevatedButton.styleFrom(
                                    backgroundColor:
                                        const Color.fromARGB(255, 215, 124, 5),
                                    foregroundColor: Colors.white,
                                    padding: EdgeInsets.symmetric(vertical: 34),
                                    shape: RoundedRectangleBorder(
                                        borderRadius:
                                            BorderRadius.circular(28))),
                              ),
                            ),
                            SizedBox(
                              height: 20,
                            ),
                            SizedBox(
                              width: MediaQuery.of(context).size.width * 0.5,
                              child: ElevatedButton(
                                onPressed: () {
                                  model.onteacherpressed();
                                },
                                child: Text('Teacher'),
                                style: ElevatedButton.styleFrom(
                                    backgroundColor:
                                        const Color.fromARGB(255, 22, 1, 254),
                                    foregroundColor: Colors.white,
                                    padding: EdgeInsets.symmetric(vertical: 34),
                                    shape: RoundedRectangleBorder(
                                        borderRadius:
                                            BorderRadius.circular(28))),
                              ),
                            ),
                            SizedBox(
                              height: 20,
                            ),
                            SizedBox(
                              width: MediaQuery.of(context).size.width * 0.5,
                              child: ElevatedButton(
                                onPressed: () {
                                  model.onparentpressed();
                                },
                                child: Text('Parent'),
                                style: ElevatedButton.styleFrom(
                                    backgroundColor:
                                        const Color.fromARGB(255, 1, 151, 48),
                                    foregroundColor: Colors.white,
                                    padding: EdgeInsets.symmetric(vertical: 34),
                                    shape: RoundedRectangleBorder(
                                        borderRadius:
                                            BorderRadius.circular(28))),
                              ),
                            )
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        );
      },
    );
  }
}
