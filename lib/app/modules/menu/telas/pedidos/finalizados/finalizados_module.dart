import 'package:parceiroscompreaqui/app/modules/menu/telas/pedidos/finalizados/finalizados_controller.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:parceiroscompreaqui/app/modules/menu/telas/pedidos/finalizados/finalizados_page.dart';

class FinalizadosModule extends ChildModule {
  @override
  List<Bind> get binds => [
        Bind((i) => FinalizadosController()),
      ];

  @override
  List<Router> get routers => [
        Router(Modular.initialRoute, child: (_, args) => FinalizadosPage()),
      ];

  static Inject get to => Inject<FinalizadosModule>.of();
}
