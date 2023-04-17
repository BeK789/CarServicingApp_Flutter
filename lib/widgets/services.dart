import 'package:flutter/material.dart';
import 'package:mecha/screens/accesories/accesories_screen.dart';
import 'package:mecha/screens/signin/signin.dart';

import '../screens/home/homescreen.dart';

class serviceTile extends StatelessWidget {
  String text;
  serviceTile({super.key, required this.text});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
            context, MaterialPageRoute(builder: (_) => AccesoriesScreen()));
      },
      child: Container(
        height: 100.0,
        width: 120.0,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10.0),
          border: Border.all(
            color: Colors.grey,
            width: 2.0,
          ),
        ),
        child: Column(
          children: [
            Container(
              height: 60,
              decoration: BoxDecoration(color: Colors.white),
              child: Icon(
                Icons.car_repair,
                color: Colors.grey,
              ),
            ),
            Container(
              alignment: Alignment.center,
              height: 30,
              decoration: BoxDecoration(color: Colors.white),
              child: Text(
                text,
                style: TextStyle(fontSize: 12, fontWeight: FontWeight.w600),
              ),
            )
          ],
        ),
      ),
    );
  }
}
