import 'package:explore/repositries/country_provider.dart';
import 'package:explore/screens/home_screen.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
   return ChangeNotifierProvider(
      create: (context) => CountryProvider(),
    child: Consumer<CountryProvider>(
    builder: (context, CountryProvider themeProvider, child) {
        return MaterialApp(
          title: 'Explore',
          theme:themeProvider.isDarkMode == "true" ? ThemeData(
            brightness: Brightness.dark,
            primaryColor: Colors.purple,            // New
            hintColor: Colors.purpleAccent, 
            bottomSheetTheme: const BottomSheetThemeData(backgroundColor: Color.fromARGB(255, 8, 17, 39)),
           
            scaffoldBackgroundColor: const Color.fromARGB(255, 8, 17, 39)    // New
          ):ThemeData.light(
            useMaterial3: true
          ),
          debugShowCheckedModeBanner: false,
          
            
          //      darkTheme: ThemeData(
          //   brightness: Brightness.dark,
          //   primaryColor: Colors.purple,            // New
          //   accentColor: Colors.purpleAccent, 
          //   bottomSheetTheme: BottomSheetThemeData(backgroundColor: Color.fromARGB(255, 8, 17, 39)), 
          //   scaffoldBackgroundColor: Color.fromARGB(255, 8, 17, 39)    // New
          // ),      
                                 // New
           
                           // New
          
          home: const HomeScreen()
        );
      }
   ));
  }
}

