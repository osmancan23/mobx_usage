import 'package:mobx/mobx.dart';

part 'home_view_model.g.dart';

class HomeViewModel = HomeViewModelBase with _$HomeViewModel;

abstract class HomeViewModelBase with Store {
  @observable
  int number = 0;

  @action
  void increment() {
    number++;
  }
}
