import 'package:get/get.dart';
import 'package:flutter/material.dart';
import 'package:structure_getx/modules/intro/controller/intro_controller.dart';

class IntroPage extends GetView<IntroController> {
//Estrutura da pagina ... com GetView com se chamar o controler diretamente

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: controller
            .logo, //Assim acessamos o item do controller para exibir na view
      ),
    );
  }
}
