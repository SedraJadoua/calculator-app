import 'package:calculator_app/Features/home/presentation/manager/toggleHistory/toggle_history_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class HistoryButton extends StatelessWidget {
   HistoryButton({super.key});
  final historyController  = Get.find<ToggleHistoryController>();
  @override
  Widget build(BuildContext context) {
    return Obx(
                          () => IconButton(
                            icon: Icon(
                                historyController.isHistoryVisible.value
                                    ? Icons.calculate
                                    : Icons.history,
                                color: Colors.grey,
                                size: 30),
                            onPressed: () {
                              historyController.toggle();
                            },
                          ),
                        );
  }
}