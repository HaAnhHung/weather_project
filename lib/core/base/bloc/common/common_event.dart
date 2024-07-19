import 'package:clean_architechture/core/base/bloc/base_bloc/base_event.dart';

abstract class CommonEvent extends BaseEvent {
  const CommonEvent();
}

/// Loading when getting data
class CommonLoadingEvent extends CommonEvent {
  final bool isLoading;

  CommonLoadingEvent({required this.isLoading});
}
