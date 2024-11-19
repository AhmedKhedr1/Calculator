// ignore_for_file: file_names
import 'package:calculator/Data/CalculatorLogic.dart';
import 'package:flutter/material.dart';

class CalculatorViewBody extends StatefulWidget {
  const CalculatorViewBody({super.key});
  static const List<List<String>> _calculatorLabels = [
    ['AC', '+/-', '%', '÷'],
    ['7', '8', '9', '×'],
    ['4', '5', '6', '−'],
    ['1', '2', '3', '+'],
    ['0', '.', '=']
  ];

  @override
  State<CalculatorViewBody> createState() => _CalculatorViewBodyState();
}

class _CalculatorViewBodyState extends State<CalculatorViewBody> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Container(
            width: double.infinity,
            height: 190,
            alignment: Alignment.bottomRight,
            child:Text(
              CalculatorLogic.result,
              style:const TextStyle(color: Colors.white, fontSize: 65),
            ),
          ),
          for (int i = 0; i < CalculatorViewBody._calculatorLabels.length; i++)
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                for (int j = 0; j < CalculatorViewBody._calculatorLabels[i].length; j++)
                  ElevatedButton(
                    onPressed: () {
                     setState(() {
                        CalculatorLogic.calculator(CalculatorViewBody._calculatorLabels[i][j]);
                     });
                    },
                    style: ButtonStyle(
                        padding: const WidgetStatePropertyAll(EdgeInsets.zero),
                        backgroundColor: WidgetStatePropertyAll(i == 0 && j < 3
                            ? Colors.grey
                            : i < 5 && j == 3
                                ? Colors.orange
                                : i == 4 && j == 2
                                    ? Colors.orange
                                    : Colors.grey[850]),
                        foregroundColor: WidgetStatePropertyAll(
                            i == 0 && j < 3 ? Colors.black : Colors.white),
                        fixedSize: WidgetStatePropertyAll(i == 4 && j == 0
                            ? const Size(160, 65)
                            : const Size.fromRadius(40))),
                    child: Text(
                      CalculatorViewBody._calculatorLabels[i][j],
                      style: const TextStyle(
                          fontSize: 36, fontWeight: FontWeight.w400),
                    ),
                  ),
              ],
            ),
          const SizedBox(
            height: 5,
          )
        ],
      ),
    );
  }
}
