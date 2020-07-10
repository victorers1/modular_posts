/// Apply uppercase to the first char of a not-empty string
/// When called on an empty string, returns it back
/// 'extension' keyword is available since Dart 2.6
extension StringExtension on String {
  String capitalize() {
    return this != '' ? '${this[0].toUpperCase()}${this.substring(1)}' : this;
  }
}
