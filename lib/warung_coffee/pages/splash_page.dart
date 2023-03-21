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
                SizedBox(
                  width: double.infinity,
                  height: 52,
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      backgroundColor: const Color(0XFF4C1641),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(16),
                      ),
                      elevation: 0,
                    ),
                    onPressed: () {},
                    child: const Text(
                      'Sign In',
                    ),
                  ),
                ),
                const SizedBox(height: 6),
                SizedBox(
                  width: double.infinity,
                  height: 52,
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      backgroundColor: const Color(0XFFD18645),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(16),
                      ),
                      elevation: 0,
                    ),
                    onPressed: () {},
                    child: const Text(
                      'Sign Up',
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
