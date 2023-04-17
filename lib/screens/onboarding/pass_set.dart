import 'package:flutter/material.dart';
import '../../widgets/my_button.dart';
import 'package:mecha/screens/signin/signin.dart';

class PassSet extends StatefulWidget {
  const PassSet({super.key});

  @override
  State<PassSet> createState() => _PassSetState();
}

class _PassSetState extends State<PassSet> {
  void done() {
    Navigator.push(context, MaterialPageRoute(builder: (_) => SignIn()));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        body: SafeArea(
          child: Column(
            children: [
              SizedBox(
                height: 180,
              ),
              Text('image'),
              SizedBox(
                height: 110,
              ),
              Text(
                'Your Password Has been Set!',
                style: TextStyle(
                    color: Colors.red,
                    fontSize: 20,
                    fontWeight: FontWeight.bold),
              ),
              SizedBox(
                height: 30,
              ),
              MyButton(
                onTap: done,
                text: 'DONE',
              ),
              SizedBox(
                height: 20,
              ),
            ],
          ),
        ));
  }
}
