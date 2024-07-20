import 'package:clean_architechture/core/base/bloc/base_bloc/base_event.dart';
import 'package:clean_architechture/domain/entities/error_entity.dart';

abstract class CommonEvent extends BaseEvent {
  const CommonEvent();
}

/// Loading when getting data
class CommonLoadingEvent extends CommonEvent {
  final bool isLoading;

  CommonLoadingEvent({required this.isLoading});
}

/// Error when load data
class CommonErrorEvent extends CommonEvent {
  final ErrorEntity? error;

  CommonErrorEvent({this.error});
}
