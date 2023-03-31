import 'package:art_of_slicing/warung_coffee/components/category_coffee.dart';
import 'package:art_of_slicing/warung_coffee/components/header_home_page.dart';
import 'package:art_of_slicing/warung_coffee/components/product_card.dart';
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
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const HeaderHomePage(),
              const SizedBox(height: 13),
              const SearchFormField(),
              const SizedBox(height: 30),
              const CategoryCoffeeWidget(),
              const SizedBox(height: 55),
              const Text(
                'Recommended for you',
                style: TextStyle(
                  fontFamily: 'DM',
                  fontWeight: FontWeight.bold,
                  color: Color(0XFF1E2843),
                ),
              ),
              const SizedBox(height: 5),
              GridView.count(
                childAspectRatio: 0.8,
                crossAxisSpacing: 10,
                mainAxisSpacing: 20,
                padding: EdgeInsets.zero,
                shrinkWrap: true,
                physics: const NeverScrollableScrollPhysics(),
                crossAxisCount: 2,
                children: const [
                  ProductCard(
                    image: 'assets/warung_coffee/cappucino.png',
                    title: 'Cappucino',
                    review: '4.9',
                  ),
                  ProductCard(
                    image: 'assets/warung_coffee/tea_gold.png',
                    title: 'Tea Gold',
                    review: '4.5',
                  ),
                  ProductCard(
                    image: 'assets/warung_coffee/espresso.png',
                    title: 'Espresso',
                    review: '4.9',
                  ),
                  ProductCard(
                    image: 'assets/warung_coffee/matcha.png',
                    title: 'Matcha',
                    review: '4.5',
                  ),
                  ProductCard(
                    image: 'assets/warung_coffee/cappucino.png',
                    title: 'Cappucino',
                    review: '4.9',
                  ),
                  ProductCard(
                    image: 'assets/warung_coffee/tea_gold.png',
                    title: 'Tea Gold',
                    review: '4.5',
                  ),
                  ProductCard(
                    image: 'assets/warung_coffee/espresso.png',
                    title: 'Espresso',
                    review: '4.9',
                  ),
                  ProductCard(
                    image: 'assets/warung_coffee/matcha.png',
                    title: 'Matcha',
                    review: '4.5',
                  ),
                ],
              ),
              // ProductCard(),
            ],
          ),
        ),
      ),
    );
  }
}
