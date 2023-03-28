import 'package:art_of_slicing/warung_coffee/components/category_coffee.dart';
import 'package:art_of_slicing/warung_coffee/components/header_home_page.dart';
import 'package:art_of_slicing/warung_coffee/components/serch_form_field.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 35, vertical: 56),
        child: SingleChildScrollView(
          child: Column(
            children: const [
              HeaderHomePage(),
              SizedBox(height: 13),
              SearchFormField(),
              SizedBox(height: 30),
              CategoryCoffeeWidget(),
            ],
          ),
        ),
      ),
    );
  }
}
