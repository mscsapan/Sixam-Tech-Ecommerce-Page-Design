import 'package:google_fonts/google_fonts.dart';
import 'package:flutter/material.dart';
import 'package:sixam_tech_assignment/app_colors/app_colors.dart';

TextStyle addressStyle() {
  return GoogleFonts.poppins(
      fontWeight: FontWeight.w400,
      fontSize: 16.0,
      color: const Color(0xFF9F9F9F));
  //const TextStyle(fontSize: 12.0, color: Color(0xFF9F9F9F));
}

TextStyle hintStyle() {
  return GoogleFonts.poppins(
      fontWeight: FontWeight.w400,
      fontSize: 15.0,
      color: const Color(0xFF9F9F9F));
  //const TextStyle(fontSize: 12.0, color: Color(0xFF9F9F9F));
}

TextStyle headingStyle() {
  return GoogleFonts.roboto(
      fontWeight: FontWeight.w500, fontSize: 16.0, color: mHeadingColor);
  //const TextStyle(fontSize: 12.0, color: Color(0xFF9F9F9F));
}

TextStyle vieAllStyle() {
  return GoogleFonts.poppins(
      fontWeight: FontWeight.w500,
      fontSize: 14.0,
      color: mActiveColor,
      decoration: TextDecoration.underline);
  //const TextStyle(fontSize: 12.0, color: Color(0xFF9F9F9F));
}

TextStyle menuTitleStyle() {
  return GoogleFonts.poppins(
    fontWeight: FontWeight.w500,
    fontSize: 14.0,
    color: mHeadingColor,
  );
  //const TextStyle(fontSize: 12.0, color: Color(0xFF9F9F9F));
}
