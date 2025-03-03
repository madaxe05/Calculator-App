import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:test2/provider/calc_provider.dart';
import 'package:test2/screens/home_screen.dart';

void main() {
  runApp(const CalcuatorApp());
}

class CalcuatorApp extends StatelessWidget {
  const CalcuatorApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => CalculatorProvider(),
      child: MaterialApp(
        theme: ThemeData.dark(),
        debugShowCheckedModeBanner: false,
        home: const HomeScreen(),
      ),
    );
  }
}
