import 'package:calculator_app/Features/home/presentation/manager/sharedPrefrences_logic_getx/sharedpref_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:math_expressions/math_expressions.dart';

class CalculatorController extends GetxController {
  var result = '0'.obs;
  var equation = '0'.obs;
  var expression = ''.obs;

  Rx<TextEditingController> formController = TextEditingController().obs;
  SharedprefContorller sharedprefes = SharedprefContorller();


  buttonPressed(String buttonText) {
    // used to check if the result contains a decimal
    String doesContainDecimal(dynamic result) {
      if (result.toString().contains('.')) {
        List<String> splitDecimal = result.toString().split('.');
        if (!(int.parse(splitDecimal[1]) > 0)) {
          return result = splitDecimal[0].toString();
        }
      }
      return result;
    }

    if (buttonText == "C") {
      expression.value = '';
      equation.value = '0';
      result.value = '0';
      formController.value.text = equation.value;
    } else if (buttonText == "⌫") {
      equation.value = equation.substring(0, equation.value.length - 1);
      formController.value.text = equation.value;
      if (equation.value == "") {
        equation.value = "0";
        formController.value.text = equation.value;
      }
    } else if (buttonText == "+/-") {
      if (equation.value[0] != '-') {
        equation.value = '-$equation';
        formController.value.text = equation.value;
      } else {
        equation.value = equation.substring(1);
        formController.value.text = equation.value;
      }
    }
   

    else if (buttonText == "=") {
      expression = equation;
      expression.value = expression.replaceAll('×', '*');
      expression.value = expression.replaceAll('÷', '/');
      expression.value = expression.replaceAll('⁒', '%');

      try {
        Parser p = Parser();

        Expression exp = p.parse(expression.value);

        ContextModel cm = ContextModel();
        result.value = '${exp.evaluate(EvaluationType.REAL, cm)}';

        if (equation.value != '0' ) {
          sharedprefes.updatelists(result , equation);
        }
        if (expression.contains('%')) {
          result.value = doesContainDecimal(result);
          formController.value.text = equation.value;
         
        }
      } catch (e) {
        result.value = "Error";
      }
    } else {
      if (equation.value == "0") {
        equation.value = buttonText;
        formController.value.text = equation.value;
      } else {
        equation.value = equation + buttonText;
        formController.value.text = equation.value;
      }
    }
    update();
  }
}
