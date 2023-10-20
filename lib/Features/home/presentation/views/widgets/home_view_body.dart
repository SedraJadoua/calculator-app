import 'package:calculator_app/Features/home/presentation/manager/calculator_logic_getx/calculator_logic.dart';
import 'package:calculator_app/Features/home/presentation/manager/sharedPrefrences_logic_getx/sharedpref_controller.dart';
import 'package:calculator_app/Features/home/presentation/manager/toggleHistory/toggle_history_controller.dart';
import 'package:calculator_app/Features/home/presentation/views/widgets/custom_app_bar.dart';
import 'package:calculator_app/Features/home/presentation/views/widgets/custom_text_form_field.dart';
import 'package:calculator_app/Features/home/presentation/views/widgets/delete_button.dart';
import 'package:calculator_app/Features/home/presentation/views/widgets/history_button.dart';
import 'package:calculator_app/Features/home/presentation/views/widgets/history_view.dart';
import 'package:calculator_app/Features/home/presentation/views/widgets/wrap_widget.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class HomeViewBody extends StatelessWidget {
  const HomeViewBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    CalculatorController calculatorController = Get.put(CalculatorController());
    // ignore: unused_local_variable
    SharedprefContorller sharedprefContorller = Get.put(SharedprefContorller());
    // ignore: unused_local_variable
    ToggleHistoryController historyController =
        Get.put(ToggleHistoryController());
    return SingleChildScrollView(
      child: Stack(
        children: [
          Column(crossAxisAlignment: CrossAxisAlignment.center, children: [
            const CustomAppBar(),
            const SizedBox(
              height: 20,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 10),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  const CustomFormField(),
                  const SizedBox(
                    height: 20,
                  ),
                  Obx(
                    () => Text(
                      "${calculatorController.result}",
                      style: const TextStyle(fontSize: 30),
                    ),
                  ),
                  Padding(
                      padding: EdgeInsets.only(
                          top: MediaQuery.of(context).size.height * 0.07),
                      child: Row(
                        textDirection: TextDirection.rtl,
                        children: [
                          DeleteButton(),
                          const Spacer(),
                          HistoryButton(),
                        ],
                      )),
                ],
              ),
            ),
            const Divider(
              thickness: 2,
            ),
            const SizedBox(
              height: 20,
            ),
            const WrapWidget(),
          ]),
          HistoryView(),
        ],
      ),
    );
  }
}
