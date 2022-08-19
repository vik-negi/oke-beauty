import 'dart:ffi';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:oyebeauty/Data/homePage_data.dart';
import 'package:oyebeauty/Screens/account_page.dart';
import 'package:oyebeauty/Screens/booking_page.dart';
import 'package:oyebeauty/Screens/favourite_page.dart';
import 'package:oyebeauty/Screens/home_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: NavigatorMenu(),
    );
  }
}

class NavigatorMenu extends StatefulWidget {
  NavigatorMenu({Key? key}) : super(key: key);

  @override
  State<NavigatorMenu> createState() => _NavigatorMenuState();
}

class _NavigatorMenuState extends State<NavigatorMenu> {
  // final screens = [
  //   const BookingPage(),
  //   const BookingPage(),
  //   const FavouritePage(),
  //   const AccountPage()
  // ];
  int index = 0;

  static const TextStyle optionStyle =
      TextStyle(fontSize: 30, fontWeight: FontWeight.bold);
  List<Widget> screens = const <Widget>[
    HomePage(),
    BookingPage(),
    FavouritePage(),
    AccountPage()
  ];

  void _onItemTapped(int i) {
    setState(() {
      index = i;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: screens.elementAt(index),
      bottomNavigationBar: BottomNavigationBar(
        items: <BottomNavigationBarItem>[
          navbarItem(icon: Icons.home, label: "Home"),
          navbarItem(icon: Icons.book, label: "Booking"),
          navbarItem(icon: Icons.favorite_outline_outlined, label: "Favourite"),
          navbarItem(icon: Icons.account_box, label: "Accounts"),
        ],
        currentIndex: index,
        selectedItemColor: const Color(0xffE8625D),
        unselectedItemColor: const Color(0xff415859),
        showUnselectedLabels: true,
        selectedIconTheme: const IconThemeData(size: 30),
        onTap: _onItemTapped,
        type: BottomNavigationBarType.fixed,
      ),
    );
  }

  BottomNavigationBarItem navbarItem(
      {required IconData icon, required String label}) {
    return BottomNavigationBarItem(
      icon: Icon(icon),
      label: label,
    );
  }
}
