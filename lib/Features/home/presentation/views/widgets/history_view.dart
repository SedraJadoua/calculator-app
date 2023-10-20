import 'package:calculator_app/Features/home/presentation/manager/toggleHistory/toggle_history_controller.dart';
import 'package:calculator_app/Features/home/presentation/views/widgets/delete_history_button.dart';
import 'package:calculator_app/Features/home/presentation/views/widgets/history_body.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class HistoryView extends StatelessWidget {
  HistoryView({super.key});

  final historyController = Get.find<ToggleHistoryController>();

  @override
  Widget build(BuildContext context) {
    return Obx(
      () => Visibility(
        visible: historyController.isHistoryVisible.value,
        child: Positioned(
          bottom: -8,
          child: Column(
            children: [
              HistoryBody(),
              const Divider(
                height: 0.01,
              
              ),
              DeleteHistoryButtton(),
            ],
          ),
        ),
      ),
    );
  }
}
