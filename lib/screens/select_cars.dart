import 'package:flutter/material.dart';
import 'package:mecha/screens/main_page.dart';

class SelectCars extends StatefulWidget {
  @override
  State<SelectCars> createState() => _SelectCarsState();
}

class _SelectCarsState extends State<SelectCars> {
  List<String> imageUrls = [
    'https://logosandtypes.com/wp-content/uploads/2020/10/Toyota-old.png',
    'https://cdn.mos.cms.futurecdn.net/WpcTavg99b5XpK6STzSLZ8.jpg',
    'https://cdn.mos.cms.futurecdn.net/WpcTavg99b5XpK6STzSLZ8.jpg',
    'https://cdn.mos.cms.futurecdn.net/WpcTavg99b5XpK6STzSLZ8.jpg',
    'https://cdn.mos.cms.futurecdn.net/WpcTavg99b5XpK6STzSLZ8.jpg',
    'https://cdn.mos.cms.futurecdn.net/WpcTavg99b5XpK6STzSLZ8.jpg',
    'https://cdn.mos.cms.futurecdn.net/WpcTavg99b5XpK6STzSLZ8.jpg',
    'https://cdn.mos.cms.futurecdn.net/WpcTavg99b5XpK6STzSLZ8.jpg',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.red,
        elevation: 0,
        leading: Icon(
          Icons.arrow_back,
          size: 18,
        ),
        title: Text(
          'Select Your Car',
          style: TextStyle(fontSize: 18, color: Colors.white),
        ),
        bottom: PreferredSize(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 25, vertical: 12),
            child: SizedBox(
              height: 29,
              child: TextField(
                textAlign: TextAlign.center,
                decoration: InputDecoration(
                    hintText: 'Search By Car Model Or Brand',
                    hintStyle:
                        TextStyle(fontSize: 15.0, color: Colors.redAccent),
                    prefixIcon: Icon(Icons.car_rental, color: Colors.red),
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(8),
                        borderSide: BorderSide.none),
                    filled: true,
                    fillColor: Colors.white,
                    contentPadding: EdgeInsets.zero),
              ),
            ),
          ),
          preferredSize: Size.fromHeight(25),
        ),
      ),
      body: GridView.builder(
        itemCount: imageUrls.length,
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 3,
          crossAxisSpacing: 30.0,
          mainAxisSpacing: 30.0,
        ),
        itemBuilder: (BuildContext context, int index) {
          return GestureDetector(
            onTap: () {
              Navigator.pushReplacement(
                  context, MaterialPageRoute(builder: (context) => MainPage()));
            },
            child: Image.network(
              imageUrls[index],
              fit: BoxFit.cover,
            ),
          );
        },
      ),
    );
  }
}
