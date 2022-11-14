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
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';


// class HomeScreen extends ConsumerStatefulWidget {
//   const HomeScreen({super.key});

//   @override
//   _HomeScreenState createState() => _HomeScreenState();
// }

// class _HomeScreenState extends ConsumerState<HomeScreen> {
//   @override
//   Widget build(BuildContext context) {
//     return Container();
//   }
// }
class HomeScreen extends ConsumerStatefulWidget {
  const HomeScreen({super.key});

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends ConsumerState<HomeScreen> {
  @override
  Widget build(BuildContext context,) {
    
    var countries = ref.watch(allCountries);
    var dark = ref.watch(darkModeProvider);
   
    //CountryService().getCountryDetails();
    
            
                return ScreenUtilInit(
          designSize: const Size(360, 800),
          builder: (context, child) {
                    return Scaffold(appBar: PreferredSize( preferredSize: Size.fromHeight(50.sm), child: 

                         SafeArea(
                          child: Padding(
                            padding: const EdgeInsets.symmetric(horizontal:20.0),
                            child: Row(children: [TextLogo(), Spacer(), 
                             IconButton(icon:dark == "true" ? Icon(Icons.wb_sunny_outlined): Icon(Icons.dark_mode_outlined),onPressed: () {
                                   ref.read(darkModeProvider.notifier).toggle();
                                  // setState(() {
                                  //   dark = false;
                                  // });
                                 
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
                    body: countries.when(data: (data) {
                      var listProvider = StateProvider<List<CountryModel>>( (ref) => data);
                      var allList = ref.watch(listProvider);
                        return Column(
                              children: [
                                SizedBox(height: 20.h,),
                                
                                 AppTextField(onChanged: (p0) {
                          
                                //  .where((x) => x.name!.official!.startsWith(p0)).toList();
                                 },),
                    Padding(
                      padding:  EdgeInsets.symmetric(horizontal:20.0.sm, vertical: 20.h),
                      child: Row(children: [Language(), Spacer(), Filter()],),
                    ),
                                Expanded(
                          child: ListView.builder(
                                itemCount: allList.length,
                                itemBuilder: ((context, index) {
                                  allList
                                          
                                          .sort((a, b) => a.name!.official!.toString().compareTo(b.name!.official!.toString()));
                                  //data!.sort();
                                return Column(
                                  children: [
                                    
                                  index != 0 && allList[index].name!.official.toString()[0] == allList[index - 1].name!.official.toString()[0] ? Container(): Row(
                                    children: [
                                      Padding(
                                        padding: const EdgeInsets.symmetric(vertical:10.0, horizontal: 25),
                                        child: Text(allList[index].name!.official.toString()[0]),
                                      ),
                                    ],
                                  ),
                                    ListTile(
                                      contentPadding: EdgeInsets.symmetric(horizontal: 20),
                                      dense: true,
                                      onTap: () {
                                        Navigator.of(context).push(MaterialPageRoute(builder: (context) {
                                          return DetailScreen(details: allList[index],);
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
                                                imageUrl: allList[index].flags!.png.toString(),
                                                placeholder: (context, url) => Icon(Icons.flag),
                                                errorWidget: (context, url, error) => Icon(Icons.flag),
                                             ),
                                        )
                                        ),
                                        title: Text(allList[index].name!.official.toString()),
                                        subtitle: Text(allList[index].capital==null ? "N/A" : allList[index].capital![0].toString()),
                                    ),
                                  ],
                                );
                          })),
                        ),
                              ],
                            );
                    }, error: (error, stackTrace) {
                      return Center(child: Text(error.toString()),);
                    }, loading: () {
                       return Center(child: CircularProgressIndicator());
                    },));
                
                  }
                );
            
      
  }
}
bool dark = false;