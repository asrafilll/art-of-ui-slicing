import 'package:art_of_slicing/donation/commons/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class HeaderDetailDonationWidget extends StatelessWidget {
  const HeaderDetailDonationWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          height: 141,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20),
            image: const DecorationImage(
              fit: BoxFit.cover,
              image: AssetImage(
                'assets/donation/donation_one.png',
              ),
            ),
          ),
        ),
        const SizedBox(height: 15),
        Text(
          'Education',
          style: GoogleFonts.nunitoSans(
            fontWeight: FontWeight.bold,
            color: AppColors.primaryColor,
          ),
        ),
        const SizedBox(height: 4),
        Text(
          'Let’s help the palestinian for better\neducation',
          style: GoogleFonts.nunitoSans(
            fontWeight: FontWeight.bold,
            fontSize: 16,
            color: AppColors.blackMain100,
          ),
        ),
        const SizedBox(height: 4),
        RichText(
          text: TextSpan(
            text: '22',
            style: GoogleFonts.nunitoSans(
              fontWeight: FontWeight.bold,
              color: AppColors.primaryColor,
            ),
            children: [
              TextSpan(
                text: ' Days Left',
                style: GoogleFonts.nunitoSans(
                  fontWeight: FontWeight.w600,
                  color: AppColors.textGreyColor,
                ),
              )
            ],
          ),
        ),
      ],
    );
  }
}
