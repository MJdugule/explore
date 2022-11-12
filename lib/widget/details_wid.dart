import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class DetailsWidget extends StatelessWidget {
  String? text1;
  String? text2;
   DetailsWidget({super.key, this.text1, this.text2});

  @override
  Widget build(BuildContext context) {
    return    Padding(
      padding: const EdgeInsets.symmetric(vertical:2.0),
      child: RichText(
           text: TextSpan(
            children: [
              TextSpan(
                text: text1,
                  style: GoogleFonts.poppins(color: Colors.black, fontSize: 14, fontWeight: FontWeight.w500)
              ), TextSpan(
                text:text2,
                  style: GoogleFonts.poppins(color: Colors.black, fontSize: 14, fontWeight: FontWeight.w300)
              ),
            ]
           ),
          
          ),
    );
  }
}