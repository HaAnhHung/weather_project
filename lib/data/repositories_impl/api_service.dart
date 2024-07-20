import 'dart:convert';

import 'package:clean_architechture/core/constants/api_constants.dart';
import 'package:clean_architechture/data/base/data_error.dart';
import 'package:clean_architechture/data/data_mapper/base/error_mapper/error_mapper.dart';
import 'package:clean_architechture/data/models/current_weather_model.dart';
import 'package:clean_architechture/domain/entities/error_entity.dart';
import 'package:http/http.dart' as http;
import 'package:injectable/injectable.dart';

@LazySingleton()
class ApiService {
  Future<CurrentWeatherModel?> getCurrentWeather(String q, String lang, Function(ErrorEntity error) onError) async {
    var response = await http.get(
      Uri.http(ApiConstants.baseUrl, ApiConstants.current, {"key": ApiConstants.apiKey, "q": q}),
    );

    if (response.statusCode == 200) {
      print("15 -- response current weather: ${response.body}");
      return CurrentWeatherModel.fromJson(jsonDecode(response.body));
    } else {
      var errorResponse = DataError.fromJson(jsonDecode(response.body));
      onError(ErrorMapper().mapToEntity(errorResponse));
    }
    return null;
  }
}
