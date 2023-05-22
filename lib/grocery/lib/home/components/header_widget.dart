import 'package:art_of_slicing/grocery/common/asset_color.dart';
import 'package:art_of_slicing/grocery/lib/home/components/header_delivery_widget.dart';
import 'package:art_of_slicing/grocery/lib/home/components/header_row.dart';
import 'package:art_of_slicing/grocery/lib/home/components/header_search_field_widget.dart';
import 'package:flutter/material.dart';

class HomeHeader extends StatelessWidget {
  const HomeHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 252,
      width: double.infinity,
      decoration: const BoxDecoration(
        color: AssetColor.primaryColor,
      ),
      child: Padding(
        padding: const EdgeInsets.only(
          left: 20,
          right: 20,
          top: 50,
        ),
        child: Column(
          children: const [
            TitleHeaderRow(),
            SizedBox(height: 35),
            HeaderSearchFieldWidget(),
            SizedBox(height: 29),
            HeaderDeliveryWidget(),
          ],
        ),
      ),
    );
  }
}
