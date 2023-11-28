import 'package:explore/repositries/country_provider.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class DetailsWidget extends StatelessWidget {
  final String? text1;
  final String? text2;
   const DetailsWidget({super.key, this.text1, this.text2});

  @override
  Widget build(BuildContext context) {
     return Consumer(
      builder: (context, CountryProvider themeProvider, child) {
        return Padding(
          padding: const EdgeInsets.symmetric(vertical:2.0),
          child: RichText(
               text: TextSpan(
                children: [
                  TextSpan(
                    text: text1,
                      style: GoogleFonts.poppins( color: themeProvider.isDarkMode == "true"? Colors.white : Colors.black, fontSize: 14, fontWeight: FontWeight.w600)
                  ), TextSpan(
                    text:text2,
                      style: GoogleFonts.poppins(color: themeProvider.isDarkMode == "true"? Colors.white : Colors.black, fontSize: 14, fontWeight: FontWeight.w300)
                  ),
                ]
               ),
              
              ),
        );
      }
    );
  }
}