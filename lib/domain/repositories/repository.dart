import 'package:clean_architechture/domain/entities/current_weather_entity.dart';
import 'package:clean_architechture/domain/entities/data_entity/data_entity.dart';

abstract class Repository {
  Future<DataResponseEntity<CurrentWeatherEntity>?> getCurrentWeather(String q, String lang);
}
