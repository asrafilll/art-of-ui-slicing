import 'package:art_of_slicing/donation/pages/account_page.dart';
import 'package:art_of_slicing/donation/commons/app_colors.dart';
import 'package:art_of_slicing/donation/pages/home_page.dart';
import 'package:flutter/material.dart';

class DonationMainPage extends StatefulWidget {
  const DonationMainPage({super.key});

  @override
  State<DonationMainPage> createState() => _DonationMainPageState();
}

class _DonationMainPageState extends State<DonationMainPage> {
  int _currentIndex = 0;

  void _onTap(int index) {
    _currentIndex = index;
    setState(() {});
  }

  List<Widget> warungcoffeePage = [
    const DonationHomePage(),
    const DonationHomePage(),
    const DonationHomePage(),
    const DonationAccountPage(),
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
        unselectedItemColor: AppColors.greyColor,
        selectedItemColor: AppColors.primaryColor,
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.home_outlined),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.access_time_outlined),
            label: 'History',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.account_balance_wallet_outlined),
            label: 'Wallet',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.account_circle_outlined),
            label: 'Account',
          ),
        ],
      ),
    );
  }
}
