import 'package:flutter/material.dart';
import 'package:latihan/app_color.dart';
import 'package:latihan/view/ui/beranda/home.dart';
import 'package:latihan/view/ui/pesanan/order.dart';
import 'package:latihan/view/ui/bantuan/help.dart';
import 'package:latihan/view/ui/profile/profile.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _selectedNavbar = 0;

  void _changeSelectedNavBar(int index) {
    setState(() {
      _selectedNavbar = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return BelajarNavBar();
  }
}

class BelajarNavBar extends StatefulWidget {
  @override
  _BelajarNavBarState createState() => _BelajarNavBarState();
}

class _BelajarNavBarState extends State<BelajarNavBar> {
  int _selectedNavbar = 0;

  void _changeSelectedNavBar(int index) {
    setState(() {
      _selectedNavbar = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _selectedNavbar == 0
          ? Home()
          : _selectedNavbar == 1
              ? OrderPage()
              : _selectedNavbar == 2
                  ? HelpCenter()
                  : Account(),
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.assignment),
            label: 'Order',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.question_mark),
            label: 'Help',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: 'Profile',
          ),
        ],
        currentIndex: _selectedNavbar,
        selectedItemColor: bUngu,
        unselectedItemColor: abuMuda,
        showUnselectedLabels: true,
        onTap: (index) {
          setState(() {
            _selectedNavbar = index;
          });
        },
      ),
    );
  }
}
