import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class AppTextField extends StatelessWidget {
   AppTextField({Key? key, required this.onChanged}) : super(key: key);
  void Function(String)? onChanged;

  @override
  Widget build(BuildContext context) {
    return Builder(
      builder: (context) {
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
              enabledBorder: const OutlineInputBorder(
                  borderRadius: BorderRadius.all(Radius.circular(10)),
                  borderSide: BorderSide(width: 1,color: Color.fromARGB(255, 72, 82, 101) )
              ),

              fillColor: Color.fromARGB(255, 72, 82, 101),
              filled: true,
              hintText: 'Search Country',
              hintStyle: TextStyle( color: Color.fromARGB(255, 143, 149, 163), fontSize: 15, fontWeight: FontWeight.w200, ),
              prefixIcon: const Icon(Icons.search, color: Color(0xFF667085),),

            ),

          ),

        );
      }
    );

  }
}