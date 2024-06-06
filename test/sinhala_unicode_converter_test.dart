import 'package:flutter_test/flutter_test.dart';
import 'package:sinhala_unicode_converter/sinhala_unicode_converter.dart';

void main() {
  test('Sinhala Unicode Converter Test', () {
    // Test input text
    String inputText = "සිංහල";

    // Expected output text after conversion
    String expectedOutput = "සිංහල";

    // Convert the input text
    String convertedText = SinhalaUnicode.singlishToUnicode(inputText);

    // Print the converted text for debugging
    print("Converted Text: $convertedText");

    // Test if the converted text matches the expected output
    expect(convertedText, expectedOutput);
  });
}
