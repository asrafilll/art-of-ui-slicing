import 'package:art_of_slicing/warung_coffee/pages/home_page.dart';
import 'package:art_of_slicing/warung_coffee/pages/other_page.dart';
import 'package:flutter/material.dart';

class WCMainPage extends StatefulWidget {
  const WCMainPage({super.key});

  @override
  State<WCMainPage> createState() => _WCMainPageState();
}

class _WCMainPageState extends State<WCMainPage> {
  int _currentIndex = 0;

  void _onTap(int index) {
    _currentIndex = index;
    setState(() {});
  }

  List<Widget> warungcoffeePage = [
    const HomePage(),
    const OtherPage(),
    const HomePage(),
    const OtherPage(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: warungcoffeePage[_currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        iconSize: 32.0,
        type: BottomNavigationBarType.fixed,
        onTap: _onTap,
        currentIndex: _currentIndex,
        elevation: 0,
        unselectedItemColor: const Color(0XFFAEAEAE),
        selectedItemColor: const Color(0xff4C1641),
        showSelectedLabels: false,
        showUnselectedLabels: false,
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: '',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.location_on),
            label: '',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: '',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.favorite),
            label: '',
          ),
        ],
      ),
    );
  }
}
