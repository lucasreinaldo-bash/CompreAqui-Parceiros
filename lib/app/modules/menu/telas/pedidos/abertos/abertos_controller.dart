import 'package:mobx/mobx.dart';

part 'abertos_controller.g.dart';

class AbertosController = _AbertosControllerBase with _$AbertosController;

abstract class _AbertosControllerBase with Store {
  @observable
  int value = 0;

  @action
  void increment() {
    value++;
  }
}
