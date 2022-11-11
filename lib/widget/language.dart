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
      backgroundColor: Colors.transparent,
       builder: (context) {
        return Container(
         // height: 170.h,
          decoration: BoxDecoration(color: Colors.white,borderRadius: BorderRadius.only(topLeft: Radius.circular(25),topRight: Radius.circular(25))), child:   StatefulBuilder(
            builder: (BuildContext context, StateSetter setState) {
              return Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisSize: MainAxisSize.min,
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
                          child: Icon(Icons.close, color: innerCol, size: 20,),)
                      ],
                    ),
                  ),
                 Expanded(
                   child: ListView.builder(
                    itemCount: 5,
                    itemBuilder: (context, index) {
                     return Text("data");
                   }),
                 ),
                  CheckboxListTile(
                    //activeColor: mainColor,
                    checkColor: Colors.white,
                    title: Text(
                      "Delete for everyone",
                      style: GoogleFonts.poppins(
                        color: Colors.black,
                        fontSize: 14.sm,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                    onChanged: (delUs) {
                      setState(() {
                        selected = !delUs!;
                      });
                    },
                    value: !selected,
                    controlAffinity: ListTileControlAffinity.leading,
                  ),
                ],
              );
            },
          ),);
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
}