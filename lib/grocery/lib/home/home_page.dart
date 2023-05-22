import 'package:art_of_slicing/grocery/lib/home/components/header_widget.dart';
import 'package:art_of_slicing/grocery/lib/home/components/home_banner_widget.dart';
import 'package:art_of_slicing/grocery/lib/home/components/home_recommended_list_widget.dart';
import 'package:flutter/material.dart';

class GroceryHomePage extends StatefulWidget {
  const GroceryHomePage({super.key});

  @override
  State<GroceryHomePage> createState() => _GroceryHomePageState();
}

class _GroceryHomePageState extends State<GroceryHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: const [
            HomeHeader(),
            HomeBannerWidget(),
            HomeRecommendedListWidget(),
            SizedBox(height: 40),
          ],
        ),
      ),
    );
  }
}
