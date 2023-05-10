import 'package:art_of_slicing/donation/commons/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class DonationCategoryWidget extends StatefulWidget {
  const DonationCategoryWidget({super.key});

  @override
  State<DonationCategoryWidget> createState() => _DonationCategoryWidgetState();
}

class _DonationCategoryWidgetState extends State<DonationCategoryWidget> {
  int current = 0;

  void _onTap(int index) {
    setState(() {
      current = index;
    });
  }

  List<String> dataCategory = [
    'For You',
    'Education',
    'Humanity',
    'Food',
    'Pure Water',
    'Home',
    'Earth',
    'Blood'
  ];

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 45,
      child: ListView.separated(
        separatorBuilder: (context, index) => const SizedBox(width: 8),
        scrollDirection: Axis.horizontal,
        itemCount: dataCategory.length,
        itemBuilder: (context, index) {
          return InkWell(
            onTap: () => _onTap(index),
            child: Container(
              padding: const EdgeInsets.symmetric(vertical: 8, horizontal: 25),
              alignment: Alignment.center,
              decoration: current == index
                  ? BoxDecoration(
                      color: Colors.black,
                      borderRadius: BorderRadius.circular(20),
                    )
                  : BoxDecoration(
                      color: Colors.transparent,
                      borderRadius: BorderRadius.circular(20),
                    ),
              child: Text(
                dataCategory[index],
                style: current == index
                    ? GoogleFonts.nunitoSans(
                        color: Colors.white,
                      )
                    : GoogleFonts.nunitoSans(
                        color: AppColors.textGreyColor,
                      ),
              ),
            ),
          );
        },
      ),
    );
  }
}
