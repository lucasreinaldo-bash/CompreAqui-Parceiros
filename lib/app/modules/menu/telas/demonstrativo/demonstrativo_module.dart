import 'package:parceiroscompreaqui/app/modules/menu/telas/demonstrativo/demonstrativo_controller.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:parceiroscompreaqui/app/modules/menu/telas/demonstrativo/demonstrativo_page.dart';

class DemonstrativoModule extends ChildModule {
  @override
  List<Bind> get binds => [
        Bind((i) => DemonstrativoController()),
      ];

  @override
  List<Router> get routers => [
        Router(Modular.initialRoute, child: (_, args) => DemonstrativoPage()),
      ];

  static Inject get to => Inject<DemonstrativoModule>.of();
}
