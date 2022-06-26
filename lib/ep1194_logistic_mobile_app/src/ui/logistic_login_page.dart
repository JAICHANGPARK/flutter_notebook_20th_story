import 'package:flutter/material.dart';

class LogisticLoginPage extends StatelessWidget {
  const LogisticLoginPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Login",
                style: TextStyle(
                  fontSize: 20,
                ),
              ),
              SizedBox(
                height: 16,
              ),
              Text("Welcome back!"),
              SizedBox(
                height: 4,
              ),
              Text("Please enter your details"),
            ],
          ),
        ),
      ),
    );
  }
}
