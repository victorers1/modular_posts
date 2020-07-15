import 'package:flutter_modular/flutter_modular.dart';
import 'package:modular_posts/controllers/user_controller.dart';
import 'package:modular_posts/pages/profile/profile_page.dart';

class ProfileModule extends ChildModule {
  static Inject get to => Inject<ProfileModule>.of();

  @override
  List<Bind> get binds => [Bind((i) => UserController())];

  @override
  List<Router> get routers => [
        Router(Modular.initialRoute, child: (_, __) => Profile()),
      ];
}
