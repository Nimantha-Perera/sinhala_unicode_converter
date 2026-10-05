// package:sinhala_unicode_converter/mapping/fm_dlmanel.dart
import 'package:sinhala_unicode_converter/mapping/fm_abhaya.dart';

class DlManel {
  /// Convert legacy DL Manel text to Unicode
  /// DL Manel shares the standard Sinhala typewriter/ASCII layout with FM Abhaya
  static String convert(String text) {
    if (text.isEmpty) return text;
    
    // DL Manel specific character pre-normalizations if any
    final normalized = text
        .replaceAll('^', 'ර')
        .replaceAll('&', 'ද')
        .replaceAll('@', 'ණ');

    return FmAbhaya.convert(normalized);
  }
}
