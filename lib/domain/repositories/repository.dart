import 'package:clean_architechture/domain/entities/current_weather_entity.dart';
import 'package:clean_architechture/domain/entities/error_entity.dart';

abstract class Repository {
  Future<CurrentWeatherEntity?> getCurrentWeather(String q, String lang, Function(ErrorEntity error) onError);
}
