import 'package:get_it/get_it.dart';
import 'package:mobx/mobx.dart';
part 'store_page.g.dart';

class StorePage = _StorePage with _$StorePage;

initLocator() {
  GetIt locator = GetIt.instance;
  locator.registerFactory<StorePage>(() => StorePage());
}

abstract class _StorePage with Store {
  @observable
  String phonemuber = '1';

  @observable
  String otpCode = '';

  @observable
  String first_name = '';

  @observable
  String birthData = '';

  @observable
  String nickname = '';

  @observable
  String gender = '';

  @observable
  bool boolColor = false;

  @observable
  String showingGender = '';
}
