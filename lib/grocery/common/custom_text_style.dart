import 'package:art_of_slicing/grocery/common/asset_color.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class KTextStyle {
  static final welcomeTitle = GoogleFonts.manrope(
    fontSize: 30,
    fontWeight: FontWeight.bold,
    color: AssetColor.whiteAppColor,
  );

  static final welcomeSubtitle = GoogleFonts.manrope(
    fontSize: 18,
    fontWeight: FontWeight.w500,
    color: const Color(0XFFB2BBCE),
  );

  static final mediumTextStyle = GoogleFonts.manrope(
    fontSize: 16,
    fontWeight: FontWeight.w400,
    color: AssetColor.blackTextColor,
  );

  static final regularTextStyle = GoogleFonts.manrope(
    fontSize: 14,
    fontWeight: FontWeight.w400,
    color: AssetColor.blackTextColor,
  );

  static final smallTextStyle = GoogleFonts.manrope(
    fontSize: 12,
    fontWeight: FontWeight.w400,
    color: AssetColor.blackTextColor,
  );
}
