import 'package:explore/model/country_model.dart';
import 'package:explore/service/country_service.dart';
import 'package:explore/service/theme_service.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';


// class CountryProvider extends ChangeNotifier {

//   ThemeMode themeMode = ThemeMode.system;
//   List<CountryModel> list = [];
//   List<CountryModel> get allList => list;


//   String? _isDark = "false";
//   late ThemePreferences _preferences;
//   String get isDarkMode => _isDark!;

//   CountryProvider() {
//     _isDark = "false";
//     _preferences = ThemePreferences();
//     getPreferences();
//   }

//   set isDark(String value) {
//     _isDark = value;
//     _preferences.setTheme(value);
//     notifyListeners();
//   }

//   getPreferences() async {
//     _isDark = await _preferences.getTheme() == null ? "false" : _preferences.getTheme();
//     notifyListeners();
//   }

//   Future<List<CountryModel>> countryList()async{
//      var fake = await CountryService().getCountryDetails();
//      list = fake;
//      notifyListeners();
     
//      return list;
    
//   }
// }
class DarkModeNotifier extends StateNotifier<String> {
  var storage =  FlutterSecureStorage();

  _init() async {
   
    var darkMode =  await storage.read(key: "darkMode");
    state = darkMode ?? "false";
  }

  DarkModeNotifier() : super("false") {
    _init();
  }

  void toggle() async {
    if(state == "false"){
      state = "true";
    }else{
      state = "false";
    }
    //state != state;
    storage.write(key: "darkMode", value: state);
  }

  

}



final darkModeProvider = StateNotifierProvider<DarkModeNotifier, String>(
  (ref) => DarkModeNotifier(),
);

final allCountries = FutureProvider<List<CountryModel>>((ref)async{
  return ref.watch(countryService).getCountryDetails();
});


