import 'package:clean_architechture/core/base/base_page/base_page_state.dart';
import 'package:clean_architechture/presentation/blocs/home_bloc/home_bloc.dart';
import 'package:clean_architechture/presentation/blocs/home_bloc/home_event.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends BasePageState<HomeScreen, HomeBloc> {

  @override
  void initState() {
    super.initState();
  }
  @override
  Widget buildPage(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TextButton(
              onPressed: () async {
                bloc.add(GetCurrentWeatherEvent(q: "London"));
              },
              child: const Text("Get data"),
            ),
            Text("Nhiệt độ: ${bloc.currentWeatherEntity?.current?.tempC}")
          ],
        ),
      ),
    );
  }
}
