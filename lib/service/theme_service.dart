import 'package:flutter_secure_storage/flutter_secure_storage.dart';

class ThemePreferences {
  // ignore: constant_identifier_names
  static const PREF_KEY = "pref_key";

  setTheme(String value) async {
    var storage =  const FlutterSecureStorage();
    await storage.write(key: "pref_key", value: value);
    //sharedPreferences.setBool(PREF_KEY, value);

  }

  getTheme() async {
     var storage =  const FlutterSecureStorage();
    return await storage.read(key: "pref_key",);
   
  }
}