import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:mecha/screens/home/homescreen.dart';
import 'package:mecha/screens/main_page.dart';
import 'package:mecha/screens/onboarding/phone_verify.dart';
import 'package:mecha/screens/select_cars.dart';
import 'package:shared_preferences/shared_preferences.dart';
import '../../widgets/my_button.dart';
import 'package:mecha/screens/signup/signup.dart';
import '../../services/dioClient.dart';

class SignIn extends StatefulWidget {
  const SignIn({super.key});

  @override
  State<SignIn> createState() => _SignInState();
}

class _SignInState extends State<SignIn> {
  final dioClient = DioClient();
  TextEditingController phoneController = TextEditingController();
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();

  Future<void> singUserIn() async {
    try {
      final Response response =
          await dioClient.dio.post('/ga-auth/customerAdmins/login', data: {
        "phone": {"phone": phoneController.text},
        "email": {"email": emailController.text},
        'password': passwordController.text
      });
      // Handle the response data
      String id = response.data['id'];

      SharedPreferences prefs = await SharedPreferences.getInstance();
      await prefs.setString('id', id);

      Navigator.pushReplacement(
          context, MaterialPageRoute(builder: (context) => HomeScreen()));
    } catch (e) {
      rethrow;
    }
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
                child: Row(
                  children: [
                    Text(
                      'Sing In',
                      style:
                          TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 20,
              ),
              MyTextField(
                controller: emailController,
                hintText: 'Email',
                obscureText: false,
              ),
              SizedBox(
                height: 20,
              ),
              MyTextField(
                controller: phoneController,
                hintText: 'Phone',
                obscureText: false,
              ),
              SizedBox(
                height: 20,
              ),
              MyTextField(
                controller: passwordController,
                hintText: 'Password',
                obscureText: true,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 25),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    GestureDetector(
                      child: Text(
                        'Forgot Password?',
                        style: TextStyle(color: Colors.red),
                      ),
                      onTap: () {
                        Navigator.push(context,
                            MaterialPageRoute(builder: (_) => PhoneVerify()));
                      },
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 20,
              ),
              MyButton(
                onTap: () {
                  Navigator.pushReplacement(context,
                      MaterialPageRoute(builder: (context) => SelectCars()));
                },
                text: 'Sign In',
              ),
              SizedBox(
                height: 20,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 25),
                child: Row(
                  children: [
                    Text('Don\'t have an accoutnt?'),
                    GestureDetector(
                      child: Text(
                        'Sign Up',
                        style: TextStyle(color: Colors.red),
                      ),
                      onTap: () {
                        Navigator.push(context,
                            MaterialPageRoute(builder: (_) => Signup()));
                      },
                    )
                  ],
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Row(
                children: [
                  Text('image'),
                  SizedBox(
                    width: 30,
                  ),
                  Text('image2'),
                  SizedBox(
                    width: 30,
                  ),
                  Text('image3')
                ],
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
