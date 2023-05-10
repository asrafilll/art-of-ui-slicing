import 'package:art_of_slicing/donation/commons/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class BodyDetailDonationWidget extends StatelessWidget {
  const BodyDetailDonationWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        RichText(
          text: TextSpan(
            text: 'By',
            style: GoogleFonts.nunitoSans(
              fontWeight: FontWeight.w600,
              color: AppColors.textGreyColor,
            ),
            children: [
              TextSpan(
                text: ' Care Organization',
                style: GoogleFonts.nunitoSans(
                  fontWeight: FontWeight.bold,
                  color: AppColors.primaryColor,
                ),
              )
            ],
          ),
        ),
        const SizedBox(height: 15),
        Text(
          '''The mission of this donation is to cultivate highly trained and capable Palestinian graduates with a proficiency in conversational English that will lead to their successful participation in the labor force and their contribution to the societal development of the Palestinian community.''',
          style: GoogleFonts.nunitoSans().copyWith(
            fontWeight: FontWeight.w500,
            color: AppColors.blackMain100.withOpacity(0.8),
          ),
        )
      ],
    );
  }
}
