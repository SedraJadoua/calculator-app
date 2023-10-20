import 'package:calculator_app/Features/home/presentation/manager/theme_mode/theme_service.dart';
import 'package:calculator_app/Features/home/presentation/views/home_view.dart';
import 'package:flutter/material.dart';
// import 'package:get/get.dart';

void main() {
  runApp(const CalculatorApp());
}

class CalculatorApp extends StatelessWidget {
  const CalculatorApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeService.lightTheme,
      darkTheme: ThemeService.darkTheme,
      themeMode: ThemeMode.system,
      home: const HomeView(),
    );
  }
}
