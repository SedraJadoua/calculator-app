import 'package:calculator_app/Features/home/presentation/manager/calculator_logic_getx/calculator_logic.dart';

import 'package:flutter/material.dart';
import 'package:get/get.dart';

class CustomFormField extends StatelessWidget {
  const CustomFormField({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = Get.find<CalculatorController>();
    return TextFormField(
              keyboardType: TextInputType.none,
              autofocus: true,
              decoration: const InputDecoration(border: InputBorder.none),
              cursorColor: Colors.green,
              cursorHeight: 50,
              cursorWidth: 3,
              textDirection: TextDirection.rtl,
              controller: controller.formController.value,
              style: const TextStyle(fontSize: 40, fontStyle: FontStyle.normal),
            );
  }
}