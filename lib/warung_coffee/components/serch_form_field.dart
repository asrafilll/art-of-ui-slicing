import 'package:flutter/material.dart';

class SearchFormField extends StatelessWidget {
  const SearchFormField({super.key});

  @override
  Widget build(BuildContext context) {
    return TextField(
      decoration: InputDecoration(
        contentPadding: const EdgeInsets.symmetric(
          horizontal: 23,
          vertical: 18,
        ),
        hintText: 'Search...',
        hintStyle: const TextStyle(
          fontFamily: 'DM',
          fontWeight: FontWeight.w500,
          color: Color(0XFFA1A6B3),
        ),
        suffixIcon: const Icon(
          Icons.search,
        ),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(32),
          borderSide: const BorderSide(
            color: Color(0XFFE2E6EB),
          ),
        ),
      ),
    );
  }
}
