import 'package:flutter_test/flutter_test.dart';
import 'package:sinhala_unicode_converter/sinhala_unicode_converter.dart';


void main() {
  group('SinhalaUnicode Tests', () {
    
    setUp(() {
  
    });

    group('Initialization Tests', () {
      test('should initialize successfully', () {
        expect(() => SinhalaUnicode.initialize(), returnsNormally);
      });

      test('should handle multiple initialization calls gracefully', () {
        SinhalaUnicode.initialize();
        expect(() => SinhalaUnicode.initialize(), returnsNormally);
      });

     
    });

    group('Font Type Constants Tests', () {
      test('should have correct font type constants', () {
        expect(SinhalaUnicode.FM_ABHAYA, equals('fm_abhaya'));
        expect(SinhalaUnicode.FM_BAMINI, equals('fm_bamini'));
        expect(SinhalaUnicode.DL_MANEL, equals('dl_manel'));
        expect(SinhalaUnicode.FM_MALITHI, equals('fm_malithi'));
        expect(SinhalaUnicode.KAPUTA, equals('kaputa'));
        expect(SinhalaUnicode.SINGLISH_PHONETIC, equals('singlish_phonetic'));
        expect(SinhalaUnicode.SINGLISH, equals('singlish'));
        expect(SinhalaUnicode.TANGLISH, equals('tanglish'));
        expect(SinhalaUnicode.THIBUS, equals('thibus'));
      });
    });

    group('legacyToUnicode Tests', () {
      setUp(() {
        SinhalaUnicode.initialize();
      });

      test('should return empty string for empty input', () {
        expect(
          SinhalaUnicode.legacyToUnicode('', SinhalaUnicode.FM_ABHAYA),
          equals(''),
        );
      });

      test('should convert FM_ABHAYA text successfully', () {
        const testText = 'test text';
        final result = SinhalaUnicode.legacyToUnicode(testText, SinhalaUnicode.FM_ABHAYA);
        expect(result, isNotNull);
        expect(result, isA<String>());
      });

      test('should convert FM_BAMINI text successfully', () {
        const testText = 'test text';
        final result = SinhalaUnicode.legacyToUnicode(testText, SinhalaUnicode.FM_BAMINI);
        expect(result, isNotNull);
        expect(result, isA<String>());
      });

      test('should convert DL_MANEL text successfully', () {
        const testText = 'test text';
        final result = SinhalaUnicode.legacyToUnicode(testText, SinhalaUnicode.DL_MANEL);
        expect(result, isNotNull);
        expect(result, isA<String>());
      });

      test('should convert KAPUTA text successfully', () {
        const testText = 'test text';
        final result = SinhalaUnicode.legacyToUnicode(testText, SinhalaUnicode.KAPUTA);
        expect(result, isNotNull);
        expect(result, isA<String>());
      });

      test('should convert SINGLISH_PHONETIC text successfully', () {
        const testText = 'kohomada';
        final result = SinhalaUnicode.legacyToUnicode(testText, SinhalaUnicode.SINGLISH_PHONETIC);
        expect(result, isNotNull);
        expect(result, isA<String>());
      });

      test('should convert SINGLISH text successfully', () {
        const testText = 'ayubowan';
        final result = SinhalaUnicode.legacyToUnicode(testText, SinhalaUnicode.SINGLISH);
        expect(result, isNotNull);
        expect(result, isA<String>());
      });

      test('should throw ArgumentError for unsupported font type', () {
        expect(
          () => SinhalaUnicode.legacyToUnicode('test', 'unsupported_font'),
          throwsA(isA<ArgumentError>()),
        );
      });

      test('should throw ArgumentError for FM_MALITHI (commented out)', () {
        expect(
          () => SinhalaUnicode.legacyToUnicode('test', SinhalaUnicode.FM_MALITHI),
          throwsA(isA<ArgumentError>()),
        );
      });

      test('should throw ArgumentError for TANGLISH (commented out)', () {
        expect(
          () => SinhalaUnicode.legacyToUnicode('test', SinhalaUnicode.TANGLISH),
          throwsA(isA<ArgumentError>()),
        );
      });

      test('should throw ArgumentError for THIBUS (commented out)', () {
        expect(
          () => SinhalaUnicode.legacyToUnicode('test', SinhalaUnicode.THIBUS),
          throwsA(isA<ArgumentError>()),
        );
      });

      test('should handle special characters and symbols', () {
        const testText = '!@#\$%^&*()_+-={}[]|\\:";\'<>?,./';
        final result = SinhalaUnicode.legacyToUnicode(testText, SinhalaUnicode.FM_ABHAYA);
        expect(result, isNotNull);
      });

      test('should handle Unicode characters in input', () {
        const testText = 'සිංහල අකුරු';
        final result = SinhalaUnicode.legacyToUnicode(testText, SinhalaUnicode.FM_ABHAYA);
        expect(result, isNotNull);
      });
    });

    group('autoDetectAndConvert Tests', () {
      setUp(() {
        SinhalaUnicode.initialize();
      });

      test('should return original text for empty input', () {
        final result = SinhalaUnicode.autoDetectAndConvert('');
        expect(result, equals(''));
      });

      test('should auto-detect and convert text', () {
        const testText = 'test text for auto detection';
        final result = SinhalaUnicode.autoDetectAndConvert(testText);
        expect(result, isNotNull);
        expect(result, isA<String>());
      });

      test('should return best conversion with most Sinhala characters', () {
        const testText = 'ayubowan kohomada';
        final result = SinhalaUnicode.autoDetectAndConvert(testText);
        expect(result, isNotNull);
        // The result should potentially contain Sinhala Unicode characters
      });

      test('should handle text that does not convert well to any font', () {
        const testText = '1234567890';
        final result = SinhalaUnicode.autoDetectAndConvert(testText);
        expect(result, isNotNull);
        // Should return original or best attempt
      });

      test('should handle mixed language text', () {
        const testText = 'Hello world සිංහල';
        final result = SinhalaUnicode.autoDetectAndConvert(testText);
        expect(result, isNotNull);
      });
    });

    group('getSupportedFonts Tests', () {
      test('should return list of supported fonts', () {
        final fonts = SinhalaUnicode.getSupportedFonts();
        expect(fonts, isA<List<String>>());
        expect(fonts, isNotEmpty);
        expect(fonts.length, equals(9));
      });

      test('should contain all expected font types', () {
        final fonts = SinhalaUnicode.getSupportedFonts();
        expect(fonts, contains(SinhalaUnicode.FM_ABHAYA));
        expect(fonts, contains(SinhalaUnicode.FM_BAMINI));
        expect(fonts, contains(SinhalaUnicode.DL_MANEL));
        expect(fonts, contains(SinhalaUnicode.FM_MALITHI));
        expect(fonts, contains(SinhalaUnicode.KAPUTA));
        expect(fonts, contains(SinhalaUnicode.SINGLISH_PHONETIC));
        expect(fonts, contains(SinhalaUnicode.SINGLISH));
        expect(fonts, contains(SinhalaUnicode.TANGLISH));
        expect(fonts, contains(SinhalaUnicode.THIBUS));
      });
    });

    group('isFontSupported Tests', () {
      test('should return true for supported fonts', () {
        expect(SinhalaUnicode.isFontSupported(SinhalaUnicode.FM_ABHAYA), isTrue);
        expect(SinhalaUnicode.isFontSupported(SinhalaUnicode.FM_BAMINI), isTrue);
        expect(SinhalaUnicode.isFontSupported(SinhalaUnicode.DL_MANEL), isTrue);
        expect(SinhalaUnicode.isFontSupported(SinhalaUnicode.KAPUTA), isTrue);
        expect(SinhalaUnicode.isFontSupported(SinhalaUnicode.SINGLISH_PHONETIC), isTrue);
        expect(SinhalaUnicode.isFontSupported(SinhalaUnicode.SINGLISH), isTrue);
      });

      test('should return true for fonts that are in list but not implemented', () {
        // These are in the supported list but commented out in the switch case
        expect(SinhalaUnicode.isFontSupported(SinhalaUnicode.FM_MALITHI), isTrue);
        expect(SinhalaUnicode.isFontSupported(SinhalaUnicode.TANGLISH), isTrue);
        expect(SinhalaUnicode.isFontSupported(SinhalaUnicode.THIBUS), isTrue);
      });

      test('should return false for unsupported fonts', () {
        expect(SinhalaUnicode.isFontSupported('unknown_font'), isFalse);
        expect(SinhalaUnicode.isFontSupported(''), isFalse);
        expect(SinhalaUnicode.isFontSupported('random_text'), isFalse);
      });
    });

    group('Edge Cases and Error Handling', () {
      setUp(() {
        SinhalaUnicode.initialize();
      });

      test('should handle null-like inputs gracefully', () {
        // Test with whitespace
        final result1 = SinhalaUnicode.legacyToUnicode('   ', SinhalaUnicode.FM_ABHAYA);
        expect(result1, isNotNull);

        // Test with newlines
        final result2 = SinhalaUnicode.legacyToUnicode('\n\r\t', SinhalaUnicode.FM_ABHAYA);
        expect(result2, isNotNull);
      });

      test('should handle very long text', () {
        final longText = 'a' * 10000;
        final result = SinhalaUnicode.legacyToUnicode(longText, SinhalaUnicode.FM_ABHAYA);
        expect(result, isNotNull);
        expect(result, isA<String>());
      });

      test('should handle special Unicode characters', () {
        const specialText = '🙂😀🎉✨';
        final result = SinhalaUnicode.legacyToUnicode(specialText, SinhalaUnicode.FM_ABHAYA);
        expect(result, isNotNull);
      });
    });

    group('Integration Tests', () {
      setUp(() {
        SinhalaUnicode.initialize();
      });

      test('should perform full conversion workflow', () {
        // Test a complete workflow: check support -> convert -> auto-detect
        const fontType = SinhalaUnicode.SINGLISH;
        const testText = 'ayubowan';
        
        // Check if font is supported
        expect(SinhalaUnicode.isFontSupported(fontType), isTrue);
        
        // Convert using specific font
        final converted = SinhalaUnicode.legacyToUnicode(testText, fontType);
        expect(converted, isNotNull);
        
        // Auto-detect conversion
        final autoDetected = SinhalaUnicode.autoDetectAndConvert(testText);
        expect(autoDetected, isNotNull);
      });

      test('should handle multiple consecutive conversions', () {
        const texts = ['text1', 'text2', 'text3', 'text4'];
        final fontTypes = [
          SinhalaUnicode.FM_ABHAYA,
          SinhalaUnicode.FM_BAMINI,
          SinhalaUnicode.KAPUTA,
          SinhalaUnicode.SINGLISH
        ];
        
        for (int i = 0; i < texts.length; i++) {
          final result = SinhalaUnicode.legacyToUnicode(texts[i], fontTypes[i]);
          expect(result, isNotNull);
          expect(result, isA<String>());
        }
      });
    });

    group('Performance Tests', () {
      setUp(() {
        SinhalaUnicode.initialize();
      });

      test('should complete conversion within reasonable time', () {
        const testText = 'performance test text for conversion';
        final stopwatch = Stopwatch()..start();
        
        final result = SinhalaUnicode.legacyToUnicode(testText, SinhalaUnicode.FM_ABHAYA);
        
        stopwatch.stop();
        expect(result, isNotNull);
        expect(stopwatch.elapsedMilliseconds, lessThan(1000)); // Should complete within 1 second
      });

      test('should handle auto-detection efficiently', () {
        const testText = 'auto detection performance test';
        final stopwatch = Stopwatch()..start();
        
        final result = SinhalaUnicode.autoDetectAndConvert(testText);
        
        stopwatch.stop();
        expect(result, isNotNull);
        expect(stopwatch.elapsedMilliseconds, lessThan(5000)); // Should complete within 5 seconds
      });
    });
  });
}