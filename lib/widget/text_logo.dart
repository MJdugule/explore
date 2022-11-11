import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class TextLogo extends StatelessWidget {

  
  double size;
  TextLogo({Key? key,  this.size = 30}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: RichText(
       text: TextSpan(
        children: [
          TextSpan(
            text: "Explore",
              style: GoogleFonts.lobster(color: Colors.black, fontSize: size, fontWeight: FontWeight.w500)
          ), TextSpan(
            text: ".",
              style: GoogleFonts.lobster(color: Colors.orange, fontSize: 40, fontWeight: FontWeight.w500)
          ),
        ]
       ),
      
      ),
    );
  }
}