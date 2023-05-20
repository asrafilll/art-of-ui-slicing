import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class AccountSettingTileWidget extends StatelessWidget {
  const AccountSettingTileWidget({
    super.key,
    required this.title,
    required this.borderRadius,
  });

  final String title;
  final BorderRadiusGeometry borderRadius;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 56,
      padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 16),
      decoration: BoxDecoration(
        borderRadius: borderRadius,
        color: Colors.white,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            title,
            style: GoogleFonts.poppins(
              fontWeight: FontWeight.w500,
              color: const Color(0XFF222741),
            ),
          ),
          const Icon(
            Icons.chevron_right,
            color: Color(
              0XFFDCDDDF,
            ),
          ),
        ],
      ),
    );
  }
}
