import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import '../models/food_category.dart';

class Category extends StatelessWidget {
  final List<FoodCategory> foodCategory;

  Category({required this.foodCategory});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              "Browse by category",
              style: GoogleFonts.poppins(
                  fontSize: 20, fontWeight: FontWeight.w600),
            ),
            MaterialButton(
              onPressed: () {},
              color: Color(0xfff1f1ef),
              elevation: 0,
              height: 28,
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(24)),
              child: Text(
                "View All",
                style: GoogleFonts.poppins(
                    fontSize: 13, fontWeight: FontWeight.w500),
              ),
            )
          ],
        ),
        Container(
            height: 118,
            child: ListView.builder(
              itemCount: foodCategory.length,
              shrinkWrap: true,
              scrollDirection: Axis.horizontal,
              itemExtent: 100,
              itemBuilder: ((context, index) => Column(
                children: [
                  SizedBox(
                    width: 80,
                    height: 80,
                    child: ClipRRect(
                        borderRadius: BorderRadius.circular(16),
                        child: Image.network(
                          '${foodCategory[index].imageUrl}',
                          fit: BoxFit.cover,
                        )),
                  ),
                  const SizedBox(height: 8),
                  Text(
                    "${foodCategory[index].foodName}",
                    style: GoogleFonts.poppins(
                        fontSize: 16, fontWeight: FontWeight.w500),
                  ),
                ],
              )),
            ))
      ],
    );
  }
}
