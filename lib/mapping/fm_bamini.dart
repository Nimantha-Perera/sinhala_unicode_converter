// package:sinhala_unicode_converter/mapping/fm_bamini.dart
import 'package:sinhala_unicode_converter/mapping/fm_abhaya.dart';

class FmBamini {
  /// Convert legacy FM Bamini text to Unicode
  static String convert(String text) {
    if (text.isEmpty) return text;
    return FmAbhaya.convert(text);
  }
}
