import 'package:calculator_app/Features/home/presentation/manager/sharedPrefrences_logic_getx/sharedpref_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class DeleteHistoryButtton extends StatelessWidget {
  DeleteHistoryButtton({super.key});
  final sharedprefs = Get.find<SharedprefContorller>();
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: MediaQuery.of(context).size.width * 0.75,
      height: MediaQuery.of(context).size.width * 0.13,
      child: TextButton(
        style: ButtonStyle(
            backgroundColor:
                MaterialStatePropertyAll(Theme.of(context).primaryColor)),
        onPressed: () => sharedprefs.clearSharedPreferencesData(),
        child: const Text(
          'Clear History',
          style: TextStyle(
              color: Colors.green, fontSize: 20, fontStyle: FontStyle.italic),
        ),
      ),
    );
  }
}
