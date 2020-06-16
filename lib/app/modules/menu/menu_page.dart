import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'menu_controller.dart';

class MenuPage extends StatefulWidget {
  final String title;
  const MenuPage({Key key, this.title = "Menu"}) : super(key: key);

  @override
  _MenuPageState createState() => _MenuPageState();
}

class _MenuPageState extends ModularState<MenuPage, MenuController> {
  //use 'controller' variable to access controller

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Column(
      children: [
        SizedBox(
          height: 50,
        ),
        Image.asset(
          "assets/logoparceiro.png",
          width: 150,
          height: 150,
        ),
        Padding(
            padding: EdgeInsets.all(25),
            child: Column(
              children: [
                Row(
                  children: [
                    FlatButton(
                      child: Image.asset(
                        "assets/btn_pedidos_recebidos.png",
                        height: 150,
                        width: 120,
                      ),
                      onPressed: () {
                        Navigator.pushNamed(context, "/pedidos");
                      },
                    ),
                    FlatButton(
                      child: Image.asset(
                        "assets/btn_produtos.png",
                        height: 150,
                        width: 120,
                      ),
                      onPressed: () {
                        Navigator.pushNamed(context, "/produtos");
                      },
                    ),
                  ],
                ),
                Row(
                  children: [
                    FlatButton(
                      child: Image.asset(
                        "assets/btn_perfil_da_loja.png",
                        height: 150,
                        width: 120,
                      ),
                    ),
                    FlatButton(
                      onPressed: () {
                        Navigator.pushNamed(context, "/telaInicial");
                      },
                      child: Image.asset(
                        "assets/btn_demonstrativos.png",
                        height: 150,
                        width: 120,
                      ),
                    ),
                  ],
                ),
              ],
            ))
      ],
    ));
  }
}
