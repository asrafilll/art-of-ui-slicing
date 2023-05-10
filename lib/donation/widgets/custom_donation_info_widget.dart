import 'package:art_of_slicing/donation/commons/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class CustomDonationInfoWidget extends StatelessWidget {
  const CustomDonationInfoWidget({
    super.key,
    required this.icon,
    required this.titleInfo,
    required this.detailInfo,
  });

  final String icon;
  final String titleInfo;
  final String detailInfo;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
          width: 42,
          height: 42,
          padding: const EdgeInsets.all(8),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(8),
            color: AppColors.primaryColor,
          ),
          child: Image.asset(
            icon,
            width: 24,
            height: 24,
          ),
        ),
        const SizedBox(width: 10),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              titleInfo,
              style: GoogleFonts.nunitoSans(
                fontWeight: FontWeight.w600,
                color: AppColors.textGreyColor,
              ),
            ),
            Text(
              detailInfo,
              style: GoogleFonts.nunitoSans(
                fontWeight: FontWeight.w600,
                color: AppColors.blackMain100,
              ),
            ),
          ],
        ),
      ],
    );
  }
}
