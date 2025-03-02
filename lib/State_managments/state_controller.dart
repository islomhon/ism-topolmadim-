import 'package:get/get.dart';

class StateController extends GetxController {
  var isContainerVisible = true.obs;

  void toggleContainer(bool isVisible) {
    isContainerVisible.value = isVisible;
  }
}
