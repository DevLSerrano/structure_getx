import 'package:get/get.dart';
import 'package:structure_getx/resources/repository/i_home_repository.dart';

//StateMixin vai permitir controllar a home
// com estados como Loading, Success, error.
class HomeController extends GetxController with StateMixin<List<int>> {
  final count = 0.obs; //.obs torna a varialve observavel para o getx

  final IHomeRepository homeRepository;
  HomeController({required this.homeRepository});

  Future<void> buscarListaDeValores() async {
    await homeRepository.buscarListaDeValores().then((value) {
      // Metodo change altera o estado do StateMixin ...
      // Que na home, altera o estado dentro do controler.obx ...

      change(value, status: RxStatus.success());
      // change(value, status: RxStatus.error());
    }).catchError((onError) {
      change(null, status: RxStatus.error());
    });
  }

  @override
  void onInit() {
    buscarListaDeValores();
    super.onInit();
  }
}
