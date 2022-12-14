import 'package:explore/repositries/country_provider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class DetailsWidget extends ConsumerWidget {
  String? text1;
  String? text2;
   DetailsWidget({super.key, this.text1, this.text2});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    var darkTheme = ref.watch(darkModeProvider);
    
        return Padding(
          padding: const EdgeInsets.symmetric(vertical:2.0),
          child: RichText(
               text: TextSpan(
                children: [
                  TextSpan(
                    text: text1,
                      style: GoogleFonts.poppins( color:
                      darkTheme == "true"? Colors.white : 
                       
                       Colors.black, fontSize: 14, fontWeight: FontWeight.w600)
                  ), TextSpan(
                    text:text2,
                      style: GoogleFonts.poppins(color:
                      darkTheme== "true"? Colors.white : 
                      
                      Colors.black, fontSize: 14, fontWeight: FontWeight.w300)
                  ),
                ]
               ),
              
              ),
        );
    
  }
}