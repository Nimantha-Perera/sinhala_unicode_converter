// package:sinhala_unicode_converter/mapping/kaputa.dart
import 'package:sinhala_unicode_converter/mapping/fm_abhaya.dart';

class Kaputa {
  /// Convert legacy Kaputa font text to Unicode
  static String convert(String text) {
    if (text.isEmpty) return text;
    return FmAbhaya.convert(text);
  }
}
