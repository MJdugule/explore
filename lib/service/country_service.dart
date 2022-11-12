import 'dart:convert';

import 'package:dio/dio.dart';
import 'package:explore/model/country_model.dart';

class CountryService{
  Dio dio = Dio();

  Future<CountryModel> getCountryDetails()async{
    try {
       final response = await dio.get("https://restcountries.com/v3.1/all");
       var content = CountryModel.fromJson(response.data[0]);
       //print(content);
       //print(response);
     //final details = countryFromJson( response.data[0].toString());
     print("gggggg${content.name!.nativeName!.engs}");
     return content;
        
    } catch (e) {
      print(e);
    }
   return CountryModel();
  }
}