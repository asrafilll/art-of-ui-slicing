import 'package:art_of_slicing/donation/widgets/custom_divider.dart';
import 'package:art_of_slicing/grocery/common/asset_color.dart';
import 'package:art_of_slicing/grocery/common/asset_manager.dart';
import 'package:art_of_slicing/grocery/common/custom_text_style.dart';
import 'package:art_of_slicing/grocery/common/widgets/grocery_custom_appbar.dart';
import 'package:art_of_slicing/grocery/lib/cart/components/cart_item_tile.dart';
import 'package:flutter/material.dart';

class GroceryCartPage extends StatelessWidget {
  const GroceryCartPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(
                top: 45,
                left: 24,
                right: 20,
              ),
              child: Column(
                children: const [
                  GroceryCustomAppBar(title: 'Shopping (3)'),
                  SizedBox(height: 38),
                  CartItemTile(
                    img: AssetManager.banana,
                    title: 'Bananas',
                    price: '\$7.90',
                    qty: 3,
                  ),
                  CustomDivider(),
                  CartItemTile(
                    img: AssetManager.orange,
                    title: 'Orange',
                    price: '\$27.90',
                    qty: 4,
                  ),
                  CustomDivider(),
                  CartItemTile(
                    img: AssetManager.fish,
                    title: 'Big Fishes',
                    price: '\$17.90',
                    qty: 2,
                  ),
                  SizedBox(height: 90),
                ],
              ),
            ),
            Container(
              margin: const EdgeInsets.all(8),
              width: double.infinity,
              padding: const EdgeInsets.symmetric(
                vertical: 17,
                horizontal: 36,
              ),
              height: 266,
              decoration: BoxDecoration(
                color: AssetColor.lightGrayBGColor,
                borderRadius: BorderRadius.circular(30),
              ),
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'Subtotal',
                        style: KTextStyle.regularTextStyle.copyWith(
                          color: AssetColor.lightBlueTextColor,
                        ),
                      ),
                      Text(
                        '\$35.96',
                        style: KTextStyle.regularTextStyle.copyWith(
                          color: AssetColor.blackTextColor,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: 13),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'Delivery',
                        style: KTextStyle.regularTextStyle.copyWith(
                          color: AssetColor.lightBlueTextColor,
                        ),
                      ),
                      Text(
                        '\$2.00',
                        style: KTextStyle.regularTextStyle.copyWith(
                          color: AssetColor.blackTextColor,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: 13),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'Total',
                        style: KTextStyle.regularTextStyle.copyWith(
                          color: AssetColor.lightBlueTextColor,
                        ),
                      ),
                      Text(
                        '\$37.96',
                        style: KTextStyle.regularTextStyle.copyWith(
                          color: AssetColor.blackTextColor,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: 35),
                  Container(
                    width: double.infinity,
                    height: 56,
                    decoration: BoxDecoration(
                      color: AssetColor.primaryColor,
                      borderRadius: BorderRadius.circular(20),
                    ),
                    child: Center(
                      child: Text(
                        'Proceed to Checkout',
                        style: KTextStyle.regularTextStyle.copyWith(
                          color: AssetColor.whiteAppColor,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                    ),
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
