# Sinhala Unicode Converter

This package provides a simple API for converting Sinhala text between different encodings. The `SinhalaUnicode` class exposes methods like `singlishToUnicode()` for performing the conversions.

## Installation

To use this package, add `sinhala_unicode_converter` as a dependency in your `pubspec.yaml` file:

```yaml
dependencies:
  sinhala_unicode_converter: ^1.0.6
```

## Usage
```dart
import 'package:sinhala_unicode_converter/sinhala_unicode_converter.dart';

void main() {
  // Input text in Sinhala
  String inputText = "සිංහල";

  // Convert the input text
  String convertedText = SinhalaUnicode.singlishToUnicode(inputText);

  // Print the converted text for debugging
  print("Converted Text: $convertedText");
}
```

## Features

Convert Sinhala text to Unicode.
Additional features can be added in future updates.


## Example

```dart
import 'package:sinhala_unicode_converter/sinhala_unicode_converter.dart';

void main() {
  // Input text in Sinhala
  String inputText = "අම්මා";

  // Convert the input text to Unicode
  String convertedText = SinhalaUnicode.singlishToUnicode(inputText);

  // Print the converted text
  print("Converted Text: $convertedText"); // Output: wïud
}
```