import 'package:flutter/material.dart';
import 'package:schoolmngmtapp/ui/views/parent/parent_loginviewmodel.dart';
import 'package:stacked/stacked.dart';

class ParentLoginview extends StatelessWidget {
  const ParentLoginview({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder.reactive(
      viewModelBuilder: () => ParentLoginviewmodel(),
      builder: (
        BuildContext context,
        ParentLoginviewmodel model,
        Widget? child,
      ) {
        return Scaffold(
          appBar: AppBar(
            leading: IconButton(
              icon: const Icon(Icons.arrow_back),
              onPressed: () => Navigator.of(context).pop(),
            ),
            elevation: 0,
            backgroundColor: Colors.transparent,
            foregroundColor: Colors.black,
          ),
          body: SafeArea(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 24),
              child: Column(
                children: [
                  const Spacer(),

                  // --- Heading ---
                  const Align(
                    alignment: Alignment.centerLeft,
                    child: Text(
                      "Hello",
                      style: TextStyle(
                        fontFamily: 'InstrumentSans',
                        fontSize: 48,
                        color: Colors.lightGreen,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  const Align(
                    alignment: Alignment.centerLeft,
                    child: Text(
                      "Dear Parents !",
                      style: TextStyle(
                        fontFamily: 'InstrumentSans',
                        fontSize: 36,
                        color: Colors.lightGreen,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),

                  const SizedBox(height: 20),

                  const Align(
                    alignment: Alignment.centerLeft,
                    child: Text(
                      "Please enter the required information below",
                      style: TextStyle(
                        fontSize: 16,
                        color: Colors.grey,
                      ),
                    ),
                  ),

                  const SizedBox(height: 40),

                  TextField(
                    decoration: InputDecoration(
                      prefixIcon: const Icon(Icons.email_outlined),
                      labelText: "Email",
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(8),
                      ),
                    ),
                  ),

                  const SizedBox(height: 20),

                  TextField(
                    obscureText: true,
                    decoration: InputDecoration(
                      prefixIcon: const Icon(Icons.lock_outline),
                      labelText: "Password",
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(8),
                      ),
                    ),
                  ),

                  const SizedBox(height: 10),

                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        children: [
                          Checkbox(
                            value: model.rememberMe,
                            onChanged: model.toggleRememberMe,
                          ),
                          const Text("Remember me"),
                        ],
                      ),
                      TextButton(
                        onPressed: model.onForgotPassword,
                        child: const Text(
                          "Forgot Password?",
                          style: TextStyle(
                            color: Colors.lightGreen,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                      ),
                    ],
                  ),

                  const SizedBox(height: 30),

                  SizedBox(
                    width: double.infinity,
                    child: ElevatedButton(
                      onPressed: model.onContinuePressed,
                      style: ElevatedButton.styleFrom(
                        foregroundColor: Colors.white70,
                        backgroundColor: const Color.fromARGB(255, 4, 246, 93),
                        padding: const EdgeInsets.symmetric(vertical: 20),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(8),
                        ),
                      ),
                      child: const Text(
                        "Continue",
                        style: TextStyle(fontSize: 18, color: Colors.white),
                      ),
                    ),
                  ),

                  const SizedBox(height: 20),

                  // --- Register link ---
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const Text(
                        "New to our app? ",
                        style: TextStyle(color: Colors.grey),
                      ),
                      GestureDetector(
                        onTap: model.navigateToRegister,
                        child: const Text(
                          "Register here",
                          style: TextStyle(
                            color: Colors.lightGreen,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ],
                  ),

                  const SizedBox(height: 40),
                ],
              ),
            ),
          ),
        );
      },
    );
  }
}
