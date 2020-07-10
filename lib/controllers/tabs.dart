import 'package:mobx/mobx.dart';
part 'tabs.g.dart';

class TabsController = _TabsControllerBase with _$TabsController;

abstract class _TabsControllerBase with Store {
  @observable
  int tab = 0;

  @action
  void setTab(int t) => tab = t;
}
