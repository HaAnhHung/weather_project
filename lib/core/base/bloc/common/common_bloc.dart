import 'dart:async';

import 'package:clean_architechture/core/base/bloc/base_bloc/base_bloc.dart';
import 'package:clean_architechture/core/base/bloc/common/common_event.dart';
import 'package:clean_architechture/core/base/bloc/common/common_state.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:injectable/injectable.dart';

@Injectable()
class CommonBloc extends BaseBloc<CommonEvent, CommonState>{
  CommonBloc(): super(CommonState()) {
    on<CommonLoadingEvent>(_onLoading);
  }

  FutureOr<void> _onLoading(CommonLoadingEvent event, Emitter<CommonState> emit) {
    emit(state.copyWith(isLoading: event.isLoading));
  }
}