import 'package:clean_architechture/domain/entities/current_weather_entity.dart';
import 'package:clean_architechture/domain/entities/error_entity.dart';
import 'package:clean_architechture/domain/repositories/repository.dart';
import 'package:clean_architechture/domain/use_cases/base/base_future_use_case.dart';
import 'package:injectable/injectable.dart';

@Injectable()
class GetCurrentWeatherUseCase extends BaseFutureUseCase<GetCurrentWeatherInput, GetCurrentWeatherOutput>{
  final Repository _repository;

  GetCurrentWeatherUseCase(this._repository);

  @override
  Future<GetCurrentWeatherOutput> buildUseCase(GetCurrentWeatherInput input) async {
    final result = await _repository.getCurrentWeather(input.q, input.lang ?? "");
    if (result?.error == null) {
      return GetCurrentWeatherOutput(currentWeatherEntity: result?.data);
    } else {
      return GetCurrentWeatherOutput(error: result?.error);
    }
  }
}

class GetCurrentWeatherOutput {
  final CurrentWeatherEntity? currentWeatherEntity;
  final ErrorEntity? error;

  GetCurrentWeatherOutput({this.currentWeatherEntity, this.error});
}

class GetCurrentWeatherInput {
  final String q;
  final String? lang;

  GetCurrentWeatherInput({required this.q, this.lang});
}
