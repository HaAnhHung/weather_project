import 'package:clean_architechture/core/base/bloc/base_bloc/base_bloc.dart';
import 'package:clean_architechture/presentation/blocs/home_bloc/home_event.dart';
import 'package:clean_architechture/presentation/blocs/home_bloc/home_state.dart';

class HomeBloc extends BaseBloc<HomeEvent, HomeState> {
  HomeBloc() : super(const HomeState());
}