import 'package:art_of_slicing/warung_coffee/components/login_form.dart';
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
        child: SingleChildScrollView(
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
              const WCLoginForm(),
              const SizedBox(height: 60),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: const [
                  Text(
                    'Don’t have an account ?',
                    style: TextStyle(
                      fontFamily: 'DM',
                      fontWeight: FontWeight.w500,
                      color: Color(0XFFA1A6B3),
                    ),
                  ),
                  SizedBox(width: 9),
                  Text(
                    'Join us',
                    style: TextStyle(
                      fontFamily: 'DM',
                      fontWeight: FontWeight.bold,
                      color: Color(0XFFD18645),
                    ),
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
