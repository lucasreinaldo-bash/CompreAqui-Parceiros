import 'package:parceiroscompreaqui/app/modules/menu/telas/pedidos/pedidos_controller.dart';
import 'package:parceiroscompreaqui/app/modules/menu/menu_controller.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:parceiroscompreaqui/app/modules/menu/menu_page.dart';
import 'package:parceiroscompreaqui/app/modules/menu/telas/pedidos/pedidos_page.dart';
import 'package:parceiroscompreaqui/app/modules/menu/telas/produtos/produtos_controller.dart';

class MenuModule extends ChildModule {
  @override
  List<Bind> get binds => [
        Bind((i) => MenuController()),
        Bind((i) => PedidosController()),
        Bind((i) => ProdutosController()),
      ];

  @override
  List<Router> get routers => [
        Router(Modular.initialRoute, child: (_, args) => MenuPage()),
        Router("/pedidos",
            transition: TransitionType.fadeIn,
            child: (_, args) => PedidosPage()),
        Router("/produtos",
            transition: TransitionType.fadeIn,
            child: (_, args) => PedidosPage()),
      ];

  static Inject get to => Inject<MenuModule>.of();
}
