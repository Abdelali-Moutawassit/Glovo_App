import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Category extends StatelessWidget {
  final String name;
  final Icon iconOfCategory;

  //we can implement later the routing system inside this util

  Category({required this.name, required this.iconOfCategory});

  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Row(
          children: [
            iconOfCategory,
            SizedBox(
              width: 20,
            ),
            Text(
              name,
              style: GoogleFonts.roboto(fontSize: 15, color: Colors.white),
            )
          ],
        ),
        Icon(
          Icons.arrow_forward_ios,
          color: Colors.grey,
          size: 18,
        )
      ],
    );
  }
}
