import 'package:art_of_slicing/grocery/common/asset_color.dart';
import 'package:art_of_slicing/grocery/common/custom_text_style.dart';
import 'package:flutter/material.dart';

class HeaderDeliveryWidget extends StatelessWidget {
  const HeaderDeliveryWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Delivery To',
              style: KTextStyle.smallTextStyle.copyWith(
                color: AssetColor.darkGreyTextColor,
              ),
            ),
            Row(
              children: [
                Text(
                  'Green Way 3000, Sylhet',
                  style: KTextStyle.smallTextStyle.copyWith(
                    color: AssetColor.whiteAppColor,
                  ),
                ),
                const SizedBox(width: 4),
                const Icon(
                  Icons.keyboard_arrow_down,
                  color: AssetColor.darkGreyTextColor,
                ),
              ],
            )
          ],
        ),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Within',
              style: KTextStyle.smallTextStyle.copyWith(
                color: AssetColor.darkGreyTextColor,
              ),
            ),
            Row(
              children: [
                Text(
                  '1 Hour',
                  style: KTextStyle.smallTextStyle.copyWith(
                    color: AssetColor.whiteAppColor,
                  ),
                ),
                const SizedBox(width: 4),
                const Icon(
                  Icons.keyboard_arrow_down,
                  color: AssetColor.darkGreyTextColor,
                ),
              ],
            )
          ],
        ),
      ],
    );
  }
}
