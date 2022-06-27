import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final rememberFlag = StateProvider((ref) => false);

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
              SizedBox(
                height: 16,
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
                        Icons.lock,
                      ),
                      hintText: "Enter your password",
                      border: InputBorder.none,
                      hintStyle: TextStyle(fontSize: 14),
                    ),
                    obscureText: true,
                  ),
                ),
              ),
              SizedBox(
                height: 16,
              ),
              Row(
                children: [
                  Consumer(builder: (context, ref, _) {
                    final check = ref.watch(rememberFlag);
                    return Checkbox(
                      value: check,
                      onChanged: (b) {
                        ref.read(rememberFlag.notifier).state = b ?? false;
                      },
                    );
                  }),
                  Text(
                    "Remember for 30 days",
                    style: TextStyle(
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  Spacer(),
                  TextButton(
                    onPressed: () {},
                    child: Text("Forgot Password?"),
                    style: TextButton.styleFrom(primary: Colors.grey),
                  )
                ],
              ),
              Container(
                decoration: BoxDecoration(
                  color: Colors.black,
                ),
                child: Row(
                  children: [
                    Text("Sign in"),
                    Icon(
                      Icons.arrow_forward,
                      color: Colors.white,
                    )
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
