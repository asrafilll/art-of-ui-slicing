import 'package:art_of_slicing/grocery/common/asset_color.dart';
import 'package:art_of_slicing/grocery/common/custom_text_style.dart';
import 'package:flutter/material.dart';

class GroceryCustomAppBar extends StatelessWidget {
  const GroceryCustomAppBar({
    super.key,
    required this.title,
  });

  final String title;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        InkWell(
          onTap: () {},
          child: Container(
            width: 40,
            height: 40,
            decoration: BoxDecoration(
              color: AssetColor.lightGrayBGColor,
              borderRadius: BorderRadius.circular(100),
            ),
            child: const Icon(Icons.chevron_left),
          ),
        ),
        const SizedBox(width: 21),
        Text(
          title,
          style: KTextStyle.mediumTextStyle,
        ),
      ],
    );
  }
}
