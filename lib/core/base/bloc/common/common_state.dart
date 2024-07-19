import 'package:clean_architechture/core/base/bloc/base_bloc/base_state.dart';

class CommonState extends BaseState {
  bool isLoading;

  CommonState({this.isLoading = false});

  CommonState copyWith({bool? isLoading}) {
    return CommonState(isLoading: isLoading ?? this.isLoading);
  }
}
