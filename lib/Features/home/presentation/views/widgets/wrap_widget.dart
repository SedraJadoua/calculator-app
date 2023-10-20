import 'package:calculator_app/Features/home/presentation/manager/calculator_logic_getx/calculator_logic.dart';
import 'package:calculator_app/Features/home/presentation/views/widgets/custom_button.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class WrapWidget extends StatelessWidget {
  const WrapWidget({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = Get.find<CalculatorController>();
    var color = Theme.of(context).textTheme.bodyLarge!.color!;

    return Wrap(
      crossAxisAlignment: WrapCrossAlignment.start,
      spacing: MediaQuery.of(context).size.width / 16,
      alignment: WrapAlignment.start,
      children: [
        CustomButton(
          text: 'C',
          textColor: Colors.red,
          onpressed: () => controller.buttonPressed("C"),
        ),
        CustomButton(
          text: '±',
          textColor: Colors.green,
          onpressed: () => controller.buttonPressed("+/-"),
        ),
        CustomButton(
          text: '⁒',
          textColor: Colors.green,
          onpressed: () => controller.buttonPressed("⁒"),
        ),
        CustomButton(
          text: '÷',
          onpressed: () => controller.buttonPressed("÷"),
          textColor: Colors.green,
        ),
        CustomButton(
          text: '1',
          onpressed: () => controller.buttonPressed("1"),
          textColor: color,
        ),
        CustomButton(
          text: '2',
          onpressed: () => controller.buttonPressed("2"),
          textColor: color,
        ),
        CustomButton(
          text: '3',
          onpressed: () => controller.buttonPressed("3"),
          textColor: color,
        ),
        CustomButton(
          text: 'x',
          onpressed: () => controller.buttonPressed("×"),
          textColor: Colors.green,
        ),
        CustomButton(
          text: '4',
          onpressed: () => controller.buttonPressed("4"),
          textColor: color,
        ),
        CustomButton(
          text: '5',
          onpressed: () => controller.buttonPressed("5"),
          textColor: color,
        ),
        CustomButton(
          text: '6',
          onpressed: () => controller.buttonPressed("6"),
          textColor: color,
        ),
        CustomButton(
          text: '+',
          onpressed: () => controller.buttonPressed("+"),
          textColor: Colors.green,
        ),
        CustomButton(
          text: '7',
          onpressed: () => controller.buttonPressed("7"),
          textColor: color,
        ),
        CustomButton(
          text: '8',
          onpressed: () => controller.buttonPressed("8"),
          textColor: color,
        ),
        CustomButton(
          text: '9',
          onpressed: () => controller.buttonPressed("9"),
          textColor: color,
        ),
        CustomButton(
          text: '-',
          onpressed: () => controller.buttonPressed("-"),
          textColor: Colors.green,
        ),
        Container(
          margin: const EdgeInsets.symmetric(vertical: 15),
          height: 60,
          width: 170,
          child: TextButton(
            onPressed: () => controller.buttonPressed('0'),
            style: const ButtonStyle(
              elevation: MaterialStatePropertyAll(2),
              shape: MaterialStatePropertyAll(
                StadiumBorder(),
              ),
            ),
            child: Text(
              '0',
              style: TextStyle(fontSize: 26, color: color),
            ),
          ),
        ),
        CustomButton(
          onpressed: () => controller.buttonPressed("."),
          text: ' ․',
          textColor: Colors.green,
        ),
        CustomButton(
          text: '=',
          onpressed: () => controller.buttonPressed("="),
          textColor: Colors.white,
        ),
      ],
    );
  }
}
