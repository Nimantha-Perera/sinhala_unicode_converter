// package:sinhala_unicode_converter/mapping/singlish_phonetic_unicode.dart
import 'package:sinhala_unicode_converter/mapping/singlish.dart';

class SinglishPhonetic {
  /// Convert phonetic Singlish text to Unicode
  static String convert(String text) {
    if (text.isEmpty) return text;
    return Singlish.convert(text);
  }
}
