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
    _checkInitialized();
    if (text.isEmpty) return text;
    
    switch (fontType) {
      case FM_ABHAYA:
        return FmAbhaya.convert(text);
      case FM_BAMINI:
        return FmBamini.convert(text);
      case DL_MANEL:
        return DlManel.convert(text);
      // case FM_MALITHI:
      //   return FmMalithi.convert(text);
      case KAPUTA:
        return Kaputa.convert(text);
      case SINGLISH_PHONETIC:
        return SinglishPhonetic.convert(text);
      case SINGLISH:
        return Singlish.convert(text);
      // case TANGLISH:
      //   return Tanglish.convert(text);
      // case THIBUS:
      //   return Thibus.convert(text);
      default:
        throw ArgumentError('Unsupported font type: $fontType');
    }
  }

  /// Auto-detect font type and convert to Unicode
  static String autoDetectAndConvert(String text) {
    _checkInitialized();
    
    List<String> fontTypes = [
      FM_ABHAYA, FM_BAMINI, DL_MANEL, FM_MALITHI, KAPUTA,
      SINGLISH_PHONETIC, SINGLISH, TANGLISH, THIBUS
    ];
    
    String bestConversion = text;
    int maxSinhalaChars = 0;
    
    for (String fontType in fontTypes) {
      try {
        String converted = legacyToUnicode(text, fontType);
        int sinhalaChars = _countSinhalaChars(converted);
        
        if (sinhalaChars > maxSinhalaChars) {
          maxSinhalaChars = sinhalaChars;
          bestConversion = converted;
        }
      } catch (e) {
        continue;
      }
    }
    
    return bestConversion;
  }

  /// Get list of supported font types
  static List<String> getSupportedFonts() {
    return [
      FM_ABHAYA, FM_BAMINI, DL_MANEL, FM_MALITHI, KAPUTA,
      SINGLISH_PHONETIC, SINGLISH, TANGLISH, THIBUS
    ];
  }

  /// Check if a specific font mapping is available
  static bool isFontSupported(String fontType) {
    return getSupportedFonts().contains(fontType);
  }

  // Private helper methods
  static void _checkInitialized() {
    if (!_isInitialized) {
      throw StateError('SinhalaUnicode not initialized. Call initialize() first.');
    }
  }

  static int _countSinhalaChars(String text) {
    final matches = RegExp(r'[\u0D80-\u0DFF]').allMatches(text);
    return matches.length;
  }
}
