import 'dart:math';
import 'package:modular_posts/utils/pad.dart';

/// Random int to String
String rand(int i) => (Random().nextInt(i) + 1).pad;
