import 'package:dio/dio.dart';
import 'package:mobx/mobx.dart';
import 'package:modular_posts/models/user.dart';
import 'package:modular_posts/services/user_service.dart';
part 'user_controller.g.dart';

class UserController = _UserControllerBase with _$UserController;

abstract class _UserControllerBase with Store {
  final userService = UserService();

  @observable
  UserModel _user;
  @computed
  UserModel get user => _user;

  @action
  Future<bool> getUser(int id) async {
    print('on UserController > getUser()'); // TODO: remove
    try {
      Map<String, dynamic> userJson = await userService.getUser(id);
      _user = UserModel.fromJson(userJson);
    } on DioError catch (e) {
      print('on UserController > getUser() > ${e.message}');
      return false;
    }
    return true;
  }
}
