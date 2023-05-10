import 'package:art_of_slicing/donation/commons/app_colors.dart';
import 'package:art_of_slicing/donation/pages/detail_donation_page.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class DonationListVerticalWidget extends StatelessWidget {
  const DonationListVerticalWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (builder) => const DetailDonationPage(),
          ),
        );
      },
      child: Container(
        padding: const EdgeInsets.all(10),
        height: 132,
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(20),
        ),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Image.asset('assets/donation/donation_three.png'),
            const SizedBox(width: 16),
            Expanded(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Earth',
                    style: GoogleFonts.nunitoSans(
                      fontWeight: FontWeight.bold,
                      color: AppColors.primaryColor,
                    ),
                  ),
                  const SizedBox(height: 4),
                  Text(
                    'Let’s make our earth\ngreen and healthy',
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
              ),
            )
          ],
        ),
      ),
    );
  }
}
