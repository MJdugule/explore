import 'package:explore/repositries/country_provider.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class AppTextField extends StatelessWidget {
   AppTextField({Key? key, required this.onChanged}) : super(key: key);
  void Function(String)? onChanged;

  @override
  Widget build(BuildContext context) {
    return Consumer(
      builder: (context, CountryProvider themeProvider, child) {
        return Container(
          padding: const EdgeInsets.only(left: 20, right: 20),

          height: 50,
          decoration: BoxDecoration(
            // border: Border.all(width: 1, color: Colors.black54),
            borderRadius: BorderRadius.circular(5),
            //color: Colors.white,
          ),
          child:  TextField(
            onChanged: onChanged,
            decoration: InputDecoration(
              focusedBorder: const OutlineInputBorder(
                  borderRadius: BorderRadius.all(Radius.circular(10)),
                  borderSide: BorderSide(width: 1,color: Color(0xFFF2F4F7))
              ),
              enabledBorder:  OutlineInputBorder(
                  borderRadius: BorderRadius.all(Radius.circular(10)),
                  borderSide: BorderSide(width: 1,color: themeProvider.isDarkMode == "true"? Color.fromARGB(255, 72, 82, 101) : Color(0xFFF2F4F7) )
              ),

              fillColor: themeProvider.isDarkMode == "true"? Color.fromARGB(255, 72, 82, 101) : Color(0xFFF2F4F7),
              filled: true,
              hintText: 'Search Country',
              hintStyle: TextStyle( color: Color.fromARGB(255, 108, 113, 125), fontSize: 15, fontWeight: FontWeight.w200, ),
              prefixIcon: const Icon(Icons.search, color: Color(0xFF667085),),

            ),

          ),

        );
      }
    );

  }
}