import 'package:get/get.dart';

class ToggleHistoryController extends GetxController {
  RxBool isHistoryVisible = false.obs;

  void toggle() {
    isHistoryVisible.value = !isHistoryVisible.value;
  }
}
