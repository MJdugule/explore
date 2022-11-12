import 'package:explore/screens/home_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod/riverpod.dart';

void main() {
  runApp(ProviderScope(child: MyApp()));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Explore',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,  
      ),
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
      
      home: const HomeScreen()
    );
  }
}

