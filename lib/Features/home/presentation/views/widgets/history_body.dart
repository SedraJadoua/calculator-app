import 'package:calculator_app/Features/home/presentation/manager/sharedPrefrences_logic_getx/sharedpref_controller.dart';
import 'package:calculator_app/Features/home/presentation/views/widgets/history_list_view.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class HistoryBody extends StatelessWidget {
  HistoryBody({super.key});
  final sharedprefs = Get.find<SharedprefContorller>();
  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width * 0.75,
      height: MediaQuery.of(context).size.height * 0.46,
      color: Theme.of(context).primaryColor,
      child: GetBuilder<SharedprefContorller>(
        builder: (controller) => FutureBuilder<List<List<String>>>(
            initialData: const [[]],
            future: Future.wait(
                [controller.getListEquation(), controller.getListResult()]),
            builder: (context, snapshot) {
              if (!snapshot.hasData) {
                return const SnackBar(
                  content: Text('No Data Found'),
                );
              }

              return HistoryListView(
                snapshot: snapshot,
              );
            }),
      ),
    );
  }
}
