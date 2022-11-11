import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

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
      backgroundColor: Colors.transparent,
       builder: (context) {
        return Container(
          decoration: BoxDecoration(color: Colors.white,borderRadius: BorderRadius.only(topLeft: Radius.circular(25),topRight: Radius.circular(25))), );
      });
    },
     child: Container(
        padding: EdgeInsets.all(5.h),
        height: 40.h,
        width: 70.h,
        //color: const Color(0xFFFCFCFD),
        decoration: BoxDecoration(
          color: const Color(0xFFFCFCFD),
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