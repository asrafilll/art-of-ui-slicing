import 'package:art_of_slicing/donation/commons/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class DonationCardWidget extends StatelessWidget {
  const DonationCardWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 310,
      height: 235,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(20),
      ),
      child: Column(
        children: [
          Container(
            width: 310,
            height: 135,
            decoration: const BoxDecoration(
              image: DecorationImage(
                fit: BoxFit.cover,
                image: AssetImage(
                  'assets/donation/donation_two.png',
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(
              top: 10,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Education',
                  style: GoogleFonts.nunitoSans().copyWith(
                    fontWeight: FontWeight.bold,
                    color: AppColors.primaryColor,
                  ),
                ),
                Text(
                  'Let’s help the palestinian for better \neducation',
                  style: GoogleFonts.nunitoSans().copyWith(
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                    color: AppColors.blackMain100,
                  ),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
