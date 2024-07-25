import 'package:clean_architechture/data/data_mapper/base/error_mapper/error_mapper.dart';
import 'package:clean_architechture/data/data_mapper/current_weather_data_mapper.dart';
import 'package:clean_architechture/data/data_sources/remote/api/api_service.dart';
import 'package:clean_architechture/domain/entities/current_weather_entity.dart';
import 'package:clean_architechture/domain/entities/data_entity/data_entity.dart';
import 'package:clean_architechture/domain/entities/error_entity.dart';
import 'package:clean_architechture/domain/repositories/repository.dart';
import 'package:injectable/injectable.dart';

@LazySingleton(as: Repository)
class RepositoryImpl implements Repository {
  RepositoryImpl(this._apiService, this._currentWeatherDataMapper);

  final ApiService _apiService;
  final CurrentWeatherDataMapper _currentWeatherDataMapper;

  @override
  Future<DataResponseEntity<CurrentWeatherEntity>?> getCurrentWeather(String q, String lang) async {
    final response = await _apiService.getCurrentWeather(q, lang);
    if (response?.error == null) {
      var currentWeatherEntity = _currentWeatherDataMapper.mapToEntity(response?.data);
      return DataResponseEntity(data: currentWeatherEntity);
    } else {
      var error = ErrorMapper().mapToEntity(response?.error);
      return DataResponseEntity(error: error);
    }
  }
}
