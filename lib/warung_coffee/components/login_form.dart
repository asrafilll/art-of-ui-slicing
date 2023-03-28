import 'package:art_of_slicing/warung_coffee/components/custom_form_field.dart';
import 'package:art_of_slicing/warung_coffee/components/primary_button.dart';
import 'package:art_of_slicing/warung_coffee/components/social_button.dart';
import 'package:art_of_slicing/warung_coffee/pages/main_page.dart';
import 'package:flutter/material.dart';

class WCLoginForm extends StatelessWidget {
  const WCLoginForm({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
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
        const SizedBox(height: 28),
        const CustomFormField(
          hintText: 'Username or Email',
          suffixIcon: Icon(Icons.email),
        ),
        const SizedBox(height: 12),
        const CustomFormField(
          hintText: 'Password',
          suffixIcon: Icon(Icons.lock),
          obscureText: true,
        ),
        const SizedBox(height: 18),
        WCPrimaryButton(
          title: 'Sign In',
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => const WCMainPage(),
              ),
            );
          },
        ),
        TextButton(
          onPressed: () {},
          child: const Text(
            'Forgot Password?',
            style: TextStyle(
              fontFamily: 'DM',
              fontWeight: FontWeight.w500,
              color: Color(0XFFA1A6B3),
            ),
          ),
        ),
      ],
    );
  }
}
