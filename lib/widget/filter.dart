import 'package:explore/constant/colours.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

class Filter extends StatefulWidget {
  const Filter({super.key});

  @override
  State<Filter> createState() => _FilterState();
}

class _FilterState extends State<Filter> {
  @override
  Widget build(BuildContext context) {
   return GestureDetector(
    onTap: () {
         showModalBottomSheet(context: context,
         
       shape: RoundedRectangleBorder(side: BorderSide(width: 0.1), borderRadius: BorderRadius.only(topLeft: Radius.circular(25),topRight: Radius.circular(25))),
     // backgroundColor: Colors.transparent,
       builder: (context) {
        return StatefulBuilder(
          builder: (BuildContext context, StateSetter setState) {
            return ListView(
              
              
              children: [
                Padding(
                  padding: const EdgeInsets.all(18.0),
                  child: Row(
                    children: [
                      Text("Languages", style: GoogleFonts.poppins(fontSize: 17.h, ), ),
                      Spacer(),
                      Container(
                        color: containerCol,
                       // height: 10,
                       // padding: EdgeInsets.all(10),
                        child: Icon(Icons.close, color: innerCol, size: 15,),)
                    ],
                  ),
                ),
             
            
              ],
            );
          },
        );
      });
    },
     child: Container(
        padding: EdgeInsets.all(5.sm),
      
        //color: const Color(0xFFFCFCFD),
        decoration: BoxDecoration(
         // color: const Color(0xFFFCFCFD),
            borderRadius: BorderRadius.circular(5),
           
            border: Border.all(
              color:  Colors.black,
              style: BorderStyle.solid,
              width: 0.5,
            )
        ),
        child: Row(
          children: [
            const Icon(Icons.filter_alt_outlined),
            Text( 'Filter'),
          ],
   
        ),
   
      ),
   );
  }
}