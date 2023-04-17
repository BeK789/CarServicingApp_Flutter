import 'package:flutter/material.dart';
import 'package:mecha/screens/components/appbar.dart';

import 'accesories/accesories_screen.dart';
import 'help.dart';
import 'home/homescreen.dart';
import 'myprofile/myprofile.dart';
import 'sos_page.dart';

class MainPage extends StatefulWidget {
  const MainPage({super.key});

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  List pages = [
    HomeScreen(),
    HelpPage(),
    SosPage(),
    AccesoriesScreen(),
    MyProfile(),
  ];

  int navBarIndex = 0;

  void onTap(int index) {
    setState(() {
      navBarIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: CustomAppBar(),
        body: pages[navBarIndex],
        bottomNavigationBar: BottomNavigationBar(
            elevation: 0,
            // type: BottomNavigationBarType.fixed,
            unselectedIconTheme: IconThemeData(
              color: Color.fromARGB(255, 216, 208, 208),
            ),
            unselectedItemColor: Color.fromARGB(255, 216, 208, 208),
            showUnselectedLabels: true,
            currentIndex: navBarIndex,
            items: [
              BottomNavigationBarItem(
                  icon: Icon(Icons.home),
                  backgroundColor: Colors.red,
                  label: 'Home'),
              BottomNavigationBarItem(
                  icon: Icon(Icons.question_mark_outlined),
                  backgroundColor: Colors.red,
                  label: 'Help'),
              BottomNavigationBarItem(
                  icon: Icon(Icons.person_4_rounded),
                  backgroundColor: Colors.red,
                  label: 'SOS'),
              BottomNavigationBarItem(
                  icon: Icon(Icons.notification_important_outlined),
                  backgroundColor: Colors.red,
                  label: 'Accessories'),
              BottomNavigationBarItem(
                  icon: Icon(Icons.person_2_outlined),
                  backgroundColor: Colors.red,
                  label: 'Account'),
            ],
            onTap: onTap));
  }
}
