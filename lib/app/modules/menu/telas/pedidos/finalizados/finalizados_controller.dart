import 'package:mobx/mobx.dart';

part 'finalizados_controller.g.dart';

class FinalizadosController = _FinalizadosControllerBase
    with _$FinalizadosController;

abstract class _FinalizadosControllerBase with Store {
  @observable
  int value = 0;

  @action
  void increment() {
    value++;
  }
}
