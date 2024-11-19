class CalculatorLogic {
  static String result = '0'; 
  static String _number = '';
  static String _operator = '';

  static void calculator(String calculatorLabels) {
    switch (calculatorLabels) {
      case 'AC':
        result = '0';
        _number = '';
        _operator = '';
        break;

      case '+/-':
        result = result[0] == '-' ? result.substring(1) : '-$result';
        break;

      case '%':
        double number = double.parse(result) / 100;
        result = (number % 1 == 0 ? number.toInt() : number).toString();
        break;

      case '.':
        if (!result.contains('.')) {
          result += '.';
        }
        break;

      case '+':
      case '-':
      case '×':
      case '÷':
        if (_number.isEmpty) {
          _number = result;
          _operator = calculatorLabels;
          result = '0';
        } else {
          _number = _calculate();
          _operator = calculatorLabels;
          result = '0';
        }
        break;

      case '=':
        if (_number.isNotEmpty && _operator.isNotEmpty) {
          result = _calculate();
          _number = '';
          _operator = '';
        }
        break;

      default:
       
        if (result == '0') {
          result = calculatorLabels;
        } else {
          result += calculatorLabels;
        }
    }
  }

  static String _calculate() {
    double num1 = double.parse(_number);
    double num2 = double.parse(result);

    switch (_operator) {
      case '+':
        return (num1 + num2).toString();
      case '-':
        return (num1 - num2).toString();
      case '×':
        return (num1 * num2).toString();
      case '÷':
        if (num2 == 0) {
          return 'Error'; 
        }
        return (num1 / num2).toString();
      default:
        return '0';
    }
  }
}
