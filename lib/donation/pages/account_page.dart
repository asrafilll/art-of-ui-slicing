import 'package:art_of_slicing/donation/widgets/account_setting_tile_widget.dart';
import 'package:art_of_slicing/donation/widgets/custom_divider.dart';
import 'package:art_of_slicing/donation/widgets/header_account_page_widget.dart';
import 'package:art_of_slicing/donation/widgets/logout_widget.dart';
import 'package:art_of_slicing/donation/widgets/section_title_text.dart';
import 'package:flutter/material.dart';

class DonationAccountPage extends StatelessWidget {
  const DonationAccountPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0XFFF8F8F8),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const HeaderAccountPage(),
            Padding(
              padding: const EdgeInsets.all(24),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: const [
                  SectionTitleText(title: 'App Setting'),
                  SizedBox(height: 16),
                  AccountSettingTileWidget(
                    title: 'Notification',
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(12),
                      topRight: Radius.circular(12),
                    ),
                  ),
                  CustomDivider(),
                  AccountSettingTileWidget(
                    title: 'Language',
                    borderRadius: BorderRadius.only(
                      bottomLeft: Radius.circular(12),
                      bottomRight: Radius.circular(12),
                    ),
                  ),
                  SizedBox(height: 16),
                  SectionTitleText(title: 'General Info'),
                  SizedBox(height: 16),
                  AccountSettingTileWidget(
                    title: 'Help Centre',
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(12),
                      topRight: Radius.circular(12),
                    ),
                  ),
                  CustomDivider(),
                  AccountSettingTileWidget(
                    title: 'Terms & Conditions',
                    borderRadius: BorderRadius.zero,
                  ),
                  CustomDivider(),
                  AccountSettingTileWidget(
                    title: 'Privacy Policy',
                    borderRadius: BorderRadius.only(
                      bottomLeft: Radius.circular(12),
                      bottomRight: Radius.circular(12),
                    ),
                  ),
                  SizedBox(height: 16),
                  LogOutWidget(),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
