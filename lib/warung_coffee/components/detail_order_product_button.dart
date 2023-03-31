import 'package:flutter/material.dart';

class DetailOrderProductButton extends StatelessWidget {
  const DetailOrderProductButton({
    super.key,
    required this.text,
  });

  final String text;
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 32,
      height: 32,
      decoration: BoxDecoration(
        border: Border.all(
          color: const Color(0XFFE2E6EB),
        ),
        borderRadius: BorderRadius.circular(12),
      ),
      child: Center(
        child: Text(
          text,
          style: const TextStyle(
            fontFamily: 'DM',
            color: Color(0XFF1E2843),
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
    );
  }
}
