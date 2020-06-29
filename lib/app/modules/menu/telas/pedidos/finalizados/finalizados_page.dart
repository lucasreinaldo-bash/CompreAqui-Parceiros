import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:parceiroscompreaqui/app/modules/menu/menu_controller.dart';
import 'finalizados_controller.dart';

class FinalizadosPage extends StatefulWidget {
  final String title;
  const FinalizadosPage({Key key, this.title = "Finalizados"})
      : super(key: key);

  @override
  _FinalizadosPageState createState() => _FinalizadosPageState();
}

class _FinalizadosPageState
    extends ModularState<FinalizadosPage, MenuController> {
  //use 'controller' variable to access controller

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Column(
        children: <Widget>[],
      ),
    );
  }
}
