// ignore_for_file: file_names
// ignore_for_file: prefer_const_constructors

import 'package:clothing_shop_app/module/detail/detail_screen.dart';
import 'package:clothing_shop_app/module/home/home_screen.dart';
import 'package:flutter/material.dart';

class CloathingAppLayout extends StatefulWidget {
  const CloathingAppLayout({Key? key}) : super(key: key);

  @override
  _CloathingAppLayoutState createState() => _CloathingAppLayoutState();
}

class _CloathingAppLayoutState extends State<CloathingAppLayout> {
  int selectedIndex = 0;

  List<Widget> screens = [
    HomeScreen(),
    Text(
      'Second Page',
      style: TextStyle(
        fontSize: 30,
        fontWeight: FontWeight.bold,
      ),
    ),
    DetailScreen()
  ];

  void onItemTapped(int index) {
    setState(() {
      selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Color(0xfff6f6f6),
        appBar: AppBar(
          elevation: 0,
          backgroundColor: Color(0xfff6f6f6),
          leading: IconButton(
              onPressed: () {},
              icon: Icon(Icons.menu, color: Color(0xff8275b3))),
          actions: [
            Padding(
              padding: const EdgeInsets.only(right: 10.0),
              child: Container(
                height: 30,
                width: 30,
                child: PhysicalShape(
                  clipper: ShapeBorderClipper(shape: CircleBorder()),
                  color: Colors.white,
                  shadowColor: Colors.black,
                  elevation: 3,
                  child: Icon(Icons.shopping_bag_rounded,
                      color: Color(0xff8275b3)),
                ),
              ),
            )
          ],
        ),
        body: Center(child: screens[selectedIndex]),
        bottomNavigationBar: SizedBox(
          height: 70,
          child: Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.only(
                topRight: Radius.circular(30.0),
                topLeft: Radius.circular(30.0),
              ),
              boxShadow: [
                BoxShadow(
                  color: Colors.black38,
                  spreadRadius: 0,
                  blurRadius: 10.0,
                )
              ],
            ),
            child: ClipRRect(
                borderRadius: BorderRadius.only(
                  topRight: Radius.circular(30),
                  topLeft: Radius.circular(30),
                ),
                child: BottomNavigationBar(
                  elevation: 0.0,
                  showSelectedLabels: false,
                  showUnselectedLabels: false,
                  backgroundColor: Colors.white,
                  type: BottomNavigationBarType.fixed,
                  // ignore: prefer_const_literals_to_create_immutables
                  items: [
                    BottomNavigationBarItem(
                      icon: Icon(
                        Icons.home_filled,
                        size: 30.0,
                      ),
                      label: "home",
                    ),
                    BottomNavigationBarItem(
                      icon: Icon(
                        Icons.person_outline,
                        size: 30.0,
                      ),
                      label: "person",
                    ),
                    BottomNavigationBarItem(
                      icon: Icon(
                        Icons.grid_view,
                        size: 30.0,
                      ),
                      label: "grid",
                    ),
                  ],
                  currentIndex: selectedIndex,
                  unselectedItemColor: Color(0xffd0cedb),
                  selectedItemColor: Color(0xff7a6fb3),
                  onTap: onItemTapped,
                )),
          ),
        ));
  }
}
