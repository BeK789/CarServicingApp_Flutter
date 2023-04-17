import 'package:flutter/material.dart';
import 'package:mecha/screens/onboarding/pass_set.dart';
import '../../widgets/my_button.dart';
import 'package:mecha/screens/signup/signup.dart';

class NewPass extends StatefulWidget {
  const NewPass({super.key});

  @override
  State<NewPass> createState() => _NewPassState();
}

class _NewPassState extends State<NewPass> {
  final usernameCntroller = TextEditingController();
  void change() {
    Navigator.push(context, MaterialPageRoute(builder: (_) => PassSet()));
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
              SizedBox(
                height: 20,
              ),
              Text('Enter new password and confirm! '),
              SizedBox(
                height: 30,
              ),
              MyTextField(
                controller: usernameCntroller,
                hintText: 'NEW PASSWORD',
                obscureText: true,
              ),
              SizedBox(
                height: 30,
              ),
              MyTextField(
                controller: usernameCntroller,
                hintText: 'CONFIRM PASSWORD',
                obscureText: true,
              ),
              SizedBox(
                height: 30,
              ),
              MyButton(
                onTap: change,
                text: 'CHANGE PASSWORD',
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
      padding: const EdgeInsets.symmetric(horizontal: 20),
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
