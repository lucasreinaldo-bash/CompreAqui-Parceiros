import 'package:parceiroscompreaqui/app/app_controller.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:flutter/material.dart';
import 'package:parceiroscompreaqui/app/app_widget.dart';
import 'package:parceiroscompreaqui/app/modules/home/home_module.dart';
import 'package:parceiroscompreaqui/app/modules/menu/menu_controller.dart';
import 'package:parceiroscompreaqui/app/modules/menu/telas/pedidos/pedidos_page.dart';
import 'package:parceiroscompreaqui/app/modules/menu/telas/produtos/produtos_controller.dart';
import 'package:parceiroscompreaqui/app/modules/menu/telas/produtos/produtos_page.dart';

import 'modules/menu/menu_page.dart';
import 'modules/menu/telas/pedidos/pedidos_controller.dart';

class AppModule extends MainModule {
  @override
  List<Bind> get binds => [
        Bind((i) => AppController()),
        Bind((i) => MenuController()),
        Bind((i) => PedidosController()),
        Bind((i) => ProdutosController()),
      ];

  @override
  List<Router> get routers => [
        Router(Modular.initialRoute, module: HomeModule()),
        Router("/menu",
            transition: TransitionType.fadeIn, child: (_, args) => MenuPage()),
        Router("/pedidos",
            transition: TransitionType.fadeIn,
            child: (_, args) => PedidosPage()),
        Router("/produtos",
            transition: TransitionType.fadeIn,
            child: (_, args) => ProdutosPage()),
      ];

  @override
  Widget get bootstrap => AppWidget();

  static Inject get to => Inject<AppModule>.of();
}
