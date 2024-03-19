library flutter_int_extension;

extension IntExtension on int {
  String get toBinary => toRadixString(2);
  String get toHex => toRadixString(16);

  bool isBetween(int min, int max, {bool canBeEgal = false}) {
    if (canBeEgal && (this == min || this == max)) {
      return true;
    }

    return min < this && this < max;
  }
}
