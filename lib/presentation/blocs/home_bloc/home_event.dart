import 'package:clean_architechture/core/base/bloc/base_bloc/base_event.dart';

abstract class HomeEvent extends BaseEvent {}

class GetCurrentWeatherEvent extends HomeEvent {
  final String q;

  GetCurrentWeatherEvent({required this.q});
}
