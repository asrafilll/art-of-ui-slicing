import 'package:art_of_slicing/donation/widgets/custom_nav_widget.dart';
import 'package:art_of_slicing/donation/widgets/donation_card.dart';
import 'package:art_of_slicing/donation/widgets/donation_category_widget.dart';
import 'package:art_of_slicing/donation/widgets/donation_list_vertical_widget.dart';
import 'package:art_of_slicing/donation/widgets/main_title.dart';
import 'package:flutter/material.dart';

class DonationHomePage extends StatelessWidget {
  const DonationHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0XFFFCFCFC),
      body: Padding(
        padding: const EdgeInsets.only(
          top: 75,
          left: 25,
          right: 25,
        ),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const CustomNavWidget(),
              const SizedBox(height: 30),
              const DonationMainTitle(),
              const SizedBox(height: 25),
              SizedBox(
                height: 240,
                child: ListView.separated(
                  scrollDirection: Axis.horizontal,
                  itemCount: 2,
                  itemBuilder: (context, index) => const DonationCardWidget(),
                  separatorBuilder: (context, index) =>
                      const SizedBox(width: 16),
                ),
              ),
              const SizedBox(height: 35),
              const DonationCategoryWidget(),
              const SizedBox(height: 25),
              ListView.separated(
                shrinkWrap: true,
                primary: false,
                physics: const NeverScrollableScrollPhysics(),
                itemCount: 6,
                itemBuilder: (context, index) =>
                    const DonationListVerticalWidget(),
                separatorBuilder: (context, index) => const SizedBox(width: 16),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
