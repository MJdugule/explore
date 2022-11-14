import 'package:explore/repositries/country_provider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class TextLogo extends ConsumerWidget {

  
  double size;
  TextLogo({Key? key,  this.size = 30}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    var darkTheme = ref.watch(darkModeProvider);
    // return Consumer<CountryProvider>(
    //   builder: (context, CountryProvider themeProvider, child) {
        return Container(
          child: RichText(
           text: TextSpan(
            children: [
              TextSpan(
                text: "Explore",
                  style: GoogleFonts.lobsterTwo(color: 
                  
                 darkTheme== "true" ? Colors.white : 
                  
                  Colors.black, fontSize: size, fontWeight: FontWeight.w700)
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