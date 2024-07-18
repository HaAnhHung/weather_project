import 'package:clean_architechture/core/base/base_page/base_page_state.dart';
import 'package:clean_architechture/presentation/blocs/home_bloc/home_bloc.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends BasePageState<HomeScreen, HomeBloc> {

  @override
  Widget buildPage(BuildContext context) {
    throw UnimplementedError();
  }
}
