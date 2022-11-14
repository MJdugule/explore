import 'package:explore/repositries/country_provider.dart';
import 'package:explore/screens/home_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

void main() {
  runApp(const ProviderScope(child: MyApp()));
}

class MyApp extends ConsumerWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context, WidgetRef ref) {
   var darkTheme = ref.watch(darkModeProvider);
       return MaterialApp(
         title: 'Explore',
         theme: darkTheme == "true" ?
         ThemeData(
          appBarTheme: AppBarTheme(iconTheme: IconThemeData(color: Colors.white)),
          brightness: Brightness.dark,
           primaryColor: Colors.purple,            // New
           accentColor: Colors.purpleAccent, 
           bottomSheetTheme: BottomSheetThemeData(backgroundColor: Color.fromARGB(255, 8, 17, 39)), 
           scaffoldBackgroundColor: Color.fromARGB(255, 8, 17, 39)    // New
         ) :ThemeData(appBarTheme: AppBarTheme(brightness: Brightness.light, iconTheme: IconThemeData(color: Colors.black)),),
         debugShowCheckedModeBanner: false,
         
           
              darkTheme: ThemeData(
           brightness: Brightness.dark,
           primaryColor: Colors.purple,            // New
           accentColor: Colors.purpleAccent, 
           bottomSheetTheme: BottomSheetThemeData(backgroundColor: Color.fromARGB(255, 8, 17, 39)), 
           scaffoldBackgroundColor: Color.fromARGB(255, 8, 17, 39)    // New
         ),      
                                // New
          
                          // New
         
         home:  HomeScreen()
       );
   
  }
}

