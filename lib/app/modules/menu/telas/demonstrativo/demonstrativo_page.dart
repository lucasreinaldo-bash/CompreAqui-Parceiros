import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'demonstrativo_controller.dart';

class DemonstrativoPage extends StatefulWidget {
  final String title;
  const DemonstrativoPage({Key key, this.title = "Demonstrativo"})
      : super(key: key);

  @override
  _DemonstrativoPageState createState() => _DemonstrativoPageState();
}

class _DemonstrativoPageState
    extends ModularState<DemonstrativoPage, DemonstrativoController> {
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
