// ignore_for_file: avoid_print
import 'package:flutter_test/flutter_test.dart';
import 'package:sinhala_unicode_converter/sinhala_unicode_converter.dart';

void main() {
  group('Sinhala Unicode Real Word Tests', () {
    setUp(() {
      SinhalaUnicode.initialize();
    });

    test('should convert Singlish greetings to Sinhala', () {
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

    test('should convert FM Abhaya and DL Manel words accurately', () {
      expect(SinhalaUnicode.legacyToUnicode('uu', SinhalaUnicode.FM_ABHAYA), equals('මම'));
      expect(SinhalaUnicode.legacyToUnicode('fld<U', SinhalaUnicode.FM_ABHAYA), equals('කොළඹ'));
      expect(SinhalaUnicode.legacyToUnicode('Y%S ,xld', SinhalaUnicode.FM_ABHAYA), equals('ශ්‍රී ලංකා'));
      expect(SinhalaUnicode.legacyToUnicode('wïud', SinhalaUnicode.FM_ABHAYA), equals('අම්මා'));
      expect(SinhalaUnicode.legacyToUnicode('wOHdmkh', SinhalaUnicode.FM_ABHAYA), equals('අධ්‍යාපනය'));
      expect(SinhalaUnicode.legacyToUnicode('fld<U', SinhalaUnicode.DL_MANEL), equals('කොළඹ'));
    });

    test('should auto-detect and convert Singlish words', () {
      final testWords = ['ayubowan', 'amma', 'kiri', 'gaha'];
      
      for (String word in testWords) {
        final result = SinhalaUnicode.autoDetectAndConvert(word);
        print('Auto-detect: $word -> $result');
        expect(result, isNotNull);
        
        final hasSinhala = RegExp(r'[\u0D80-\u0DFF]').hasMatch(result);
        expect(hasSinhala, isTrue);
      }
    });

    test('should auto-detect and convert FM Abhaya words', () {
      expect(SinhalaUnicode.autoDetectAndConvert('Y%S ,xld'), equals('ශ්‍රී ලංකා'));
      expect(SinhalaUnicode.autoDetectAndConvert('fld<U'), equals('කොළඹ'));
      expect(SinhalaUnicode.autoDetectAndConvert('wïud'), equals('අම්මා'));
    });

    test('should verify Unicode output', () {
      final result = SinhalaUnicode.legacyToUnicode('ayubowan', SinhalaUnicode.SINGLISH);
      print('Unicode test: ayubowan -> $result');
      expect(result, isNotNull);
    });
  });
}