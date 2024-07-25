import 'dart:convert';

import 'package:clean_architechture/core/constants/api_constants.dart';
import 'package:clean_architechture/data/base/data_error.dart';
import 'package:clean_architechture/data/base/data_response.dart';
import 'package:clean_architechture/data/models/current_weather_model.dart';
import 'package:http/http.dart' as http;
import 'package:injectable/injectable.dart';

@LazySingleton()
class ApiService {
  Future<DataResponse<CurrentWeatherModel>?> getCurrentWeather(String q, String lang) async {
    var response = await http.get(
      Uri.http(ApiConstants.baseUrl, ApiConstants.current, {"key": ApiConstants.apiKey, "q": q}),
    );

    if (response.statusCode == 200) {
      var currentWeatherModel = CurrentWeatherModel.fromJson(jsonDecode(response.body));
      return DataResponse(data: currentWeatherModel);
    } else {
      var errorResponse = DataError.fromJson(jsonDecode(response.body));
      return DataResponse(error: errorResponse);
    }
  }
}
