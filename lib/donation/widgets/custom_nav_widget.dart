import 'package:art_of_slicing/donation/commons/app_colors.dart';
import 'package:flutter/material.dart';

class CustomNavWidget extends StatelessWidget {
  const CustomNavWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        IconButton(
          padding: EdgeInsets.zero,
          constraints: const BoxConstraints(),
          onPressed: () {},
          icon: const Icon(
            Icons.sort,
            color: AppColors.blackMain100,
          ),
        ),
        IconButton(
          padding: EdgeInsets.zero,
          constraints: const BoxConstraints(),
          onPressed: () {},
          icon: const Icon(
            Icons.search,
            color: AppColors.blackMain100,
          ),
        ),
      ],
    );
  }
}
