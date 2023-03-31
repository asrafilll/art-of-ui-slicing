import 'package:flutter/material.dart';

class ProductDetailHero extends StatelessWidget {
  const ProductDetailHero({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          width: 85,
          height: 85,
          decoration: const BoxDecoration(
            image: DecorationImage(
              image: AssetImage('assets/warung_coffee/cappucino.png'),
            ),
          ),
        ),
        const SizedBox(height: 28),
        const Text(
          'Cappucino',
          style: TextStyle(
            fontFamily: 'DM',
            color: Color(0XFF1E2843),
            fontWeight: FontWeight.bold,
          ),
        ),
        const SizedBox(height: 6),
        const SizedBox(
          width: 245,
          child: Text(
            'It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release',
            style: TextStyle(
              fontFamily: 'DM',
              fontSize: 13,
              fontWeight: FontWeight.w500,
              color: Color(0XFFA1A6B3),
            ),
            textAlign: TextAlign.center,
          ),
        ),
      ],
    );
  }
}
