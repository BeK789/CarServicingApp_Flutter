import 'package:flutter/material.dart';
import 'package:mecha/screens/onboarding/forgot_pass.dart';
import 'package:mecha/screens/onboarding/otp_screen.dart';
import '../../widgets/my_button.dart';
import 'package:mecha/screens/signup/signup.dart';

class PhoneVerify extends StatefulWidget {
  const PhoneVerify({super.key});

  @override
  State<PhoneVerify> createState() => _PhoneVerifyState();
}

class _PhoneVerifyState extends State<PhoneVerify> {
  final usernameCntroller = TextEditingController();
  void confirm() {
    Navigator.push(context, MaterialPageRoute(builder: (_) => ForgotPass()));
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
                      'Verify you phone number',
                      style:
                          TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Text('We have sent you an SMS with a code to number '),
              SizedBox(
                height: 30,
              ),
              MyTextField(
                controller: usernameCntroller,
                hintText: 'Phone Number',
                obscureText: false,
              ),
              SizedBox(
                height: 30,
              ),
              MyButton(
                onTap: confirm,
                text: 'CONFIRM',
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
