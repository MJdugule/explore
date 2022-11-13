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
       isScrollControlled: true,
       shape: RoundedRectangleBorder(side: BorderSide(width: 0.1), borderRadius: BorderRadius.only(topLeft: Radius.circular(25),topRight: Radius.circular(25))),
     // backgroundColor: Colors.transparent,
       builder: (context) {
        return StatefulBuilder(
          builder: (BuildContext context, StateSetter setState) {
            return ListView(
              shrinkWrap: true,
              
              children: [
                Padding(
                  padding: const EdgeInsets.all(18.0),
                  child: Row(
                    children: [
                      Text("Languages", style: GoogleFonts.poppins(fontSize: 18.sm, ), ),
                      Spacer(),
                      Container(
                        color: containerCol,
                       // height: 10,
                       // padding: EdgeInsets.all(10),
                        child: InkWell(
                          onTap: () {
                            Navigator.pop(context);
                          },
                          child: Icon(Icons.close, color: innerCol, size: 15,)),)
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
              tile('普通话', ),
                            tile('بالعربية', ),
                            tile('বাঙ্গালী', ),
            
              ],
            );
          },
        );
      });
    },
     child: Container(
        padding: EdgeInsets.all(5.sm),
        // height: 40.h,
        // width: 60.h,
        
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
            ImageIcon(AssetImage("asset/world.png")),
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

