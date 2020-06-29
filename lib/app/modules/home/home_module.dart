import 'package:parceiroscompreaqui/app/modules/home/Login.dart';
import 'package:parceiroscompreaqui/app/modules/home/home_controller.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:parceiroscompreaqui/app/modules/home/home_page.dart';
import 'package:parceiroscompreaqui/app/modules/login/login_page.dart';
import 'package:parceiroscompreaqui/app/modules/menu/menu_controller.dart';
import 'package:parceiroscompreaqui/app/modules/menu/menu_page.dart';
import 'package:parceiroscompreaqui/app/modules/menu/telas/pedidos/pedidos_controller.dart';
import 'package:parceiroscompreaqui/app/modules/menu/telas/pedidos/pedidos_page.dart';

class HomeModule extends ChildModule {
  @override
  List<Bind> get binds => [
        Bind((i) => HomeController()),
        Bind((i) => MenuController()),
        Bind((i) => PedidosController()),
      ];

  @override
  List<Router> get routers => [
        Router(Modular.initialRoute, child: (_, args) => LoginPage()),
        Router("/menu",
            transition: TransitionType.fadeIn, child: (_, args) => MenuPage()),
      ];

  static Inject get to => Inject<HomeModule>.of();
}
