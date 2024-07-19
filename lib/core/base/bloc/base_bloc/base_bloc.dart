import 'package:clean_architechture/core/base/bloc/base_bloc/base_event.dart';
import 'package:clean_architechture/core/base/bloc/base_bloc/base_state.dart';
import 'package:clean_architechture/core/base/bloc/common/common_bloc.dart';
import 'package:clean_architechture/core/base/bloc/common/common_event.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

abstract class BaseBloc<E extends BaseEvent, S extends BaseState> extends Bloc<E, S> {
  BaseBloc(super.initialState);

  late final CommonBloc _commonBloc;

  set commonBloc(CommonBloc commonBloc) {
    _commonBloc = commonBloc;
  }

  CommonBloc get commonBloc => this is CommonBloc ? this as CommonBloc : _commonBloc;

  showLoading() {
    commonBloc.add(CommonLoadingEvent(isLoading: true));
  }

  hideLoading() {
    commonBloc.add(CommonLoadingEvent(isLoading: false));
  }

  Future<void> runBlocCatching({required Future<void> Function() action, bool handleLoading = true}) async {
    if (handleLoading) {
      showLoading();
    }
    await action.call();
    if (handleLoading) {
      hideLoading();
    }
  }
}
