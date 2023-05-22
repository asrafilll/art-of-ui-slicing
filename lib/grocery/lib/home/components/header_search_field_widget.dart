import 'package:art_of_slicing/grocery/common/asset_color.dart';
import 'package:flutter/material.dart';

class HeaderSearchFieldWidget extends StatelessWidget {
  const HeaderSearchFieldWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      height: 56,
      child: TextField(
        decoration: InputDecoration(
          border: OutlineInputBorder(
            borderSide: BorderSide.none,
            borderRadius: BorderRadius.circular(28),
          ),
          filled: true,
          fillColor: const Color(0XFF153075),
          prefixIcon: const Icon(Icons.search),
          prefixIconColor: AssetColor.whiteAppColor,
          hintText: 'Search Products or store',
          hintStyle: const TextStyle(
            color: Color(0XFF8891A5),
          ),
        ),
      ),
    );
  }
}
