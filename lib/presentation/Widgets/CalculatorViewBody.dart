// ignore_for_file: file_names
import 'package:flutter/material.dart';

class CalculatorViewBody extends StatelessWidget {
  const CalculatorViewBody({super.key});
  static const List<List<String>> _calculatorLabels = [
    ['AC', '+/-', '%', '/'],
    ['7', '8', '9', '*'],
    ['4', '5', '6', '-'],
    ['1', '2', '3', '+'],
    ['0', '.', '=']
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Container(
            width: double.infinity,
            height: 130,
            alignment: Alignment.bottomRight,
            child: const Text(
              '0',
              style: TextStyle(color: Colors.white, fontSize: 65),
            ),
          ),
          for (int i = 0; i < _calculatorLabels.length; i++)
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                for (int j = 0; j < _calculatorLabels[i].length; j++)
                  ElevatedButton(
                    onPressed: () {},
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
                      _calculatorLabels[i][j],
                      style: const TextStyle(
                          fontSize: 28, fontWeight: FontWeight.w500),
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
