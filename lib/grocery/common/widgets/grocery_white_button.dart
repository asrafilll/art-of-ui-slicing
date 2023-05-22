import 'package:art_of_slicing/grocery/common/asset_color.dart';
import 'package:art_of_slicing/grocery/common/custom_text_style.dart';
import 'package:flutter/material.dart';

class GroceryWhiteButton extends StatelessWidget {
  const GroceryWhiteButton({
    super.key,
    required this.title,
    required this.width,
    this.borderRadius,
  });

  final String title;
  final double width;
  final BorderRadiusGeometry? borderRadius;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
      height: 56,
      decoration: BoxDecoration(
        border: Border.all(color: AssetColor.darkGreyTextColor),
        borderRadius: borderRadius ?? BorderRadius.circular(20),
      ),
      child: Center(
        child: Text(
          title,
          style: KTextStyle.regularTextStyle.copyWith(
            color: AssetColor.lightBlueTextColor,
            fontWeight: FontWeight.w600,
          ),
        ),
      ),
    );
  }
}
