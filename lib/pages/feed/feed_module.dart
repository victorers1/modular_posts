import 'package:flutter_modular/flutter_modular.dart';
import 'package:modular_posts/controllers/feed_controller.dart';
import 'package:modular_posts/controllers/post_controller.dart';
import 'package:modular_posts/pages/feed/details_page.dart';
import 'package:modular_posts/pages/feed/feed_page.dart';

class FeedModule extends ChildModule {
  static Inject get to => Inject<FeedModule>.of();

  @override
  List<Bind> get binds => [
        Bind((_) => FeedController()),
        Bind((_) => PostController()),
      ];

  @override
  List<Router> get routers => [
        Router(Modular.initialRoute, child: (_, __) => Feed()),
        Router('/details',
            child: (_, args) => PostDetailsPage(postController: args.data))
      ];
}
