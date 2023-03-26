import 'package:art_of_slicing/warung_coffee/components/social_button.dart';
import 'package:flutter/material.dart';

class WarungCoffeeLoginPage extends StatelessWidget {
  const WarungCoffeeLoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(
          horizontal: 35,
          vertical: 75,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            InkWell(
              onTap: () {
                Navigator.pop(context);
              },
              child: const Icon(
                Icons.chevron_left,
              ),
            ),
            const SizedBox(height: 88),
            Center(
              child: Column(
                children: [
                  const Text(
                    'Welcome Back',
                    style: TextStyle(
                      fontFamily: 'DM',
                      color: Color(0XFF1E2843),
                      fontWeight: FontWeight.bold,
                      fontSize: 24,
                    ),
                  ),
                  const SizedBox(height: 3),
                  const Text(
                    'Sign in to continue',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontFamily: 'DM',
                      color: Color(0XFFA1A6B3),
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  const SizedBox(height: 49),
                  Row(
                    children: const [
                      WCSocialButton(
                        img: 'assets/warung_coffee/icon_google.png',
                        title: 'Google',
                      ),
                      SizedBox(width: 13),
                      WCSocialButton(
                        img: 'assets/warung_coffee/icon_fb.png',
                        title: 'Facebook',
                        imgSize: 8,
                      )
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
