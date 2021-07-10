import 'package:get/get.dart';
import 'package:structure_getx/resources/repository/i_home_repository.dart';
import 'package:structure_getx/resources/repository_impl/home_repository.dart';
import './home_controller.dart';

class HomeBindings implements Bindings {
  ///Como o Home repository so é usado na home
  ///Iniciar ele junto a Bindings da home ... assim é eliminado junto da memoria

  @override
  void dependencies() {
    Get.lazyPut<IHomeRepository>(() => HomeRepository());
    Get.put(HomeController(
      homeRepository: Get.find(),
    ));
  }
}
