import 'package:clean_architechture/core/base/bloc/base_bloc/base_state.dart';
import 'package:clean_architechture/domain/entities/error_entity.dart';

class CommonState extends BaseState {
  bool? isLoading;
  ErrorEntity? error;

  CommonState({this.isLoading = false, this.error});

  CommonState copyWith({bool? isLoading}) {
    return CommonState(isLoading: isLoading ?? this.isLoading);
  }
}
