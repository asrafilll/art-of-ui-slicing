import 'package:flutter/material.dart';

class WCSecondaryButton extends StatelessWidget {
  const WCSecondaryButton({
    super.key,
    required this.title,
  });

  final String title;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
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
        child: Text(
          title,
        ),
      ),
    );
  }
}
