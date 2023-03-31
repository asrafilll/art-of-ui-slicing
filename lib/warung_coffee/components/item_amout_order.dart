import 'package:art_of_slicing/warung_coffee/components/detail_order_product_button.dart';
import 'package:flutter/material.dart';

class ItemAmountOrder extends StatelessWidget {
  const ItemAmountOrder({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        const Text(
          'Items',
          style: TextStyle(
            fontFamily: 'DM',
            color: Color(0XFF1E2843),
            fontWeight: FontWeight.bold,
          ),
        ),
        Row(
          children: const [
            DetailOrderProductButton(text: '-'),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 16),
              child: Text(
                '2',
                style: TextStyle(
                  fontFamily: 'DM',
                  color: Color(0XFF1E2843),
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            DetailOrderProductButton(text: '+'),
          ],
        ),
      ],
    );
  }
}
