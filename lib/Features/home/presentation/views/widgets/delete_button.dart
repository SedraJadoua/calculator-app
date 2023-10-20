import 'package:calculator_app/Features/home/presentation/manager/calculator_logic_getx/calculator_logic.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class DeleteButton extends StatelessWidget {
   DeleteButton({
    super.key,
  });


  final  calculatorController = Get.find<CalculatorController>();

  @override
  Widget build(BuildContext context) {
    return IconButton(
      icon: const Icon(Icons.backspace_outlined,
          color: Colors.grey, size: 30),
      onPressed: () {
        calculatorController.buttonPressed("⌫");
      },
    );
  }
}