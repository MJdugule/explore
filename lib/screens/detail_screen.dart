import 'package:explore/model/country_model.dart';
import 'package:explore/widget/details_wid.dart';
import 'package:explore/widget/slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

class DetailScreen extends StatefulWidget {
  CountryModel? details;
   DetailScreen({super.key, this.details});

  @override
  State<DetailScreen> createState() => _DetailScreenState();
}

class _DetailScreenState extends State<DetailScreen> {
  @override
  Widget build(BuildContext context) {
    
    return Scaffold(
      appBar: AppBar(centerTitle: true, title: Text(widget.details!.name!.common.toString()), backgroundColor: Colors.transparent, elevation: 0, titleTextStyle: GoogleFonts.poppins( fontWeight: FontWeight.w600, fontSize: 18.sm),),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal:18.0),
        child: ListView(
         children: [
          ImageSlider(images: [widget.details!.flags!.png.toString(), widget.details!.coatOfArms!.png.toString(), widget.details!.maps!.openStreetMaps.toString()]),
       DetailsWidget(text1: "Population: ", text2: widget.details!.population.toString(),),
       DetailsWidget(text1: "Region: ", text2: widget.details!.region.toString(),),
       DetailsWidget(text1: "Capital: ", text2: widget.details!.capital==null ? "N/A" : widget.details!.capital![0].toString(),),
       DetailsWidget(text1: "Motto: ", text2: widget.details!.status.toString(),),
       SizedBox(height: 16.h,),
       DetailsWidget(text1: "Official language: ", text2: widget.details!.languages == null ?"N/A" : widget.details!.languages.toString(),),
       DetailsWidget(text1: "Ethic group: ", text2: widget.details!.population.toString(),),
       DetailsWidget(text1: "Religion: ", text2: "Christianity".toString(),),DetailsWidget(text1: "Government: ", text2: widget.details!.cca2.toString(),),
       SizedBox(height: 16.h,),
       DetailsWidget(text1: "Independence: ", text2: widget.details!.independent.toString(),),
       DetailsWidget(text1: "Area: ", text2: "${widget.details!.area.toString()} km2",),
       DetailsWidget(text1: "Currency: ", text2: "Euro"),
       DetailsWidget(text1: "GDP: ", text2: widget.details!.idd!.root.toString(),),
       SizedBox(height: 16.h,),
       DetailsWidget(text1: "Time zone: ", text2: widget.details!.timezones![0].toString(),),
       DetailsWidget(text1: "Date format: ", text2: "dd/mm/yyyy",),
       DetailsWidget(text1: "Dialing code: ", text2: "+576",),
       DetailsWidget(text1: "Driving side: ", text2: widget.details!.car!.side. toString(),),
         ],
        ),
      ),
    );
  }
}