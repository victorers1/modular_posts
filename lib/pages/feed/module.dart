import 'package:flutter_modular/flutter_modular.dart';
import 'package:modular_posts/controllers/feed.dart';
import 'package:modular_posts/pages/feed/page.dart';

class FeedModule extends ChildModule {
  static Inject get to => Inject<FeedModule>.of();

  @override
  List<Bind> get binds => [
        Bind((_) => FeedController()),
      ];

  @override
  List<Router> get routers => [
        Router(Modular.initialRoute, child: (_, __) => Feed()),
      ];
}
