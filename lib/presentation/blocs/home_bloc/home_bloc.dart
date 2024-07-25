import 'dart:async';

import 'package:clean_architechture/core/base/bloc/base_bloc/base_bloc.dart';
import 'package:clean_architechture/core/base/bloc/common/common_event.dart';
import 'package:clean_architechture/domain/entities/current_weather_entity.dart';
import 'package:clean_architechture/domain/use_cases/get_current_weather_usecase.dart';
import 'package:clean_architechture/presentation/blocs/home_bloc/home_event.dart';
import 'package:clean_architechture/presentation/blocs/home_bloc/home_state.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:injectable/injectable.dart';

@Injectable()
class HomeBloc extends BaseBloc<HomeEvent, HomeState> {
  HomeBloc(this._getCurrentWeatherUseCase) : super(const HomeState()) {
    on<GetCurrentWeatherEvent>(_getCurrentWeather);
  }

  final GetCurrentWeatherUseCase _getCurrentWeatherUseCase;
  CurrentWeatherEntity? currentWeatherEntity;

  FutureOr<void> _getCurrentWeather(GetCurrentWeatherEvent event, Emitter<HomeState> emit) async {
    runBlocCatching(action: () async {
      final response = await _getCurrentWeatherUseCase.execute(GetCurrentWeatherInput(q: event.q));
      if (response.error != null) {
        commonBloc.add(CommonErrorEvent(error: response.error));
      } else {
        currentWeatherEntity = response.currentWeatherEntity;
      }
    });
  }
}
