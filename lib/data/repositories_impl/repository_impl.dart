import 'package:clean_architechture/data/data_mapper/current_weather_data_mapper.dart';
import 'package:clean_architechture/data/repositories_impl/api_service.dart';
import 'package:clean_architechture/domain/entities/current_weather_entity.dart';
import 'package:clean_architechture/domain/repositories/repository.dart';
import 'package:injectable/injectable.dart';

@LazySingleton(as: Repository)
class RepositoryImpl implements Repository {
  RepositoryImpl(this._apiService, this._currentWeatherDataMapper);

  final ApiService _apiService;
  final CurrentWeatherDataMapper _currentWeatherDataMapper;

  @override
  Future<CurrentWeatherEntity?> getCurrentWeather(String q, String lang) async {
    final response = await _apiService.getCurrentWeather(q, lang);
    return _currentWeatherDataMapper.mapToEntity(response);
  }
}
