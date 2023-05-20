import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class LogOutWidget extends StatelessWidget {
  const LogOutWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 56,
      padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 16),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(12),
        color: Colors.white,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            'Log Out',
            style: GoogleFonts.poppins(
              fontWeight: FontWeight.w500,
              color: Colors.red,
            ),
          ),
          const Icon(
            Icons.logout,
            color: Colors.red,
          ),
        ],
      ),
    );
  }
}
