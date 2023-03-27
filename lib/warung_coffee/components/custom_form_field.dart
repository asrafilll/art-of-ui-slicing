import 'package:flutter/material.dart';

class CustomFormField extends StatelessWidget {
  const CustomFormField({
    super.key,
    required this.hintText,
    required this.suffixIcon,
    this.obscureText = false,
  });

  final String hintText;
  final Widget suffixIcon;
  final bool obscureText;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      obscureText: obscureText,
      decoration: InputDecoration(
        contentPadding: const EdgeInsets.symmetric(
          horizontal: 23,
          vertical: 20,
        ),
        suffixIcon: suffixIcon,
        hintText: hintText,
        hintStyle: const TextStyle(
          fontFamily: 'DM',
          fontWeight: FontWeight.w500,
          color: Color(0XFFA1A6B3),
        ),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(16),
          borderSide: const BorderSide(
            color: Color(0XFFE2E6EB),
          ),
        ),
      ),
    );
  }
}
