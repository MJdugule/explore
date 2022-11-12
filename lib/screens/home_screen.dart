import 'package:cached_network_image/cached_network_image.dart';
import 'package:explore/model/country_model.dart';
import 'package:explore/repositries/country_provider.dart';
import 'package:explore/screens/detail_screen.dart';
import 'package:explore/service/country_service.dart';
import 'package:explore/widget/apptext_field.dart';
import 'package:explore/widget/filter.dart';
import 'package:explore/widget/language.dart';
import 'package:explore/widget/text_logo.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:provider/provider.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}
bool dark = false;
class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    //CountryService().getCountryDetails();
    
            
                return ScreenUtilInit(
          designSize: const Size(360, 800),
          builder: (context, child) {
                    return Scaffold(appBar: PreferredSize( preferredSize: Size.fromHeight(50.sm), child: 

                         SafeArea(
                          child: Padding(
                            padding: const EdgeInsets.symmetric(horizontal:20.0),
                            child: Row(children: [TextLogo(), Spacer(), Consumer(
                              builder: (context, CountryProvider themeProvider, child) {
                                return IconButton(icon: themeProvider.isDarkMode == "true" ? Icon(Icons.wb_sunny_outlined): Icon(Icons.dark_mode_outlined),onPressed: () {
                                   themeProvider.isDarkMode == "false" ?themeProvider.isDark = "true": themeProvider.isDark = "false";
                                  // setState(() {
                                  //   dark = false;
                                  // });
                                   });
                              }
                            ), 
                            // dark ? IconButton(icon: Icon(Icons.dark_mode_outlined), onPressed: () {
                            //   setState(() {
                            //     dark = false;
                            //   }); }): IconButton(icon: Icon(Icons.wb_sunny_outlined), onPressed: () {
                            //   setState(() {
                            //     dark = true;
                            //   });
                            // },)
                            
                            ],),
                          ),
                        ),
                     ),
                    body: FutureBuilder<List<CountryModel>>(
                      future: CountryService().getCountryDetails(),
                      builder: (context, snapshot) {
                        if(snapshot.connectionState == ConnectionState.done){
                            return Column(
                              children: [
                                SizedBox(height: 20.h,),
                                 AppTextField(onChanged: (p0) {
                                   
                                 },),
                    Padding(
                      padding:  EdgeInsets.symmetric(horizontal:20.0.sm, vertical: 20.h),
                      child: Row(children: [Language(), Spacer(), Filter()],),
                    ),
                                Expanded(
                          child: ListView.builder(
                                itemCount: snapshot.data!.length,
                                itemBuilder: ((context, index) {
                                  snapshot.data!
                                          
                                          .sort((a, b) => a.name!.official!.toString().compareTo(b.name!.official!.toString()));
                                  //snapshot.data!.sort();
                                return Column(
                                  children: [
                                    
                                  index != 0 && snapshot.data![index].name!.official.toString()[0] == snapshot.data![index - 1].name!.official.toString()[0] ? Container(): Row(
                                    children: [
                                      Padding(
                                        padding: const EdgeInsets.symmetric(vertical:10.0, horizontal: 25),
                                        child: Text(snapshot.data![index].name!.official.toString()[0]),
                                      ),
                                    ],
                                  ),
                                    ListTile(
                                      contentPadding: EdgeInsets.symmetric(horizontal: 20),
                                      dense: true,
                                      onTap: () {
                                        Navigator.of(context).push(MaterialPageRoute(builder: (context) {
                                          return DetailScreen(details: snapshot.data![index],);
                                        }));
                                      },
                                      leading: Container(
                                        height: 45.sm,
                                        width: 45.sm,
                                        decoration: BoxDecoration(
                                           
                                           borderRadius: BorderRadius.all(Radius.circular(10))
                                        ),
                                       
                                        child: ClipRRect(
                                          borderRadius: BorderRadius.all(Radius.circular(10)),
                                          child: CachedNetworkImage(
                                            fit: BoxFit.cover,
                                                imageUrl: snapshot.data![index].flags!.png.toString(),
                                                placeholder: (context, url) => Icon(Icons.flag),
                                                errorWidget: (context, url, error) => Icon(Icons.flag),
                                             ),
                                        )
                                        ),
                                        title: Text(snapshot.data![index].name!.official.toString()),
                                        subtitle: Text(snapshot.data![index].capital==null ? "N/A" : snapshot.data![index].capital![0].toString()),
                                    ),
                                  ],
                                );
                          })),
                        ),
                              ],
                            );
                        }
                       return Center(child: CircularProgressIndicator());
                      
                      }
                    ),
                    );
                  }
                );
            
      
  }
}