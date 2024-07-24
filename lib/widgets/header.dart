import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:iconsax/iconsax.dart';

class Header extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "Welcome,",
              style: GoogleFonts.poppins(
                  fontSize: 16, fontWeight: FontWeight.w400),
            ),
            Text(
              "Montree MT",
              style: GoogleFonts.poppins(
                  fontSize: 20, fontWeight: FontWeight.w600),
            )
          ],
        ),
        const Spacer(),
        const Icon(
          Iconsax.shopping_cart,
          size: 28,
        ),
        const SizedBox(
          width: 20,
        ),
        const Icon(
          Iconsax.notification,
          size: 28,
        )
      ],
    );
  }
}
