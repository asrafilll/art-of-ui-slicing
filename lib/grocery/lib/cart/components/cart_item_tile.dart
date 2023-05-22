import 'package:art_of_slicing/grocery/common/asset_color.dart';
import 'package:art_of_slicing/grocery/common/custom_text_style.dart';
import 'package:flutter/material.dart';

class CartItemTile extends StatelessWidget {
  const CartItemTile({
    super.key,
    required this.img,
    required this.title,
    required this.price,
    required this.qty,
  });

  final String img;
  final String title;
  final String price;
  final int qty;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: Container(
        width: 50,
        height: 50,
        decoration: BoxDecoration(
          image: DecorationImage(
            fit: BoxFit.cover,
            image: AssetImage(
              img,
            ),
          ),
        ),
      ),
      title: Text(
        title,
        style: KTextStyle.regularTextStyle,
      ),
      subtitle: Text(
        price,
        style: KTextStyle.regularTextStyle,
      ),
      trailing: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          InkWell(
            onTap: () {},
            child: Container(
              width: 40,
              height: 40,
              decoration: BoxDecoration(
                color: AssetColor.lightGrayBGColor,
                borderRadius: BorderRadius.circular(100),
              ),
              child: const Icon(Icons.remove),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 11),
            child: Text(qty.toString()),
          ),
          InkWell(
            onTap: () {},
            child: Container(
              width: 40,
              height: 40,
              decoration: BoxDecoration(
                color: AssetColor.lightGrayBGColor,
                borderRadius: BorderRadius.circular(100),
              ),
              child: const Icon(Icons.add),
            ),
          ),
        ],
      ),
    );
  }
}
