import 'package:clean_architechture/data/models/current_weather_model.dart';
import 'package:clean_architechture/domain/entities/current_weather_entity.dart';
import 'package:clean_architechture/domain/entities/error_entity.dart';
import 'package:clean_architechture/domain/repositories/repository.dart';
import 'package:clean_architechture/domain/use_cases/base/base_future_use_case.dart';
import 'package:clean_architechture/domain/use_cases/base/base_use_case.dart';
import 'package:injectable/injectable.dart';

@Injectable()
class GetCurrentWeatherUseCase extends BaseFutureUseCase<GetCurrentWeatherInput, GetCurrentWeatherOutput>{
  final Repository _repository;

  GetCurrentWeatherUseCase(this._repository);

  @override
  Future<GetCurrentWeatherOutput> buildUseCase(GetCurrentWeatherInput input) async {
    final result = await _repository.getCurrentWeather("London", "", (error) {
      return GetCurrentWeatherOutput(error: error);
    });
    return GetCurrentWeatherOutput(currentWeatherEntity: result ?? CurrentWeatherEntity());
  }
}

class GetCurrentWeatherOutput {
  final CurrentWeatherEntity? currentWeatherEntity;
  final ErrorEntity? error;

  GetCurrentWeatherOutput({this.currentWeatherEntity, this.error});
}

class GetCurrentWeatherInput {
  final String q;

  GetCurrentWeatherInput({required this.q});
}
