import 'package:art_of_slicing/grocery/common/asset_color.dart';
import 'package:art_of_slicing/grocery/common/asset_manager.dart';
import 'package:art_of_slicing/grocery/common/custom_text_style.dart';
import 'package:flutter/material.dart';

class HomeBannerWidget extends StatelessWidget {
  const HomeBannerWidget({super.key});

  @override
  Widget build(BuildContext context) {
    var cardColor = [
      AssetColor.yellowBGColor,
      AssetColor.primaryColor,
    ];

    return Container(
      height: 125,
      padding: const EdgeInsets.only(
        left: 20,
      ),
      margin: const EdgeInsets.symmetric(vertical: 27),
      child: ListView.separated(
        scrollDirection: Axis.horizontal,
        separatorBuilder: (context, index) => const SizedBox(width: 20),
        itemCount: cardColor.length,
        itemBuilder: (context, index) {
          var lastIndex = cardColor.length - 1;
          return Container(
            width: 270,
            height: 125,
            padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 13),
            margin: index == lastIndex
                ? const EdgeInsets.only(right: 20)
                : EdgeInsets.zero,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(16),
              color: cardColor[index],
            ),
            child: Row(
              children: [
                Image.asset(
                  AssetManager.sale,
                ),
                const SizedBox(width: 24),
                RichText(
                  text: TextSpan(
                    text: 'Get',
                    style: KTextStyle.mediumTextStyle.copyWith(
                      fontSize: 20,
                      fontWeight: FontWeight.w300,
                      color: AssetColor.whiteAppColor,
                    ),
                    children: const [
                      TextSpan(
                          text: '\n50% Off',
                          style: TextStyle(
                            fontSize: 26,
                            fontWeight: FontWeight.bold,
                          )),
                      TextSpan(
                        text: '\nOn First 03 Order',
                        style: TextStyle(
                          fontSize: 14,
                        ),
                      ),
                    ],
                  ),
                )
              ],
            ),
          );
        },
      ),
    );
  }
}
