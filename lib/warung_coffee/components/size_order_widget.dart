import 'package:art_of_slicing/warung_coffee/components/detail_order_product_button.dart';
import 'package:flutter/material.dart';

class SizeOrderWidget extends StatelessWidget {
  const SizeOrderWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        const Text(
          'Size',
          style: TextStyle(
            fontFamily: 'DM',
            color: Color(0XFF1E2843),
            fontWeight: FontWeight.bold,
          ),
        ),
        Row(
          children: [
            Column(
              children: const [
                DetailOrderProductButton(text: 'S'),
                SizedBox(height: 6),
                Text(
                  '\$2.6',
                  style: TextStyle(
                    fontFamily: 'DM',
                    fontSize: 13,
                    fontWeight: FontWeight.w500,
                    color: Color(0XFFA1A6B3),
                  ),
                )
              ],
            ),
            const SizedBox(width: 16),
            Column(
              children: const [
                DetailOrderProductButton(text: 'M'),
                SizedBox(height: 6),
                Text(
                  '\$3.6',
                  style: TextStyle(
                    fontFamily: 'DM',
                    fontSize: 13,
                    fontWeight: FontWeight.w500,
                    color: Color(0XFFA1A6B3),
                  ),
                )
              ],
            ),
            const SizedBox(width: 16),
            Column(
              children: const [
                DetailOrderProductButton(text: 'L'),
                SizedBox(height: 6),
                Text(
                  '\$4.6',
                  style: TextStyle(
                    fontFamily: 'DM',
                    fontSize: 13,
                    fontWeight: FontWeight.w500,
                    color: Color(0XFFA1A6B3),
                  ),
                )
              ],
            ),
          ],
        )
      ],
    );
  }
}
