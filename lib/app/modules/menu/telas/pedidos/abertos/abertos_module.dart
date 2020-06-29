import 'package:parceiroscompreaqui/app/modules/menu/telas/pedidos/abertos/abertos_controller.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:parceiroscompreaqui/app/modules/menu/telas/pedidos/abertos/abertos_page.dart';

class AbertosModule extends ChildModule {
  @override
  List<Bind> get binds => [
        Bind((i) => AbertosController()),
      ];

  @override
  List<Router> get routers => [
        Router(Modular.initialRoute, child: (_, args) => AbertosPage()),
      ];

  static Inject get to => Inject<AbertosModule>.of();
}
