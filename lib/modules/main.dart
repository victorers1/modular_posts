import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';

class InitialModule extends MainModule {
  @override
  List<Bind> get binds => [];

  @override
  List<Router> get routers => [];

  @override
  Widget get bootstrap => AppWidget();
}

class AppWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: '/',
      // add Modular to manage the routing system
      navigatorKey: Modular.navigatorKey,
      onGenerateRoute: Modular.generateRoute,
    );
  }
}
