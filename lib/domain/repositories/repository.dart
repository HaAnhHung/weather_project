import 'package:clean_architechture/domain/entities/current_weather_entity.dart';

abstract class Repository {
  Future<CurrentWeatherEntity?> getCurrentWeather(String q, String lang);
}
