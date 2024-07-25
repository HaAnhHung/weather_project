import 'package:clean_architechture/core/di/di.dart' as di;
import 'package:clean_architechture/presentation/screens/home_screen/home_screen.dart';
import 'package:flutter/material.dart';

void main() {
  di.configureInjection();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const HomeScreen(),
    );
  }
}
