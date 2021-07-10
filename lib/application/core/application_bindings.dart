import 'package:get/get.dart';
import 'package:structure_getx/application/routes/routes.dart';

//Aqui são os bindings iniciais da aplicação, 
//controles que tem que estar ativoso logo no inicio, ou controles permatentes

class ApplicationBinding implements Bindings {
  @override
  void dependencies() {
    Get.put(() => Routes(), permanent: true);
  }
}
