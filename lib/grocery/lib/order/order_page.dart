import 'package:art_of_slicing/grocery/common/asset_manager.dart';
import 'package:art_of_slicing/grocery/common/widgets/grocery_custom_appbar.dart';
import 'package:art_of_slicing/grocery/common/widgets/grocery_primary_button.dart';
import 'package:art_of_slicing/grocery/common/widgets/grocery_white_button.dart';
import 'package:art_of_slicing/grocery/lib/order/components/grocery_order_tile.dart';
import 'package:flutter/material.dart';

class GroceryOrderPage extends StatelessWidget {
  const GroceryOrderPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.only(
            left: 24,
            top: 38,
            right: 24,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const GroceryCustomAppBar(title: 'Orders'),
              const SizedBox(height: 22),
              Row(
                children: const [
                  Expanded(
                    child: GroceryPrimaryButton(
                        title: 'Current', width: double.infinity),
                  ),
                  SizedBox(width: 8),
                  Expanded(
                    child: GroceryWhiteButton(
                        title: 'Current', width: double.infinity),
                  ),
                ],
              ),
              const SizedBox(height: 30),
              const GroceryOrderTile(
                orderImg: AssetManager.orange,
                orderTitle: 'Fresh Orange',
                orderPrice: '\$7.90',
                orderId: 765433,
                driverImg: AssetManager.driverMax,
                driverReview: '4.5 / 5',
                driverName: 'Max',
              ),
              Container(
                margin: const EdgeInsets.symmetric(vertical: 28),
                height: 2,
                color: const Color(0XFFE9EAF4),
              ),
              const GroceryOrderTile(
                orderImg: AssetManager.fish,
                orderTitle: 'Big Fishes',
                orderPrice: '\$120',
                orderId: 765432,
                driverImg: AssetManager.driverSakib,
                driverReview: '4.5 / 5',
                driverName: 'Sakib',
              ),
              const SizedBox(height: 60),
            ],
          ),
        ),
      ),
    );
  }
}
