import 'package:explore/model/country_model.dart';
import 'package:explore/service/country_service.dart';
import 'package:explore/service/theme_service.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';


class CountryProvider extends ChangeNotifier {

  ThemeMode themeMode = ThemeMode.system;
  List<CountryModel> list = [];
  List<CountryModel> get allList => list;


  String _isDark = "false";
  late ThemePreferences _preferences;
  String get isDarkMode => _isDark;

  CountryProvider() {
    _isDark = "false";
    _preferences = ThemePreferences();
    getPreferences();
  }

  set isDark(String value) {
    _isDark = value;
    _preferences.setTheme(value);
    notifyListeners();
  }

  getPreferences() async {
    _isDark = await _preferences.getTheme() == null ? "false" : _preferences.getTheme();
    notifyListeners();
  }

  Future<List<CountryModel>> countryList()async{
     var fake = await CountryService().getCountryDetails();
     list = fake;
     notifyListeners();
     
     return list;
    
  }
}