import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:modular_posts/modules/main.dart';

void main() {
  SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(
    statusBarColor: Colors.transparent,
    statusBarBrightness: Brightness.light,
    systemNavigationBarColor: Colors.black,
  ));
  runApp(ModularApp(
    module: InitialModule(),
  ));
}
