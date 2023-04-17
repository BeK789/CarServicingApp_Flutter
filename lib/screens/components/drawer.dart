import 'package:flutter/material.dart';
import 'package:mecha/screens/home/homescreen.dart';
import 'package:mecha/screens/myprofile/myprofile.dart';

Widget DrawerList(
    {required IconData icon,
    required String title,
    required final VoidCallback onTap}) {
  return ListTile(
    onTap: onTap,
    leading: Icon(
      icon,
      size: 32,
    ),
    title: Text(
      title,
      style: TextStyle(color: Colors.black),
    ),
  );
}

class DrawerSide extends StatelessWidget {
  const DrawerSide({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        children: [
          DrawerHeader(
              child: Row(
            children: [
              CircleAvatar(
                backgroundColor: Colors.black,
                radius: 41,
                child: CircleAvatar(
                  radius: 40,
                  backgroundColor: Colors.red,
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text('Welcome Guest'),
                  SizedBox(
                    height: 7,
                  ),
                  Container(
                    height: 30,
                    child: OutlinedButton(
                        onPressed: () {},
                        child: Text('login',
                            style: TextStyle(
                                color: Colors.amber,
                                fontSize: 15,
                                fontStyle: FontStyle.italic)),
                        style: OutlinedButton.styleFrom(
                            shape: RoundedRectangleBorder(
                                side: BorderSide(width: 2),
                                borderRadius:
                                    BorderRadius.all(Radius.circular(10))))),
                  ),
                ],
              )
            ],
          )),
          DrawerList(
              icon: Icons.home,
              title: 'Home',
              onTap: () {
                Navigator.of(context).push(
                    MaterialPageRoute(builder: (context) => HomeScreen()));
              }),
          DrawerList(icon: Icons.shop_2, title: 'Review Cart', onTap: () {}),
          DrawerList(
              icon: Icons.person_2_outlined,
              title: 'My Profile',
              onTap: () {
                Navigator.of(context)
                    .push(MaterialPageRoute(builder: (context) => MyProfile()));
              }),
          DrawerList(
              icon: Icons.notification_add_outlined,
              title: 'Notification',
              onTap: () {}),
          DrawerList(
              icon: Icons.favorite_border_outlined,
              title: 'Wishlist',
              onTap: () {}),
          DrawerList(
              icon: Icons.copy_outlined,
              title: 'Raise a Complaint',
              onTap: () {}),
          DrawerList(
              icon: Icons.format_quote_outlined, title: 'FAQ', onTap: () {}),
          SizedBox(
            height: 30,
          ),
          Container(
            height: 200,
            padding: EdgeInsets.symmetric(horizontal: 20),
            child:
                Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
              Text('Contact Support'),
              SizedBox(
                height: 10,
              ),
              Text('Contact us   +919082XXXX82'),
              SizedBox(
                height: 10,
              ),
              Text('Mail us   JDMisW@zoho.com')
            ]),
          )
        ],
      ),
    );
  }
}
