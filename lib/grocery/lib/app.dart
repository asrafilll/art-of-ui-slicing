import 'package:art_of_slicing/grocery/common/asset_color.dart';
import 'package:art_of_slicing/grocery/lib/cart/cart_page.dart';
import 'package:art_of_slicing/grocery/lib/home/home_page.dart';
import 'package:art_of_slicing/grocery/lib/order/order_page.dart';
import 'package:curved_labeled_navigation_bar/curved_navigation_bar.dart';
import 'package:curved_labeled_navigation_bar/curved_navigation_bar_item.dart';
import 'package:flutter/material.dart';

class GroceryApp extends StatefulWidget {
  const GroceryApp({super.key});

  @override
  State<GroceryApp> createState() => _GroceryAppState();
}

class _GroceryAppState extends State<GroceryApp> {
  final List<Widget> _body = [
    const GroceryHomePage(),
    const GroceryCartPage(),
    const GroceryOrderPage(),
    const GroceryHomePage(),
  ];
  int _selectedindex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _body[_selectedindex],
      bottomNavigationBar: CurvedNavigationBar(
        buttonBackgroundColor: AssetColor.primaryColor,
        backgroundColor: Colors.white,
        items: [
          CurvedNavigationBarItem(
            child: Icon(
              Icons.home_outlined,
              color: _selectedindex == 0 ? Colors.white : Colors.black,
            ),
            label: _selectedindex == 0 ? '' : 'Home',
          ),
          CurvedNavigationBarItem(
            child: Icon(
              Icons.shopping_cart,
              color: _selectedindex == 1 ? Colors.white : Colors.black,
            ),
            label: _selectedindex == 1 ? '' : 'Cart',
          ),
          CurvedNavigationBarItem(
            child: Icon(
              Icons.favorite,
              color: _selectedindex == 2 ? Colors.white : Colors.black,
            ),
            label: _selectedindex == 2 ? '' : 'Orders',
          ),
          CurvedNavigationBarItem(
            child: Icon(
              Icons.more_vert,
              color: _selectedindex == 3 ? Colors.white : Colors.black,
            ),
            label: _selectedindex == 2 ? '' : 'More',
          ),
        ],
        onTap: (index) {
          setState(() {
            _selectedindex = index;
          });
        },
      ),
    );
  }
}
