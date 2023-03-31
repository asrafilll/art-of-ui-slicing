import 'package:art_of_slicing/warung_coffee/components/item_amout_order.dart';
import 'package:art_of_slicing/warung_coffee/components/primary_button.dart';
import 'package:art_of_slicing/warung_coffee/components/product_detail_hero.dart';
import 'package:art_of_slicing/warung_coffee/components/size_order_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class DetailProductPage extends StatelessWidget {
  const DetailProductPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        systemOverlayStyle: SystemUiOverlayStyle.dark,
        elevation: 0,
        backgroundColor: Colors.transparent,
        foregroundColor: const Color(0XFF1E2843),
        actions: [
          IconButton(
            onPressed: () {},
            icon: const Icon(
              Icons.shopping_cart_outlined,
              color: Color(0XFF1E2843),
            ),
          )
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(
          horizontal: 36,
          vertical: 88,
        ),
        child: SingleChildScrollView(
          child: Center(
            child: Column(
              children: [
                const ProductDetailHero(),
                const SizedBox(height: 18),
                const ItemAmountOrder(),
                const SizedBox(height: 18),
                const SizeOrderWidget(),
                const SizedBox(height: 18),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: const [
                    Text(
                      'Delivery Time',
                      style: TextStyle(
                        fontFamily: 'DM',
                        fontSize: 14,
                        fontWeight: FontWeight.w500,
                        color: Color(0XFFA1A6B3),
                      ),
                    ),
                    Text(
                      '45 Mins',
                      style: TextStyle(
                        fontFamily: 'DM',
                        color: Color(0XFF1E2843),
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 18),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: const [
                    Text(
                      'Total Price',
                      style: TextStyle(
                        fontFamily: 'DM',
                        fontSize: 14,
                        fontWeight: FontWeight.w500,
                        color: Color(0XFFA1A6B3),
                      ),
                    ),
                    Text(
                      '\$7.2',
                      style: TextStyle(
                        fontFamily: 'DM',
                        color: Color(0XFF1E2843),
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 49),
                WCPrimaryButton(
                  title: 'Place Order',
                  onPressed: () {},
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
