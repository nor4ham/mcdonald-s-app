// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:restaurant_menu/layout/layout_builder_screeb.dart';
import 'package:restaurant_menu/screens/menu.dart';
import '../screens/editMenu.dart';

class Navigation extends StatefulWidget {
  const Navigation({super.key});

  @override
  State<Navigation> createState() => _NavigationState();
}

class _NavigationState extends State<Navigation> {
  int currentIndex = 0;
  final screens = [
    /* Menu() */ LayoutScreen(),
    EditMenu(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Image.asset(
            'images/logo.svg.png',
            height: 50,
            width: 100,
          ),
          centerTitle: true,
          backgroundColor: Color.fromARGB(255, 209, 14, 0),
        ),
        bottomNavigationBar: BottomNavigationBar(
          currentIndex: currentIndex,
          onTap: (index) => setState(() {
            currentIndex = index;
          }),
          backgroundColor: Color.fromARGB(255, 209, 14, 0),
          unselectedItemColor: Color.fromARGB(255, 255, 208, 54),
          unselectedFontSize: 20,
          selectedItemColor: Color.fromARGB(255, 255, 208, 54),
          selectedFontSize: 22,
          selectedLabelStyle: TextStyle(fontWeight: FontWeight.bold),
          iconSize: 20,
          // showUnselectedLabels: false,
          // showSelectedLabels: false,
          // ignore: prefer_const_literals_to_create_immutables
          items: [
            BottomNavigationBarItem(
              icon: Icon(
                Icons.restaurant,
              ),
              label: "menu",
            ),
            BottomNavigationBarItem(
                icon: Icon(
                  Icons.edit,
                ),
                label: "setting",
                backgroundColor: Colors.white),
          ],
        ),
        body: LayoutBuilder(
          builder: (context, constraints) {
            final heightScreen = constraints.maxHeight;
            final widthScreen = constraints.maxWidth;
            
            return Center(child: screens[currentIndex]);
          },
        ));
  }
}
