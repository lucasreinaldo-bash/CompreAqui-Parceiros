import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:parceiroscompreaqui/app/app_controller.dart';
import 'package:parceiroscompreaqui/app/modules/menu/menu_controller.dart';
import 'abertos_controller.dart';

class AbertosPage extends StatefulWidget {
  final String title;
  const AbertosPage({Key key, this.title = "Abertos"}) : super(key: key);

  @override
  _AbertosPageState createState() => _AbertosPageState();
}

class _AbertosPageState extends ModularState<AbertosPage, MenuController> {
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
