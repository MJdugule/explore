import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class AppTextField extends StatelessWidget {
  const AppTextField({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(left: 20, right: 20),

      height: 50,
      decoration: BoxDecoration(
        // border: Border.all(width: 1, color: Colors.black54),
        borderRadius: BorderRadius.circular(5),
        color: Colors.white,
      ),
      child:  TextField(
        decoration: InputDecoration(
          focusedBorder: const OutlineInputBorder(
              borderRadius: BorderRadius.all(Radius.circular(10)),
              borderSide: BorderSide(width: 1,color: Color(0xFFF2F4F7))
          ),
          enabledBorder: const OutlineInputBorder(
              borderRadius: BorderRadius.all(Radius.circular(10)),
              borderSide: BorderSide(width: 1,color: Color(0xFFF2F4F7) )
          ),

          fillColor: Color.fromARGB(255, 231, 236, 244),
          filled: true,
          hintText: 'Search Country',
          hintStyle: GoogleFonts.aclonica( color: Color(0XFF667085), fontSize: 15, fontWeight: FontWeight.w200, ),
          prefixIcon: const Icon(Icons.search, color: Color(0xFF667085),),

        ),

      ),

    );

  }
}