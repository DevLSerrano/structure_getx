import 'package:get/get.dart';
import './intro_controller.dart';

// Binding onde o controle é iniciado

class IntroBindings implements Bindings {
  @override
  void dependencies() {
    Get.put(IntroController());
  }
}
