import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class AppStyles {
  static TextStyle title = GoogleFonts.poppins(
    fontSize: 28,
    fontWeight: FontWeight.bold,
    color: Colors.black87,
  );

  static TextStyle heading = GoogleFonts.poppins(
    fontSize: 20,
    fontWeight: FontWeight.w700,
    color: Colors.black87,
  );

  static TextStyle body = GoogleFonts.poppins(
    fontSize: 15,
    color: Colors.black87,
  );

  static TextStyle small = GoogleFonts.poppins(
    fontSize: 12,
    color: Colors.grey,
  );

  static TextStyle whiteTitle = GoogleFonts.poppins(
    fontSize: 34,
    fontWeight: FontWeight.bold,
    color: Colors.white,
  );

  static TextStyle whiteBody = GoogleFonts.poppins(
    fontSize: 13,
    color: Colors.white70,
  );
}