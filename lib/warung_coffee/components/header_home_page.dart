import 'package:flutter/material.dart';

class HeaderHomePage extends StatelessWidget {
  const HeaderHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: const [
        Text(
          'What would you like ',
          style: TextStyle(
            fontFamily: 'DM',
            fontWeight: FontWeight.bold,
            color: Color(0XFF1E2843),
          ),
        ),
        Icon(
          Icons.shopping_cart_outlined,
        ),
      ],
    );
  }
}
