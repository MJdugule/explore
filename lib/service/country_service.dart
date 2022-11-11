import 'dart:convert';

import 'package:dio/dio.dart';
import 'package:explore/model/country_model.dart';

class CountryService{
  Dio dio = Dio();

  getCountryDetails()async{
    try {
       var response = await dio.get("https://restcountries.com/v3.1/all");
      CountryModel.fromJson(response.data);
         var doo = json.decode(response.data);
         print("eeeeeeeee$doo");
        print(response.data);
      //  var countryModel = countryFromJson(response.data);
      //   print(countryModel.altSpellings);
       print("response");
       
   //print(country);
   print(response);
    } catch (e) {
      //print(e);
    }
   
  }
}