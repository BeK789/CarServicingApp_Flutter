import 'package:flutter/material.dart';
import 'package:mecha/screens/home/advertisement_banner.dart';
import 'package:mecha/screens/home/appbanner.dart';
import 'package:mecha/widgets/services.dart';
import '../../widgets/optioncard.dart';
import 'banner_item.dart';
import 'indicator.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  var selectedIndex = 0;
  var selectedIndex2 = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 8),
        child: ListView(
          children: [
            Container(
              height: 150,
              child: PageView.builder(
                onPageChanged: (index) {
                  setState(() {
                    selectedIndex = index;
                  });
                },
                controller: PageController(viewportFraction: 0.6),
                itemCount: appBannerList.length,
                itemBuilder: (context, index) {
                  var banner = appBannerList[index];
                  var _scale = selectedIndex == index ? 1.0 : 0.8;
                  return TweenAnimationBuilder(
                    duration: Duration(milliseconds: 350),
                    tween: Tween(begin: _scale, end: _scale),
                    curve: Curves.ease,
                    child: BannerItem(appBanner: banner),
                    builder: (context, value, child) {
                      return Transform.scale(scale: value, child: child);
                    },
                  );
                },
              ),
            ),
            SizedBox(
              height: 5,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ...List.generate(
                    appBannerList.length,
                    (index) => Indicator(
                        isActive: selectedIndex == index ? true : false))
              ],
            ),
            SizedBox(
              height: 20,
            ),
            Text(
              'Scheduled Services',
              style: TextStyle(fontWeight: FontWeight.w600),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                serviceTile(
                  text: 'Denting & painting',
                ),
                serviceTile(
                  text: 'Detailing Services',
                ),
                serviceTile(
                  text: 'Car Spa & Cleaning',
                ),
                serviceTile(
                  text: 'Car Inspection',
                ),
              ],
            ),
            SizedBox(
              height: 20,
            ),
            Text(
              'Value Added Services',
              style: TextStyle(fontWeight: FontWeight.w600),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                serviceTile(
                  text: 'Periodic Service',
                ),
                serviceTile(
                  text: 'AC Service & Repair',
                ),
                serviceTile(
                  text: 'Batteries',
                ),
                serviceTile(
                  text: 'Tyres & Wheel Care',
                ),
              ],
            ),
            SizedBox(
              height: 20,
            ),
            Text(
              'Mechanical repairs',
              style: TextStyle(fontWeight: FontWeight.w600),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                serviceTile(
                  text: 'Windshield & Lights',
                ),
                serviceTile(
                  text: 'Suspension & Fitments',
                ),
                serviceTile(
                  text: 'Clutch & Body Parts',
                ),
                serviceTile(
                  text: 'Insurance Claims',
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 5),
              child: Padding(
                padding: const EdgeInsets.symmetric(vertical: 5),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Trending Services',
                      style: TextStyle(fontWeight: FontWeight.w600),
                    ),
                    Text(
                      'view all',
                      style: TextStyle(color: Colors.grey),
                    )
                  ],
                ),
              ),
            ),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  OptionCard(
                    text: 'Periodic Car Services',
                  ),
                  OptionCard(
                    text: 'Clutch & Bumpers',
                  ),
                  OptionCard(
                    text: 'Lights & Windshields',
                  ),
                  OptionCard(
                    text: 'Car Detailing',
                  ),
                  OptionCard(
                    text: 'Car AC services',
                  ),
                  OptionCard(
                    text: 'Car Tyre Replacement',
                  ),
                  OptionCard(
                    text: 'Deep All Round Spa',
                  ),
                  OptionCard(
                    text: 'Know Your Policy',
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 5,
            ),
            Column(
              children: [
                Container(
                  margin: EdgeInsets.symmetric(vertical: 15.0),
                  height: 160,
                  child: PageView.builder(
                      onPageChanged: (index) {
                        setState(() {
                          selectedIndex2 == index;
                        });
                      },
                      itemCount: addBannerList.length,
                      itemBuilder: (context, index) {
                        return Container(
                          margin: EdgeInsets.symmetric(horizontal: 16.0),
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(20),
                              image: DecorationImage(
                                  image: NetworkImage(
                                      addBannerList[index].thumbnailUrl),
                                  fit: BoxFit.cover)),
                        );
                      }),
                ),
                Row(mainAxisAlignment: MainAxisAlignment.center, children: [
                  ...List.generate(
                      addBannerList.length,
                      (index) => Indicator2(
                          isActive: selectedIndex2 == index ? true : false))
                ])
              ],
            )
          ],
        ),
      ),
    );
  }
}

class Indicator2 extends StatelessWidget {
  final bool isActive;
  const Indicator2({
    Key? key,
    required this.isActive,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AnimatedContainer(
      duration: Duration(milliseconds: 350),
      margin: EdgeInsets.symmetric(horizontal: 4),
      width: isActive ? 18.0 : 8,
      height: 8,
      decoration: BoxDecoration(
          color: Colors.black, borderRadius: BorderRadius.circular(8)),
    );
  }
}
