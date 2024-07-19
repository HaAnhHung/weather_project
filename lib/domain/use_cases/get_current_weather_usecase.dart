import 'package:clean_architechture/data/models/current_weather_model.dart';
import 'package:clean_architechture/domain/entities/current_weather_entity.dart';
import 'package:clean_architechture/domain/repositories/repository.dart';
import 'package:injectable/injectable.dart';

@Injectable()
class GetCurrentWeatherUseCase {
  final Repository _repository;

  GetCurrentWeatherUseCase(this._repository);

  Future<GetCurrentWeatherOutput> buildUseCase(GetCurrentWeatherInput input) async {
    final result = await _repository.getCurrentWeather("London", "");
    return GetCurrentWeatherOutput(currentWeatherEntity: result ?? CurrentWeatherEntity());
  }
}

class GetCurrentWeatherOutput {
  final CurrentWeatherEntity currentWeatherEntity;

  GetCurrentWeatherOutput({required this.currentWeatherEntity});
}

class GetCurrentWeatherInput {
  final String q;

  GetCurrentWeatherInput({required this.q});
}
