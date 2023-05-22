import 'package:art_of_slicing/grocery/common/asset_color.dart';
import 'package:art_of_slicing/grocery/common/custom_text_style.dart';
import 'package:art_of_slicing/grocery/common/widgets/grocery_primary_button.dart';
import 'package:flutter/material.dart';

class GroceryOrderTile extends StatelessWidget {
  const GroceryOrderTile(
      {super.key,
      required this.orderImg,
      required this.orderTitle,
      required this.orderPrice,
      required this.orderId,
      required this.driverImg,
      required this.driverReview,
      required this.driverName});

  final String orderImg;
  final String orderTitle;
  final String orderPrice;
  final int orderId;

  final String driverImg;
  final String driverReview;
  final String driverName;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ListTile(
          contentPadding: EdgeInsets.zero,
          leading: Image.asset(
            orderImg,
            opacity: const AlwaysStoppedAnimation(0.6),
            width: 36,
          ),
          title: Text(
            orderTitle,
            style: KTextStyle.regularTextStyle.copyWith(
              color: AssetColor.lightBlueTextColor,
            ),
          ),
          subtitle: Text(
            orderPrice,
            style: KTextStyle.regularTextStyle.copyWith(
              fontWeight: FontWeight.w600,
            ),
          ),
          trailing: RichText(
            text: TextSpan(
              text: 'ID: ',
              style: KTextStyle.regularTextStyle.copyWith(
                color: AssetColor.lightBlueTextColor,
              ),
              children: [
                TextSpan(
                  text: orderId.toString(),
                  style: const TextStyle(
                    color: AssetColor.blackTextColor,
                  ),
                ),
              ],
            ),
          ),
        ),
        const SizedBox(height: 21),
        Row(
          children: [
            Column(
              children: [
                Container(
                  padding: const EdgeInsets.only(left: 13, bottom: 11),
                  width: 131,
                  height: 117,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage(
                        driverImg,
                      ),
                    ),
                  ),
                  child: Align(
                    alignment: Alignment.bottomLeft,
                    child: Row(
                      children: [
                        const Icon(
                          Icons.star,
                          color: AssetColor.yellowBGColor,
                          size: 14,
                        ),
                        const SizedBox(width: 4),
                        Text(
                          driverReview,
                          style: KTextStyle.smallTextStyle.copyWith(
                            color: AssetColor.whiteAppColor,
                          ),
                        )
                      ],
                    ),
                  ),
                ),
                const SizedBox(height: 10),
                RichText(
                  text: TextSpan(
                    text: 'Meet our rider,',
                    style: KTextStyle.smallTextStyle.copyWith(
                      color: AssetColor.lightBlueTextColor,
                    ),
                    children: [
                      TextSpan(
                        text: ' $driverName',
                        style: const TextStyle(
                          color: AssetColor.blackTextColor,
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
            const SizedBox(width: 38),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                RichText(
                  text: TextSpan(
                    text: 'Your $orderTitle',
                    style: KTextStyle.mediumTextStyle.copyWith(
                      color: AssetColor.blackTextColor,
                      fontSize: 20,
                    ),
                    children: const [
                      TextSpan(
                        text: '\nare on the way',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                  ),
                ),
                const SizedBox(height: 15),
                const GroceryPrimaryButton(
                  title: 'Track Order',
                  width: 115,
                )
              ],
            ),
          ],
        ),
      ],
    );
  }
}
