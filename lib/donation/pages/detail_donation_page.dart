import 'package:art_of_slicing/donation/commons/app_colors.dart';
import 'package:art_of_slicing/donation/widgets/body_detail_donation_widget.dart';
import 'package:art_of_slicing/donation/widgets/custom_donation_info_widget.dart';
import 'package:art_of_slicing/donation/widgets/header_detail_donation_widget.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class DetailDonationPage extends StatelessWidget {
  const DetailDonationPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.transparent,
        foregroundColor: AppColors.blackMain100,
        actions: [
          IconButton(
            onPressed: () {},
            icon: const Icon(
              Icons.more_vert,
            ),
          )
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(
          horizontal: 25,
        ),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const HeaderDetailDonationWidget(),
              const SizedBox(height: 15),
              Row(
                children: const [
                  Expanded(
                    child: CustomDonationInfoWidget(
                      icon: 'assets/donation/send.png',
                      titleInfo: 'Target Amount',
                      detailInfo: '\$15000',
                    ),
                  ),
                  Expanded(
                    child: CustomDonationInfoWidget(
                      icon: 'assets/donation/chart.png',
                      titleInfo: 'Raised so far',
                      detailInfo: '\$7.532',
                    ),
                  )
                ],
              ),
              const SizedBox(height: 15),
              const BodyDetailDonationWidget(),
              const SizedBox(height: 52),
              InkWell(
                onTap: () {},
                child: Container(
                  alignment: Alignment.center,
                  height: 65,
                  decoration: BoxDecoration(
                    color: AppColors.primaryColor,
                    borderRadius: BorderRadius.circular(15),
                  ),
                  child: Text(
                    'Donate Now',
                    style: GoogleFonts.nunitoSans(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: 16,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
