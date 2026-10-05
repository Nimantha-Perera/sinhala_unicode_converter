// ignore_for_file: constant_identifier_names, avoid_print
// Main SinhalaUnicode class
import 'package:sinhala_unicode_converter/mapping/fm_abhaya.dart';
import 'package:sinhala_unicode_converter/mapping/fm_bamini.dart';
import 'package:sinhala_unicode_converter/mapping/fm_dlmanel.dart';
import 'package:sinhala_unicode_converter/mapping/kaputa.dart';
import 'package:sinhala_unicode_converter/mapping/singlish.dart';
import 'package:sinhala_unicode_converter/mapping/singlish_phonetic_unicode.dart';

class SinhalaUnicode {
  // Font type enumeration
  static const String FM_ABHAYA = 'fm_abhaya';
  static const String FM_BAMINI = 'fm_bamini';
  static const String DL_MANEL = 'dl_manel';
  static const String FM_MALITHI = 'fm_malithi';
  static const String KAPUTA = 'kaputa';
  static const String SINGLISH_PHONETIC = 'singlish_phonetic';
  static const String SINGLISH = 'singlish';
  static const String TANGLISH = 'tanglish';
  static const String THIBUS = 'thibus';

  static bool _isInitialized = false;

  /// Initialize the converter
  static void initialize() {
    if (_isInitialized) return;
    try {
      print('SinhalaUnicode converter initialized successfully');
      _isInitialized = true;
    } catch (e) {
      print('Error initializing SinhalaUnicode converter: $e');
      throw Exception('Failed to initialize converter: $e');
    }
  }

  /// Convert legacy font text to Unicode
  static String legacyToUnicode(String text, String fontType) {
    _ensureInitialized();
    if (text.isEmpty) return text;

    switch (fontType) {
      case FM_ABHAYA:
        return FmAbhaya.convert(text);
      case FM_BAMINI:
        return FmBamini.convert(text);
      case DL_MANEL:
        return DlManel.convert(text);
      case KAPUTA:
        return Kaputa.convert(text);
      case SINGLISH_PHONETIC:
        return SinglishPhonetic.convert(text);
      case SINGLISH:
        return Singlish.convert(text);
      case FM_MALITHI:
      case TANGLISH:
      case THIBUS:
        throw ArgumentError('Unsupported font type: $fontType');
      default:
        throw ArgumentError('Unsupported font type: $fontType');
    }
  }

  /// Auto-detect font type and convert to Unicode
  static String autoDetectAndConvert(String text) {
    _ensureInitialized();
    if (text.isEmpty) return text;

    // Check if input already has Sinhala Unicode characters
    if (RegExp(r'[\u0D80-\u0DFF]').hasMatch(text)) {
      return text;
    }

    // Detect FM Abhaya signature:
    // Characters unique to FM fonts: %, <, >, ~, |, [, ], {, }, *, Õ, ï, õ, ¾, å, or Kombuwa 'f' before consonants
    final hasFmSignature = RegExp(r'[Õ®~|\[\]{}*<>]|[f][l\.>pcgveoOkmnuhryjYIis]').hasMatch(text) ||
        text.contains('%') ||
        text.contains('ï') ||
        text.contains('õ') ||
        text.contains('¾') ||
        text.contains('wï') ||
        text.contains('Y%S') ||
        text.trim() == 'uu';

    if (hasFmSignature) {
      final fmResult = FmAbhaya.convert(text);
      if (_countSinhalaChars(fmResult) > 0) {
        return fmResult;
      }
    }

    // Otherwise, try Singlish
    final singlishResult = Singlish.convert(text);
    if (_countSinhalaChars(singlishResult) > 0) {
      return singlishResult;
    }

    // Fallback to FM Abhaya
    final fallbackFm = FmAbhaya.convert(text);
    if (_countSinhalaChars(fallbackFm) > 0) {
      return fallbackFm;
    }

    return text;
  }

  /// Get list of supported font types
  static List<String> getSupportedFonts() {
    return [
      FM_ABHAYA,
      FM_BAMINI,
      DL_MANEL,
      FM_MALITHI,
      KAPUTA,
      SINGLISH_PHONETIC,
      SINGLISH,
      TANGLISH,
      THIBUS,
    ];
  }

  /// Check if a specific font mapping is available
  static bool isFontSupported(String fontType) {
    return getSupportedFonts().contains(fontType);
  }

  // Private helper methods
  static void _ensureInitialized() {
    if (!_isInitialized) {
      initialize();
    }
  }

  static int _countSinhalaChars(String text) {
    final matches = RegExp(r'[\u0D80-\u0DFF]').allMatches(text);
    return matches.length;
  }
}
