import 'package:flutter_secure_storage/flutter_secure_storage.dart';

class ThemePreferences {
  static const PREF_KEY = "pref_key";

  setTheme(String value) async {
    var storage =  FlutterSecureStorage();
    await storage.write(key: "pref_key", value: value);
    //sharedPreferences.setBool(PREF_KEY, value);

  }

  getTheme() async {
     var storage =  FlutterSecureStorage();
    return await storage.read(key: "pref_key",);
   
  }
}