import 'package:flutter/material.dart';
import 'package:mecha/screens/onboarding/new_pass.dart';
import '../../widgets/my_button.dart';
import 'package:mecha/screens/signup/signup.dart';

class ForgotPass extends StatefulWidget {
  const ForgotPass({super.key});

  @override
  State<ForgotPass> createState() => _ForgotPassState();
}

class _ForgotPassState extends State<ForgotPass> {
  final usernameCntroller = TextEditingController();
  void send() {
    Navigator.push(context, MaterialPageRoute(builder: (_) => NewPass()));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        body: SafeArea(
          child: Column(
            children: [
              SizedBox(
                height: 20,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 25),
                child: Column(
                  children: [
                    Text(
                      'Forgot Password',
                      style:
                          TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Text(
                  'Please enter your Email Address, you will recieve a link to create a new password via Email'),
              SizedBox(
                height: 30,
              ),
              MyTextField(
                controller: usernameCntroller,
                hintText: 'Email',
                obscureText: false,
              ),
              SizedBox(
                height: 30,
              ),
              MyButton(
                onTap: send,
                text: 'Send',
              ),
              SizedBox(
                height: 20,
              ),
            ],
          ),
        ));
  }
}

class MyTextField extends StatelessWidget {
  final controller;
  final String hintText;
  final bool obscureText;

  const MyTextField({
    super.key,
    required this.controller,
    required this.hintText,
    required this.obscureText,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 25),
      child: TextField(
        controller: controller,
        obscureText: obscureText,
        decoration: InputDecoration(
            enabledBorder: OutlineInputBorder(
                borderSide: BorderSide(color: Colors.black),
                borderRadius: BorderRadius.circular(50)),
            fillColor: Colors.white,
            filled: true,
            hintText: hintText),
      ),
    );
  }
}
