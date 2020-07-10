import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:modular_posts/controllers/tabs.dart';
import 'package:modular_posts/pages/intro.dart';
import 'package:modular_posts/pages/tabs.dart';
import 'package:modular_posts/theme.dart';

/// InitialModule (a.k.a. RootModule).
///
/// This is the starting point of the app. It has to contain a route named '/'.
/// Routes named by '/' is the front page of that module.
/// All other modules must extend ChildModule.
class InitialModule extends MainModule {
  // Provide a list of dependencies to inject into your project
  @override
  List<Bind> get binds => [
        Bind((_) => TabsController()), // TODO: for some reason it's not working
      ];

  // Provide all the routes for your module
  @override
  List<Router> get routers => [
        Router('/', child: (_, __) => IntroPage()),
        Router('/tabs', child: (_, __) => TabsPage())
      ];

  // Provide the root widget associated with your module.
  // In this case, it's the MaterialApp below
  @override
  Widget get bootstrap => AppWidget();
}

class AppWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: '/',
      // Add Modular to manage the routing system
      navigatorKey: Modular.navigatorKey,
      onGenerateRoute: Modular.generateRoute,
      theme: basicTheme(),
    );
  }
}
