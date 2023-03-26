import 'package:art_of_slicing/warung_coffee/components/primary_button.dart';
import 'package:art_of_slicing/warung_coffee/components/secondary_button.dart';
import 'package:art_of_slicing/warung_coffee/pages/login_page.dart';
import 'package:flutter/material.dart';

class WarungCoffeeSplashPage extends StatelessWidget {
  const WarungCoffeeSplashPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(
            horizontal: 35,
            vertical: 80,
          ),
          child: Center(
            child: Column(
              children: [
                const Text(
                  'Coffee App',
                  style: TextStyle(
                    fontFamily: 'DM',
                    color: Color(0XFF1E2843),
                    fontWeight: FontWeight.bold,
                    fontSize: 32,
                  ),
                ),
                const SizedBox(height: 12),
                const Text(
                  'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod.',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontFamily: 'DM',
                    color: Color(0XFFA1A6B3),
                    fontSize: 16,
                  ),
                ),
                Container(
                  width: 240,
                  height: 340,
                  margin: const EdgeInsets.only(
                    top: 27,
                    bottom: 61,
                  ),
                  decoration: const BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage(
                        'assets/warung_coffee/welcome.png',
                      ),
                    ),
                  ),
                ),
                WCPrimaryButton(
                  title: 'Sign In',
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const WarungCoffeeLoginPage(),
                      ),
                    );
                  },
                ),
                const SizedBox(height: 6),
                const WCSecondaryButton(title: 'Sign Up'),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
