# Sinhala Unicode Converter

[![pub package](https://img.shields.io/pub/v/sinhala_unicode_converter.svg)](https://pub.dev/packages/sinhala_unicode_converter)
[![License: MIT](https://img.shields.io/badge/License-MIT-blue.svg)](https://opensource.org/licenses/MIT)
[![Platform](https://img.shields.io/badge/Platform-Flutter%20%7C%20Dart-02569B.svg)](https://pub.dev/packages/sinhala_unicode_converter)

A fast, comprehensive, and accurate Dart/Flutter library for converting **Legacy Sinhala Fonts** (FM Abhaya, FM Bamini, DL Manel, Kaputa) and **Singlish (Romanized Sinhala)** into standard **Sinhala Unicode** (U+0D80–U+0DFF).

Includes built-in Kombuwa reordering, complex ligature recognition (Rakaransaya, Yansaya, Bandi Akuru), and intelligent auto-detection.

---

## Features

- **Legacy Font Conversion:** Full support for popular legacy Sinhala font encodings:
  - **FM Abhaya** (including special glyphs, e.g. `Y%S` ➔ `ශ්‍රී`, `wïud` ➔ `අම්මා`, `fld<U` ➔ `කොළඹ`)
  - **DL Manel**
  - **FM Bamini**
  - **Kaputa**
- **Dynamic Kombuwa Reordering:** Automatically converts visual-order legacy keystrokes (`f` / `ff` before consonants) into Unicode logical order (`කෙ`, `කේ`, `කො`, `කෝ`, `කෛ`).
- **Singlish / Phonetic Conversion:** Converts standard colloquial and phonetic Singlish input to proper Unicode Sinhala.
- **Smart Auto-Detection:** Automatically distinguishes between Singlish transliteration and legacy ASCII font keystrokes.
- **Cross-Platform:** Works on Android, iOS, Web, Windows, macOS, and Linux.
- **Lightweight & Dependency-Free:** Zero external dependencies beyond Flutter/Dart core.

---

## Supported Fonts & Modes

| Mode / Font | Constant | Example Input | Converted Unicode |
|---|---|---|---|
| **FM Abhaya** | `SinhalaUnicode.FM_ABHAYA` | `Y%S ,xld` | **ශ්‍රී ලංකා** |
| **FM Abhaya** | `SinhalaUnicode.FM_ABHAYA` | `fld<U` | **කොළඹ** |
| **FM Abhaya** | `SinhalaUnicode.FM_ABHAYA` | `wïud` | **අම්මා** |
| **DL Manel** | `SinhalaUnicode.DL_MANEL` | `fld<U` | **කොළඹ** |
| **Singlish** | `SinhalaUnicode.SINGLISH` | `ayubowan` | **ආයුබෝවන්** |
| **Singlish** | `SinhalaUnicode.SINGLISH` | `katha karanawa` | **කතා කරනවා** |
| **Auto-Detect** | `autoDetectAndConvert()` | *Auto* | **ශ්‍රී ලංකා** |

---

## Installation

Add `sinhala_unicode_converter` to your `pubspec.yaml`:

```yaml
dependencies:
  sinhala_unicode_converter: ^1.1.0
```

Then run:

```bash
flutter pub get
```

---

## Usage

### 1. Singlish to Sinhala Unicode

```dart
import 'package:sinhala_unicode_converter/sinhala_unicode_converter.dart';

void main() {
  // Convert standard Singlish text
  String text1 = SinhalaUnicode.legacyToUnicode(
    'mama sinhala katha karanawa',
    SinhalaUnicode.SINGLISH,
  );
  print(text1); // මම සිංහල කතා කරනවා

  String text2 = SinhalaUnicode.legacyToUnicode(
    'ayubowan thaaththa',
    SinhalaUnicode.SINGLISH,
  );
  print(text2); // ආයුබෝවන් තාත්තා
}
```

### 2. Legacy FM Abhaya to Unicode

```dart
import 'package:sinhala_unicode_converter/sinhala_unicode_converter.dart';

void main() {
  // Convert FM Abhaya text
  String sriLanka = SinhalaUnicode.legacyToUnicode(
    'Y%S ,xld',
    SinhalaUnicode.FM_ABHAYA,
  );
  print(sriLanka); // ශ්‍රී ලංකා

  String colombo = SinhalaUnicode.legacyToUnicode(
    'fld<U',
    SinhalaUnicode.FM_ABHAYA,
  );
  print(colombo); // කොළඹ

  String amma = SinhalaUnicode.legacyToUnicode(
    'wïud',
    SinhalaUnicode.FM_ABHAYA,
  );
  print(amma); // අම්මා
}
```

### 3. Smart Auto-Detection

The package can automatically detect whether the input is Singlish or legacy font:

```dart
import 'package:sinhala_unicode_converter/sinhala_unicode_converter.dart';

void main() {
  // Detects Singlish
  print(SinhalaUnicode.autoDetectAndConvert('kiri')); // කිරි
  print(SinhalaUnicode.autoDetectAndConvert('gaha')); // ගහ

  // Detects FM Abhaya
  print(SinhalaUnicode.autoDetectAndConvert('Y%S ,xld')); // ශ්‍රී ලංකා
  print(SinhalaUnicode.autoDetectAndConvert('fld<U'));    // කොළඹ
}
```

---

## Flutter Integration Example

```dart
import 'package:flutter/material.dart';
import 'package:sinhala_unicode_converter/sinhala_unicode_converter.dart';

class SinhalaConverterWidget extends StatefulWidget {
  const SinhalaConverterWidget({Key? key}) : super(key: key);

  @override
  State<SinhalaConverterWidget> createState() => _SinhalaConverterWidgetState();
}

class _SinhalaConverterWidgetState extends State<SinhalaConverterWidget> {
  final TextEditingController _inputController = TextEditingController();
  String _convertedOutput = '';
  String _selectedMode = SinhalaUnicode.SINGLISH;

  void _convertText(String text) {
    setState(() {
      _convertedOutput = SinhalaUnicode.legacyToUnicode(text, _selectedMode);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Sinhala Unicode Converter')),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            DropdownButton<String>(
              value: _selectedMode,
              isExpanded: true,
              items: const [
                DropdownMenuItem(
                  value: SinhalaUnicode.SINGLISH,
                  child: Text('Singlish ➔ Unicode'),
                ),
                DropdownMenuItem(
                  value: SinhalaUnicode.FM_ABHAYA,
                  child: Text('FM Abhaya ➔ Unicode'),
                ),
                DropdownMenuItem(
                  value: SinhalaUnicode.DL_MANEL,
                  child: Text('DL Manel ➔ Unicode'),
                ),
              ],
              onChanged: (val) {
                if (val != null) {
                  setState(() => _selectedMode = val);
                  _convertText(_inputController.text);
                }
              },
            ),
            const SizedBox(height: 12),
            TextField(
              controller: _inputController,
              decoration: const InputDecoration(
                hintText: 'Type Singlish or paste legacy FM font text...',
                border: OutlineInputBorder(),
              ),
              maxLines: 4,
              onChanged: _convertText,
            ),
            const SizedBox(height: 16),
            const Text(
              'Converted Unicode Output:',
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 8),
            Container(
              padding: const EdgeInsets.all(12),
              decoration: BoxDecoration(
                color: Colors.grey.shade100,
                borderRadius: BorderRadius.circular(8),
                border: Border.all(color: Colors.grey.shade300),
              ),
              child: SelectableText(
                _convertedOutput.isEmpty ? 'Output will appear here...' : _convertedOutput,
                style: const TextStyle(fontSize: 18),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
```

---

## Verified Conversion Examples

### Singlish Transliteration

| Singlish Input | Output Sinhala |
|---|---|
| `mama` | මම |
| `oya` | ඔය |
| `api` | අපි |
| `ayubowan` | ආයුබෝවන් |
| `ammaa` | අම්මා |
| `thaaththa` | තාත්තා |
| `katha karanawa` | කතා කරනවා |
| `lankaawa` | ලංකාව |
| `shrii lankaa` | ශ්‍රී ලංකා |
| `prashna` | ප්‍රශ්න |

### FM Abhaya Conversion

| FM Abhaya Input | Output Sinhala | Meaning |
|---|---|---|
| `uu` | මම | I / Me |
| `Y%S ,xld` | ශ්‍රී ලංකා | Sri Lanka |
| `fld<U` | කොළඹ | Colombo |
| `wïud` | අම්මා | Mother |
| `wOHdmkh` | අධ්‍යාපනය | Education |
| `fl` | කෙ | Ke |
| `fla` | කේ | Kē |
| `fld` | කො | Ko |
| `flda` | කෝ | Kō |

---

## Changelog

See [CHANGELOG.md](CHANGELOG.md) for details on changes and version history.

---

## Contributing

Contributions, bug reports, and pull requests are welcome on GitHub:
**[https://github.com/Nimantha-Perera/sinhala_unicode_converter](https://github.com/Nimantha-Perera/sinhala_unicode_converter)**

---

## License

This project is licensed under the MIT License - see the [LICENSE](LICENSE) file for details.

---

**Developed with ❤️ by LankaTech Innovations for the Sri Lankan Developer Community.**