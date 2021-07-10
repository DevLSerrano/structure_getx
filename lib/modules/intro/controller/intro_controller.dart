import 'package:flutter/material.dart';
import 'package:get/get.dart';

class IntroController extends GetxController {
  /// Este logo pode ficar direto na View, esta aqui para exemplo de como acessar itens do controler pela view
  final Widget logo = FlutterLogo();

  @override
  void onInit() async {
    await Future.delayed(Duration(seconds: 2), () {
      Get.offAndToNamed(
          '/home'); //Navega para home, removendo a anterior "intro" .. pq nao quereos que o user volte pra intro
      // Get.toNamed('/home'); //Navegar com rotas nomeadas até a pagina home, assim permite voltar
    });
    super.onInit();
  }
}
