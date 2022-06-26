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
              SizedBox(
                height: 120,
              ),
              Text(
                "Login",
                style: TextStyle(
                  fontSize: 28,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(
                height: 16,
              ),
              Text(
                "Welcome back!",
                style: TextStyle(
                  color: Colors.grey,
                ),
              ),
              SizedBox(
                height: 4,
              ),
              Text(
                "Please enter your details",
                style: TextStyle(
                  color: Colors.grey,
                ),
              ),
              SizedBox(
                height: 48,
              ),
              Text(
                "Email",
                style: TextStyle(
                  color: Colors.grey,
                  fontSize: 13,
                ),
              ),
              SizedBox(
                height: 4,
              ),
              SizedBox(
                height: 34,
                child: Container(
                  decoration: BoxDecoration(
                    border: Border.all(
                      color: Colors.grey,
                    ),
                  ),
                  padding: EdgeInsets.symmetric(horizontal: 8),
                  child: TextField(
                    decoration: InputDecoration(
                        icon: Icon(
                          Icons.account_circle_outlined,
                        ),
                        hintText: "Enter your email",
                        border: InputBorder.none,
                        hintStyle: TextStyle(fontSize: 14)),
                  ),
                ),
              ),
              Text(
                "Password",
                style: TextStyle(
                  color: Colors.grey,
                  fontSize: 13,
                ),
              ),
              SizedBox(
                height: 4,
              ),
              SizedBox(
                height: 34,
                child: Container(
                  decoration: BoxDecoration(
                    border: Border.all(
                      color: Colors.grey,
                    ),
                  ),
                  padding: EdgeInsets.symmetric(horizontal: 8),
                  child: TextField(
                    decoration: InputDecoration(
                      icon: Icon(
                        Icons.account_circle_outlined,
                      ),
                      hintText: "Enter your email",
                      border: InputBorder.none,
                      hintStyle: TextStyle(fontSize: 14),
                    ),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
