import 'package:clean_architechture/core/base/bloc/base_bloc/base_state.dart';
import 'package:clean_architechture/data/models/current_weather_model.dart';

class HomeState extends BaseState {
  const HomeState({this.currentWeather, this.callCount = 0});

  final CurrentWeatherModel? currentWeather;
  final int? callCount;

  HomeState copyWith({CurrentWeatherModel? currentWeather, int? callCount}) => HomeState(currentWeather: currentWeather ?? CurrentWeatherModel(), callCount: callCount);
}
