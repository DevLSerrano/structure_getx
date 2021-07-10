import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'application/routes/routes.dart';
import 'application/translations/AppTranslation.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final routes = Routes();
    return GetMaterialApp(
      theme: ThemeData(
        primarySwatch: Colors.blueGrey,
      ),
      locale: Locale('pt', 'PT'), //Idioma inicial da app
      fallbackLocale:
          Locale('en', 'EN'), // Idioma de resposta caso o inicial der erro
      translationsKeys: AppTranslation.translations, // Keys de tradução
      defaultTransition: Transition.fadeIn, // Estilo de transição
      getPages: routes.routes, // Rotas  .... por default a rota / é a primeira
    );
  }
}
