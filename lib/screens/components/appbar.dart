import 'package:flutter/material.dart';

class CustomAppBar extends StatelessWidget implements PreferredSizeWidget {
  const CustomAppBar({
    super.key,
  });

  @override
  Size get preferredSize => Size.fromHeight(AppBar().preferredSize.height);
  Widget build(BuildContext context) {
    return AppBar(
      elevation: 0,
      toolbarHeight: 100,
      backgroundColor: Color.fromARGB(255, 242, 83, 72),
      iconTheme: IconThemeData(color: Colors.white),
      title: Text(
        'TougeKnights',
        style: TextStyle(color: Colors.white, fontSize: 17),
      ),
      actions: [
        CircleAvatar(
          backgroundColor: Color.fromARGB(255, 199, 59, 49),
          radius: 12,
          child: Icon(
            Icons.search,
            size: 17,
            color: Colors.white,
          ),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 8),
          child: CircleAvatar(
            backgroundColor: Color.fromARGB(255, 199, 59, 49),
            radius: 12,
            child: Icon(
              Icons.shop,
              size: 17,
              color: Colors.white,
            ),
          ),
        )
      ],
      // bottom: PreferredSize(
      //   child: Padding(
      //     padding: const EdgeInsets.all(15.0),
      //     child: TextField(
      //       decoration: InputDecoration(
      //           hintText: 'Search',
      //           prefixIcon: Icon(Icons.search),
      //           border: OutlineInputBorder(
      //               borderRadius: BorderRadius.circular(28),
      //               borderSide: BorderSide.none),
      //           filled: true,
      //           fillColor: Colors.white,
      //           contentPadding: EdgeInsets.zero),
      //     ),
      //   ),
      //   preferredSize: Size.fromHeight(45),
      // ),
    );
  }
}
