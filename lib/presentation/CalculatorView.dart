import 'package:calculator/presentation/Widgets/CalculatorViewBody.dart';
import 'package:flutter/material.dart';

class Calculatorview extends StatelessWidget {
  const Calculatorview({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding:  EdgeInsets.symmetric(horizontal: 12),
      child: CalculatorViewBody(),
    );
  }
}