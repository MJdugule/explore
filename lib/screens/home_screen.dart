import 'package:cached_network_image/cached_network_image.dart';
import 'package:explore/model/country_model.dart';
import 'package:explore/screens/detail_screen.dart';
import 'package:explore/service/country_service.dart';
import 'package:explore/widget/apptext_field.dart';
import 'package:explore/widget/filter.dart';
import 'package:explore/widget/language.dart';
import 'package:explore/widget/text_logo.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    //CountryService().getCountryDetails();
    return ScreenUtilInit(
      designSize: const Size(360, 800),
      builder: (context, child) {
        return Scaffold(appBar: PreferredSize( preferredSize: Size.fromHeight(50.h), child: SafeArea(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal:20.0),
            child: Container(child: Row(children: [TextLogo(), Spacer(), Container(
              height: 30,
              width: 30,
              color: Color(0xFFFCFCFD),
              child:  Icon(Icons.wb_sunny_outlined)
            )],),),
          ),
        ),),
        body: Column(children: [
          SizedBox(height: 20.h,),
          AppTextField(),
          Padding(
            padding:  EdgeInsets.symmetric(horizontal:20.0.h, vertical: 20.h),
            child: Row(children: [Language(), Spacer(), Filter()],),
          ),
          FutureBuilder<CountryModel>(
            future: CountryService().getCountryDetails(),
            builder: (context, snapshot) {
              if(snapshot.connectionState == ConnectionState.done){
                  return Expanded(
                child: ListView.builder(
                  itemCount: 1,
                  itemBuilder: ((context, index) {
                  return ListTile(
                    onTap: () {
                      Navigator.of(context).push(MaterialPageRoute(builder: (context) {
                        return DetailScreen(details: snapshot.data!,);
                      }));
                    },
                    leading: Container(
                      height: 45.h,
                      width: 45.h,
                      decoration: BoxDecoration(
                         
                         borderRadius: BorderRadius.all(Radius.circular(10))
                      ),
                     
                      child: ClipRRect(
                        borderRadius: BorderRadius.all(Radius.circular(10)),
                        child: CachedNetworkImage(
                          fit: BoxFit.cover,
                              imageUrl: snapshot.data!.flags!.png.toString(),
                              placeholder: (context, url) => Icon(Icons.flag),
                              errorWidget: (context, url, error) => Icon(Icons.flag),
                           ),
                      )),
                      title: Text(snapshot.data!.name!.common.toString()),
                      subtitle: Text(snapshot.data!.capital![0].toString()),
                  );
                })),
              );
              }
             return Center(child: CircularProgressIndicator());
            
            }
          )
        ]),
        );
      }
    );
  }
}