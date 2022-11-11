import 'package:dio/dio.dart';

class CountryService{
  Dio dio = Dio();

  getCountryDetails()async{
    try {
       var response = await dio.get("https://restcountries.com/v3.1/all");
   print(response);
   print("response");
    } catch (e) {
      print(e);
    }
   
  }
}