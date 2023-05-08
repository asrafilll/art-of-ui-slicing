import 'package:art_of_slicing/donation/commons/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class DonationMainTitle extends StatelessWidget {
  const DonationMainTitle({super.key});

  @override
  Widget build(BuildContext context) {
    return RichText(
      text: TextSpan(
        text: 'Welcome To\nKiria',
        style: GoogleFonts.nunitoSans().copyWith(
          fontSize: 24,
          fontWeight: FontWeight.bold,
          color: AppColors.blackMain100,
        ),
        children: [
          TextSpan(
            text: '.',
            style: GoogleFonts.nunitoSans().copyWith(
              fontSize: 24,
              fontWeight: FontWeight.bold,
              color: AppColors.primaryColor,
            ),
          ),
        ],
      ),
    );
  }
}
