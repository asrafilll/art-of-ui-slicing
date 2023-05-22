import 'package:art_of_slicing/grocery/common/asset_color.dart';
import 'package:art_of_slicing/grocery/common/custom_text_style.dart';
import 'package:flutter/material.dart';

class TitleHeaderRow extends StatelessWidget {
  const TitleHeaderRow({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          'Hey Abdul',
          style: KTextStyle.mediumTextStyle.copyWith(
            fontSize: 22,
            fontWeight: FontWeight.w600,
            color: AssetColor.whiteAppColor,
          ),
        ),
        Stack(
          children: [
            const Icon(
              Icons.local_mall,
              size: 32,
              color: AssetColor.whiteAppColor,
            ),
            Positioned(
              right: 0,
              top: 0,
              child: Container(
                width: 16,
                height: 16,
                decoration: BoxDecoration(
                  color: AssetColor.yellowBGColor,
                  borderRadius: BorderRadius.circular(
                    100,
                  ),
                ),
                child: Center(
                  child: Text(
                    '3',
                    style: KTextStyle.smallTextStyle.copyWith(
                      color: AssetColor.whiteAppColor,
                    ),
                  ),
                ),
              ),
            )
          ],
        )
      ],
    );
  }
}
