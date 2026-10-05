# Sinhala Unicode Converter

A powerful Dart library for converting legacy Sinhala fonts and Singlish text to proper Unicode Sinhala characters.

## Features

- ✅ Convert legacy Sinhala fonts to Unicode
- ✅ Convert Singlish (English transliteration) to Sinhala Unicode
- ✅ Support for multiple font formats
- ✅ Auto-detection and conversion
- ✅ Easy-to-use API
- ✅ Cross-platform compatibility (Flutter/Dart)

## Supported Font Types

| Font Type | Description | Constant |
|-----------|-------------|----------|
| **FM Abhaya** | FM Abhaya legacy font | `SinhalaUnicode.FM_ABHAYA` |
| **FM Bamini** | FM Bamini legacy font | `SinhalaUnicode.FM_BAMINI` |
| **DL Manel** | DL Manel legacy font | `SinhalaUnicode.DL_MANEL` |
| **Kaputa** | Kaputa legacy font | `SinhalaUnicode.KAPUTA` |
| **Singlish** | English transliteration | `SinhalaUnicode.SINGLISH` |
| **Singlish Phonetic** | Phonetic transliteration | `SinhalaUnicode.SINGLISH_PHONETIC` |

## Installation

Add this to your `pubspec.yaml`:

```yaml
dependencies:
  sinhala_unicode_converter: ^1.0.9
```

Then run:

```bash
flutter pub get
```

## Usage

### Basic Usage

```dart
import 'package:sinhala_unicode_converter/sinhala_unicode_converter.dart';

void main() {
  // Initialize the converter (optional)
  SinhalaUnicode.initialize();
  
  // Convert Singlish to Unicode
  String unicode = SinhalaUnicode.legacyToUnicode(
    'mama sinhala katha karanawa', 
    SinhalaUnicode.SINGLISH
  );
  print(unicode); // මම සිංහල කතා කරනවා
}
```

### Converting Different Font Types

```dart
// Convert FM Abhaya font text
String fmAbhayaText = "your_fm_abhaya_text_here";
String unicode1 = SinhalaUnicode.legacyToUnicode(
  fmAbhayaText, 
  SinhalaUnicode.FM_ABHAYA
);

// Convert DL Manel font text
String dlManelText = "your_dl_manel_text_here";
String unicode2 = SinhalaUnicode.legacyToUnicode(
  dlManelText, 
  SinhalaUnicode.DL_MANEL
);

// Convert Singlish phonetic
String phoneticText = "ayubowan";
String unicode3 = SinhalaUnicode.legacyToUnicode(
  phoneticText, 
  SinhalaUnicode.SINGLISH_PHONETIC
);
```

### Auto-Detection and Conversion

The library can automatically detect the input type and convert accordingly:

```dart
// Auto-detect and convert
String mixedText = "mama singlish likimi";
String result = SinhalaUnicode.autoDetectAndConvert(mixedText);
print(result); // මම සිංගලිෂ් ලිකිමි
```

### Getting Supported Fonts

```dart
List<String> supportedFonts = SinhalaUnicode.getSupportedFonts();
print(supportedFonts);
// Output: [fm_abhaya, fm_bamini, dl_manel, kaputa, singlish_phonetic, singlish]
```

## Flutter Widget Example

Here's how you can use it in a Flutter app:

```dart
import 'package:flutter/material.dart';
import 'package:sinhala_unicode_converter/sinhala_unicode_converter.dart';

class SinhalaConverter extends StatefulWidget {
  @override
  _SinhalaConverterState createState() => _SinhalaConverterState();
}

class _SinhalaConverterState extends State<SinhalaConverter> {
  final TextEditingController _inputController = TextEditingController();
  String _convertedText = '';
  String _selectedFont = SinhalaUnicode.SINGLISH;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Sinhala Converter')),
      body: Padding(
        padding: EdgeInsets.all(16.0),
        child: Column(
          children: [
            // Font type dropdown
            DropdownButton<String>(
              value: _selectedFont,
              onChanged: (String? newValue) {
                setState(() {
                  _selectedFont = newValue!;
                });
              },
              items: SinhalaUnicode.getSupportedFonts()
                  .map<DropdownMenuItem<String>>((String value) {
                return DropdownMenuItem<String>(
                  value: value,
                  child: Text(value.toUpperCase()),
                );
              }).toList(),
            ),
            
            // Input text field
            TextField(
              controller: _inputController,
              decoration: InputDecoration(
                labelText: 'Enter text to convert',
                border: OutlineInputBorder(),
              ),
              maxLines: 3,
            ),
            
            SizedBox(height: 16),
            
            // Convert button
            ElevatedButton(
              onPressed: () {
                setState(() {
                  _convertedText = SinhalaUnicode.legacyToUnicode(
                    _inputController.text,
                    _selectedFont,
                  );
                });
              },
              child: Text('Convert'),
            ),
            
            SizedBox(height: 16),
            
            // Output
            Container(
              width: double.infinity,
              padding: EdgeInsets.all(16),
              decoration: BoxDecoration(
                border: Border.all(color: Colors.grey),
                borderRadius: BorderRadius.circular(8),
              ),
              child: Text(
                _convertedText.isEmpty ? 'Converted text will appear here' : _convertedText,
                style: TextStyle(
                  fontSize: 18,
                  fontFamily: 'NotoSansSinhala', // Use appropriate Sinhala font
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
```

## Common Examples

### Singlish Examples

| Singlish Input | Unicode Output |
|----------------|----------------|
| `mama` | මම |
| `oya` | ඔය |
| `api` | අපි |
| `kiyanna` | කියන්න |
| `karanawa` | කරනවා |
| `giya` | ගිය |
| `enna` | එන්න |
| `ayubowan` | ආයුබෝවන් |
| `istuti` | ඉස්තුති |
| `mama sinhala katha karanawa` | මම සිංහල කතා කරනවා |

### FM Abhaya Font Examples

| Unicode Sinhala Input | FM Abhaya Output |
|-----------------------|------------------|
| `අම්මා` | wïud |

*Note: The conversion is from Unicode Sinhala (`අම්මා`) to FM Abhaya font encoding (`wïud`).*

## Error Handling

The library includes built-in error handling:

```dart
try {
  String result = SinhalaUnicode.legacyToUnicode(inputText, fontType);
  print(result);
} catch (e) {
  print('Conversion failed: $e');
  // Handle the error appropriately
}
```

## Advanced Features

### Custom Font Support

To add support for additional fonts, you can extend the library by creating new mapping files in the `mapping` directory.

### Batch Conversion

```dart
List<String> texts = ['mama', 'oya', 'api'];
List<String> converted = texts.map((text) => 
  SinhalaUnicode.legacyToUnicode(text, SinhalaUnicode.SINGLISH)
).toList();
```

## Best Practices

1. **Initialize once**: Call `SinhalaUnicode.initialize()` at the start of your app
2. **Use constants**: Always use the provided constants for font types
3. **Handle errors**: Wrap conversions in try-catch blocks for production apps
4. **Font rendering**: Ensure you have proper Sinhala fonts installed for correct display
5. **Auto-detection**: Use `autoDetectAndConvert()` when you're unsure of the input format

## Requirements

- Dart SDK: >=2.12.0 <4.0.0
- Flutter: >=2.0.0 (for Flutter projects)

## Contributing

Contributions are welcome! Please feel free to submit a Pull Request. For major changes, please open an issue first to discuss what you would like to change.

### Development Setup

1. Clone the repository
2. Run `dart pub get`
3. Make your changes
4. Run tests: `dart test`
5. Submit a pull request

## License

This project is licensed under the MIT License - see the [LICENSE](LICENSE) file for details.

## Support

If you encounter any issues or have questions:

1. Check the [GitHub Issues](https://github.com/your-repo/sinhala-unicode-converter/issues)
2. Create a new issue if your problem isn't already reported
3. Provide sample input/output for debugging



---

**Made with ❤️ by Sri Lankan developers for the Sri Lankan developer community**  
**Empowering modern Sinhala typing development and digital language preservation**