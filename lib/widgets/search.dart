import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:iconsax/iconsax.dart';
import '../constants.dart';

class Search extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return TextField(
      decoration: InputDecoration(
          hintText: 'Search food, drink, etc',
          hintStyle:
          GoogleFonts.poppins(fontSize: 16, fontWeight: FontWeight.w400),
          filled: true,
          prefixIcon: Icon(Iconsax.search_favorite),
          prefixIconColor: primaryColor,
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(
              28,
            ),
            borderSide: const BorderSide(
              width: 0,
              style: BorderStyle.none,
            ),
          ),
          contentPadding: const EdgeInsets.all(14)),
    );
  }
}
