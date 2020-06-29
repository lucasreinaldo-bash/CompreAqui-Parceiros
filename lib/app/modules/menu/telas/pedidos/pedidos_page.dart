import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:parceiroscompreaqui/app/modules/home/home_controller.dart';
import 'package:parceiroscompreaqui/app/modules/menu/menu_controller.dart';

class PedidosPage extends StatefulWidget {
  final String title;
  const PedidosPage({Key key, this.title = "Pedidos"}) : super(key: key);

  @override
  _PedidosPageState createState() => _PedidosPageState();
}

class _PedidosPageState extends ModularState<PedidosPage, MenuController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(widget.title),
        ),
        body: Stack(
          children: [
            Align(
              alignment: Alignment.center,
              child: Row(
                children: [
                  FlatButton(
                    child: Image.asset(
                      "assets/btn_pedidos_aberto.png",
                      height: 180,
                      width: 140,
                    ),
                    onPressed: () {
                      Navigator.pushNamed(context, "/abertos");
                    },
                  ),
                  FlatButton(
                    child: Image.asset(
                      "assets/btn_pedidos_finalizados.png",
                      height: 180,
                      width: 140,
                    ),
                    onPressed: () {
                      Navigator.pushNamed(context, "/finalizados");
                    },
                  )
                ],
              ),
            )
          ],
        ));
  }
}
