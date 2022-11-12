import 'package:explore/model/country_model.dart';
import 'package:explore/service/country_service.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final countryProvider = Provider<CountryService>((ref)=>CountryService());

final contryList = FutureProvider<List<CountryModel>>((ref) async{
  return ref.watch(countryProvider).getCountryDetails();
});