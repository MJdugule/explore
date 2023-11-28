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
         
       shape: const RoundedRectangleBorder(side: BorderSide(width: 0.1), borderRadius: BorderRadius.only(topLeft: Radius.circular(25),topRight: Radius.circular(25))),
     // backgroundColor: Colors.transparent,
       builder: (context) {
        return SizedBox(
          height: 160,
          child: StatefulBuilder(
            builder: (BuildContext context, StateSetter setState) {
              return ListView(
                
                
                children: [
                  Padding(
                    padding: const EdgeInsets.all(18.0),
                    child: Row(
                      children: [
                        Text("Filter", style: GoogleFonts.poppins(fontSize: 18.sp, ), ),
                        const Spacer(),
                        Container(
                          color: containerCol,
                         // height: 10,
                         // padding: EdgeInsets.all(10),
                          child: InkWell(
                            onTap: () {
                              Navigator.pop(context);
                            },
                            child: const Icon(Icons.close, color: innerCol, size: 15,)),)
                      ],
                    ),
                  ),
                ListTile(
                  onTap: () {
                    showModalBottomSheet(
                      //isScrollControlled: true,
                      context: context, shape: const RoundedRectangleBorder(side: BorderSide(width: 0.1), borderRadius: BorderRadius.only(topLeft: Radius.circular(25),topRight: Radius.circular(25))), builder: ((context) {
                      
                      return StatefulBuilder(
                        builder: (BuildContext context, StateSetter setState) {
                          return Column(children: [
                            const ListTile(
                              dense: true,
                              leading: Text("Africa"),
                              trailing: Icon(Icons.circle_outlined),
                            ),
                            const ListTile(
                              dense: true,
                              leading: Text("Antarctica"),
                              trailing: Icon(Icons.circle_outlined),
                            ),
                            
                            const ListTile(
                              dense: true,
                              leading: Text("Australia"),
                              trailing: Icon(Icons.circle_outlined),
                            ),
                            const ListTile(
                              dense: true,
                              leading: Text("Europe"),
                              trailing: Icon(Icons.circle_outlined),
                            ),
                            const ListTile(
                              dense: true,
                              leading: Text("North America"),
                              trailing: Icon(Icons.circle_outlined),
                            ),
                            const ListTile(
                              dense: true,
                              leading: Text("South America"),
                              trailing: Icon(Icons.circle_outlined),
                            ),
                                const ListTile(
                              dense: true,
                              leading: Text("Time Zone"),
                              trailing: Icon(Icons.arrow_drop_down_outlined),
                            ),
                           Row(children: [
                                         TextButton(
                                      onPressed: () {
                                     
                                      },
                                      child: Container(
                                        width: MediaQuery.of(context).size.width/3,
                                        height: 50.sp,
                                        alignment: Alignment.center,
                                        decoration: BoxDecoration(
                                            border: Border.all(),
                                            borderRadius: BorderRadius.circular(2)),
                                        child: const Text(
                                          'Reset',
                                        
                                        ),
                                      ),
                                    ),
                                    const Spacer(),
                                    TextButton(
                                      onPressed: () {
                                     
                                      },
                                      child: Container(
                                        width: MediaQuery.of(context).size.width/2,
                                        height: 50.sp,
                                        alignment: Alignment.center,
                                        decoration: BoxDecoration(
                                            color:  Colors.orange,
                                            borderRadius: BorderRadius.circular(2)),
                                        child: const Text(
                                          'Show results',
                                          style: TextStyle(
                                             color: Colors.white
                                            ),
                                        ),
                                      ),
                                    ),
                                        ],) 
                          ],);
                        }
                      );
                    }));
                  },
    dense: true,
    leading: const Text("Continent"),
    trailing: const Icon(Icons.arrow_drop_down),
  ),         const ListTile(
    dense: true,
    leading: Text("Time Zone"),
    trailing: Icon(Icons.arrow_drop_down_outlined),
  ),
              Row(children: [
               TextButton(
                                  onPressed: () {
                                 
                                  },
                                  child: Container(
                                    width: MediaQuery.of(context).size.width/3,
                                    height: 50.sp,
                                    alignment: Alignment.center,
                                    decoration: BoxDecoration(
                                        border: Border.all(),
                                        borderRadius: BorderRadius.circular(2)),
                                    child: const Text(
                                      'Reset',
                                    
                                    ),
                                  ),
                                ),
                                const Spacer(),
                                TextButton(
                                  onPressed: () {
                                 
                                  },
                                  child: Container(
                                    width: MediaQuery.of(context).size.width/2,
                                    height: 50.sp,
                                    alignment: Alignment.center,
                                    decoration: BoxDecoration(
                                        color:  Colors.orange,
                                        borderRadius: BorderRadius.circular(2)),
                                    child: const Text(
                                      'Show results',
                                      style: TextStyle(
                                         
                                        ),
                                    ),
                                  ),
                                ),
              ],)
                ],
              );
            },
          ),
        );
      });
    },
     child: Container(
        padding: EdgeInsets.all(5.sp),
      
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
        child: const Row(
          children: [
            Icon(Icons.filter_alt_outlined),
            Text( 'Filter'),
          ],
   
        ),
   
      ),
   );
  }
}