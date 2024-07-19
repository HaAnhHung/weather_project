import 'package:clean_architechture/core/base/bloc/base_bloc/base_bloc.dart';
import 'package:clean_architechture/core/base/bloc/common/common_bloc.dart';
import 'package:clean_architechture/core/base/bloc/common/common_state.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get_it/get_it.dart';

abstract class BasePageState<T extends StatefulWidget, B extends BaseBloc> extends State<T> {
  late CommonBloc commonBloc = GetIt.instance.get<CommonBloc>();
  late B bloc = GetIt.instance.get<B>()..commonBloc = commonBloc;
  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
        providers: [BlocProvider(create: (context) => bloc), BlocProvider(create: (context) => commonBloc)],
        child: BlocConsumer<CommonBloc, CommonState>(
          listener: (context, state) {},
          builder: (context, state) => Stack(
            children: [
              buildPage(context),
              BlocBuilder<CommonBloc, CommonState>(builder: (context, state) => Visibility(visible: state.isLoading, child: buildLoading()))
            ],
          ),
        ));
  }

  Widget buildPage(BuildContext context);

  Widget buildLoading() => const Center(
        child: SizedBox(height: 50, width: 50, child: CircularProgressIndicator(strokeWidth: 2)),
      );
}
