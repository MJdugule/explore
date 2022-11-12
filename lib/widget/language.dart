import 'package:explore/constant/colours.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

class Language extends StatelessWidget {
  const Language({super.key});

  
  @override
  Widget build(BuildContext context) {
    bool selected = false;
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
              tile( "Bagari"),
              tile(
                 "Deutch"),
              tile(
                 "English"),
              tile( "Espanol"),
              tile( "Francaise"),
              tile( "Italiano"),
              tile( "Portugues"),
              tile( "Pycckua"),
              tile( "Svenska"),
              tile( "Turkce"),
              tile( "Svenska"),
            
              ],
            );
          },
        );
      });
    },
     child: Container(
        padding: EdgeInsets.all(5.h),
        height: 40.h,
        width: 60.h,
        
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(5),
         
          border: Border.all(
            color: Colors.black,
            style: BorderStyle.solid,
            width: 0.5,
          )
        ),
        child: Row(
          children: [
            Icon(Icons.location_city),
            Text('EN'),
          ],
   
        ),
   
      ),
   );
  }
   ListTile tile(language) {
    return ListTile(
    dense: true,
    leading: Text(language.toString()),
    trailing: Icon(Icons.circle_outlined),
  );
  }
}

