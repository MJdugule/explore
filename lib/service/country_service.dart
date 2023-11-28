
import 'package:explore/model/country_model.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:http/http.dart' as http;

class CountryService{

  Future<List<CountryModel>> getCountryDetails()async{
    List<CountryModel> country = [];
    try {
       final response = await http.get(Uri.parse("https://restcountries.com/v3.1/all"));
      //  if(response.statusCode == 200){
      //    var result = jsonDecode(response.body) ;
      //  //print(result.length);
      //  for(var countries in result){
      //   country.add(CountryModel.fromJson(countries));
      //  }
      //  print(country.length);
      //  }
      
       
      //  var content = CountryModel.fromJson(response.data[0]);
      //  print(content);
      //  print(response);
      final details = countryFromJson( response.body);
    // print("gggggg${details[0].name!.nativeName!.engs}");
     return details;
        
    // ignore: empty_catches
    } catch (e) {
    }
   return country;
  }
}

final countryService = Provider<CountryService>((ref) => CountryService());