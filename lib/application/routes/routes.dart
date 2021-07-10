import 'package:get/get.dart';
import 'package:structure_getx/modules/home/controller/home_bindings.dart';
import 'package:structure_getx/modules/home/view/home_page.dart';
import 'package:structure_getx/modules/intro/controller/intro_bindings.dart';
import 'package:structure_getx/modules/intro/view/intro_page.dart';

class Routes {
  ///Routes of All App

  // Aqui vc seta toda paginas da aplicação, para trabalhar com rotas.

  get routes => [
        GetPage(
          name: '/',
          page: () => IntroPage(),
          binding: IntroBindings(),
        ),
        GetPage(
          name: '/home',
          page: () => HomePage(),
          binding: HomeBindings(),
        ),
      ];
}
