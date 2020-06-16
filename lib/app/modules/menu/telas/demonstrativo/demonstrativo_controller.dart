import 'package:mobx/mobx.dart';

part 'demonstrativo_controller.g.dart';

class DemonstrativoController = _DemonstrativoControllerBase
    with _$DemonstrativoController;

abstract class _DemonstrativoControllerBase with Store {
  @observable
  int value = 0;

  @action
  void increment() {
    value++;
  }
}
