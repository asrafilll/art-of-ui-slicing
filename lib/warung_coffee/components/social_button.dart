import 'package:flutter/material.dart';

class WCSocialButton extends StatelessWidget {
  const WCSocialButton({
    super.key,
    required this.img,
    required this.title,
    this.imgSize = 16,
  });

  final String img;
  final String title;
  final double imgSize;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(
        horizontal: 33,
        vertical: 18,
      ),
      decoration: const BoxDecoration(
        color: Color(
          0XFFF4F3FA,
        ),
        borderRadius: BorderRadius.all(
          Radius.circular(16),
        ),
      ),
      child: Row(
        children: [
          Image.asset(
            img,
            width: imgSize,
          ),
          const SizedBox(width: 14),
          Text(
            title,
            style: const TextStyle(
              fontFamily: 'DM',
              color: Color(0XFF1E2843),
              fontWeight: FontWeight.bold,
            ),
          ),
        ],
      ),
    );
  }
}
