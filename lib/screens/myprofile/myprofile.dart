import 'package:flutter/material.dart';

class MyProfile extends StatelessWidget {
  const MyProfile({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Stack(
              children: [
                Column(
                  children: [
                    Container(
                      height: 100,
                      color: Colors.grey[350],
                    )
                  ],
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 45, left: 20),
                  child: CircleAvatar(
                    radius: 64,
                    backgroundColor: Colors.black,
                    child: CircleAvatar(
                      backgroundColor: Color(0xFFF5F6F9),
                      radius: 63,
                    ),
                  ),
                ),
              ],
            ),
            ProfileMenu(
              text: 'My Account',
              press: () {},
            ),
            ProfileMenu(
              text: 'Orders',
              press: () {},
            ),
            ProfileMenu(
              text: 'Notifications',
              press: () {},
            ),
            ProfileMenu(
              text: 'Register as a Partner',
              press: () {},
            ),
            ProfileMenu(
              text: 'Refer and Earn',
              press: () {},
            ),
            ProfileMenu(
              text: 'Log Out',
              press: () {},
            ),
          ],
        ),
      ),
    );
  }
}

class ProfileMenu extends StatelessWidget {
  const ProfileMenu({
    super.key,
    required this.text,
    required this.press,
  });

  final String text;
  final VoidCallback press;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
      child: TextButton(
        style: TextButton.styleFrom(
            padding: EdgeInsets.all(12),
            elevation: 2,
            backgroundColor: Color(0xFFF5F6F9)),
        child: Row(
          children: [
            Icon(
              Icons.person_2_outlined,
              size: 38.0,
              color: Colors.red,
            ),
            SizedBox(
              width: 20,
            ),
            Expanded(
                child: Text(
              text,
              style: TextStyle(color: Colors.black, fontSize: 18),
            )),
            Icon(Icons.arrow_forward_ios, color: Colors.red)
          ],
        ),
        onPressed: () {
          press;
        },
      ),
    );
  }
}
