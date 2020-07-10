/// Apply uppercase to the first char of a not-empty string
/// When called on an empty string, returns it back
/// Extension methods is available since Dart 2.7
extension CapitalizeExtension on String {
  String get capitalize =>
      this != '' ? '${this[0].toUpperCase()}${this.substring(1)}' : this;
}
