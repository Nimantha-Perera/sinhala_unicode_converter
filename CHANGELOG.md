## 1.1.0
- Fixed Unicode character encoding corruption across all legacy mappings
- Fixed FM Abhaya and DL Manel font conversion with proper Kombuwa reordering
- Fixed Singlish transliteration logic (vowels, consonants, and modifiers)
- Improved auto-detection heuristics between Singlish and FM font legacy keystrokes
- Removed invalid font asset declaration from pubspec.yaml
- Added comprehensive real-word test cases for FM Abhaya and Singlish

## 1.0.9
- Added multi-font support (FM Bamini, DL Manel, Kaputa)
- Implemented Singlish and Singlish Phonetic converters
- Added auto-detection algorithm
- Enhanced error handling and validation