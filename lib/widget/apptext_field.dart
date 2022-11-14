import 'package:explore/repositries/country_provider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class AppTextField extends ConsumerWidget {
   AppTextField({Key? key, required this.onChanged}) : super(key: key);
  void Function(String)? onChanged;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    var darkTheme = ref.watch(darkModeProvider);
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
                  borderSide: BorderSide(width: 1,color: 
                darkTheme == "true"? Color.fromARGB(255, 72, 82, 101) : 
                  Color(0xFFF2F4F7) )
              ),

              fillColor: 
              darkTheme == "true"? Color.fromARGB(255, 72, 82, 101) :
               Color.fromARGB(255, 231, 236, 242),
              filled: true,
              hintText: 'Search Country',
              hintStyle: TextStyle( color: 
              darkTheme == "true" ? Color.fromARGB(255, 207, 210, 219) : Color.fromARGB(255, 42, 49, 60), fontSize: 15, fontWeight: FontWeight.w200, ),
              prefixIcon: const Icon(Icons.search, color: Color(0xFF667085),),

            ),

          ),

        );
    

  }
}