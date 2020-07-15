/// Applies zero padding on integers less than 10
/// When called on a integers greater than 9, returns it cast to String
/// Extension method is available since Dart 2.7
extension PadExtension on int {
  String get pad => this < 10 ? '0' + this.toString() : this.toString();
}
