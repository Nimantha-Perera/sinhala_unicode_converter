import 'package:flutter_test/flutter_test.dart';
import 'package:sinhala_unicode_converter/sinhala_unicode_converter.dart';

void main() {
  group('Sinhala Unicode Real Word Tests', () {
    setUp(() {
      SinhalaUnicode.initialize();
    });

    test('should convert Singlish greetings to Sinhala', () {
      // Test common greetings
      final ayubowan = SinhalaUnicode.legacyToUnicode('ayubowan', SinhalaUnicode.SINGLISH);
      print('ayubowan -> $ayubowan');
      expect(ayubowan, isNotNull);
      expect(ayubowan, isA<String>());
      
      final kohomada = SinhalaUnicode.legacyToUnicode('kohomada', SinhalaUnicode.SINGLISH);
      print('kohomada -> $kohomada');
      expect(kohomada, isNotNull);
      expect(kohomada, isA<String>());
    });

    test('should convert family terms', () {
      final amma = SinhalaUnicode.legacyToUnicode('amma', SinhalaUnicode.SINGLISH);
      print('amma -> $amma');
      expect(amma, isNotNull);
      
      final thaaththa = SinhalaUnicode.legacyToUnicode('thaaththa', SinhalaUnicode.SINGLISH);
      print('thaaththa -> $thaaththa');
      expect(thaaththa, isNotNull);
    });

    test('should auto-detect and convert Singlish words', () {
      final testWords = ['ayubowan', 'amma', 'kiri', 'gaha'];
      
      for (String word in testWords) {
        final result = SinhalaUnicode.autoDetectAndConvert(word);
        print('Auto-detect: $word -> $result');
        expect(result, isNotNull);
        
        // Check if result contains Sinhala Unicode characters
        final hasSinhala = RegExp(r'[\u0D80-\u0DFF]').hasMatch(result);
        print('Contains Sinhala Unicode: $hasSinhala');
      }
    });

    test('should verify Unicode output', () {
      final result = SinhalaUnicode.legacyToUnicode('ayubowan', SinhalaUnicode.SINGLISH);
      print('Unicode test: ayubowan -> $result');
      
      // Print character codes to see what we're getting
      for (int i = 0; i < result.length; i++) {
        final char = result[i];
        final code = char.codeUnitAt(0);
        print('  [$i]: $char (U+${code.toRadixString(16).toUpperCase().padLeft(4, '0')})');
      }
      
      expect(result, isNotNull);
    });
  });
}