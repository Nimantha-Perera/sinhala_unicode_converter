// package:sinhala_unicode_converter/mapping/fm_abhaya.dart

class FmAbhaya {
  static final List<Map<String, String>> _consonants = [
    {'legacy': 'l', 'unicode': 'ක'},
    {'legacy': 'L', 'unicode': 'ඛ'},
    {'legacy': '.', 'unicode': 'ග'},
    {'legacy': '>', 'unicode': 'ඝ'},
    {'legacy': 'Õ', 'unicode': 'ඟ'},
    {'legacy': '`y', 'unicode': 'ඟ'},
    {'legacy': 'p', 'unicode': 'ච'},
    {'legacy': 'P', 'unicode': 'ඡ'},
    {'legacy': 'c', 'unicode': 'ජ'},
    {'legacy': '`P', 'unicode': 'ඦ'},
    {'legacy': 'CO', 'unicode': 'ඣ'},
    {'legacy': '®', 'unicode': 'ඣ'},
    {'legacy': '[', 'unicode': 'ඤ'},
    {'legacy': '{', 'unicode': 'ඥ'},
    {'legacy': 'X', 'unicode': 'ඞ'},
    {'legacy': 'g', 'unicode': 'ට'},
    {'legacy': 'G', 'unicode': 'ඨ'},
    {'legacy': 'v', 'unicode': 'ඩ'},
    {'legacy': 'V', 'unicode': 'ඪ'},
    {'legacy': 'K', 'unicode': 'ණ'},
    {'legacy': '~', 'unicode': 'ඬ'},
    {'legacy': ';', 'unicode': 'ත'},
    {'legacy': ':', 'unicode': 'ථ'},
    {'legacy': 'o', 'unicode': 'ද'},
    {'legacy': 'O', 'unicode': 'ධ'},
    {'legacy': 'k', 'unicode': 'න'},
    {'legacy': '|', 'unicode': 'ඳ'},
    {'legacy': 'm', 'unicode': 'ප'},
    {'legacy': 'M', 'unicode': 'ඵ'},
    {'legacy': 'n', 'unicode': 'බ'},
    {'legacy': 'N', 'unicode': 'භ'},
    {'legacy': 'u', 'unicode': 'ම'},
    {'legacy': 'U', 'unicode': 'ඹ'},
    {'legacy': 'h', 'unicode': 'ය'},
    {'legacy': 'r', 'unicode': 'ර'},
    {'legacy': ',', 'unicode': 'ල'},
    {'legacy': 'j', 'unicode': 'ව'},
    {'legacy': 'Y', 'unicode': 'ශ'},
    {'legacy': 'I', 'unicode': 'ෂ'},
    {'legacy': 'i', 'unicode': 'ස'},
    {'legacy': 'y', 'unicode': 'හ'},
    {'legacy': '<', 'unicode': 'ළ'},
    {'legacy': '*', 'unicode': 'ෆ'},
  ];

  static final List<Map<String, String>> _specialGlyphs = [
    {'legacy': 'fÄ', 'unicode': 'ේඛ'},
    {'legacy': 'Ä', 'unicode': 'ඛ්'},
    {'legacy': 'fÉ', 'unicode': 'ේච'},
    {'legacy': 'É', 'unicode': 'ච්'},
    {'legacy': 'fþ', 'unicode': 'ේඡ'},
    {'legacy': 'þ', 'unicode': 'ඡ්'},
    {'legacy': 'fÊ', 'unicode': 'ේජ'},
    {'legacy': 'Ê', 'unicode': 'ජ්'},
    {'legacy': 'fÜ', 'unicode': 'ේට'},
    {'legacy': 'Ü', 'unicode': 'ට්'},
    {'legacy': 'få', 'unicode': 'ේඬ'},
    {'legacy': 'å', 'unicode': 'ඬ්'},
    {'legacy': 'fè', 'unicode': 'ේධ'},
    {'legacy': 'è', 'unicode': 'ධ්'},
    {'legacy': 'fí', 'unicode': 'ේබ'},
    {'legacy': 'í', 'unicode': 'බ්'},
    {'legacy': 'fï', 'unicode': 'ේම'},
    {'legacy': 'ï', 'unicode': 'ම්'},
    {'legacy': 'fò', 'unicode': 'ේඹ'},
    {'legacy': 'ò', 'unicode': 'ඹ්'},
    {'legacy': 'f¾', 'unicode': 'ේර'},
    {'legacy': '¾', 'unicode': 'ර්'},
    {'legacy': 'fõ', 'unicode': 'ේව'},
    {'legacy': 'õ', 'unicode': 'ව්'},
  ];

  static List<Map<String, String>>? _sortedMappings;

  static void _init() {
    if (_sortedMappings != null) return;

    final List<Map<String, String>> list = [];

    // Independent Vowels
    list.addAll([
      {'legacy': 'wd', 'unicode': 'ආ'},
      {'legacy': 'we', 'unicode': 'ඇ'},
      {'legacy': 'wE', 'unicode': 'ඈ'},
      {'legacy': 'w', 'unicode': 'අ'},
      {'legacy': 'b', 'unicode': 'ඉ'},
      {'legacy': 'B', 'unicode': 'ඊ'},
      {'legacy': 'W!', 'unicode': 'ඌ'},
      {'legacy': 'W', 'unicode': 'උ'},
      {'legacy': 'RD', 'unicode': 'ඎ'},
      {'legacy': 'R', 'unicode': 'ඍ'},
      {'legacy': 'Ì', 'unicode': 'ඏ'},
      {'legacy': 'Ï', 'unicode': 'ඐ'},
      {'legacy': 'ta', 'unicode': 'ඒ'},
      {'legacy': 'ft', 'unicode': 'ඓ'},
      {'legacy': 't', 'unicode': 'එ'},
      {'legacy': 'T!', 'unicode': 'ඖ'},
      {'legacy': '´', 'unicode': 'ඕ'},
      {'legacy': 'T', 'unicode': 'ඔ'},
    ]);

    // Base consonants & special hal glyphs
    list.addAll(_consonants);
    list.addAll(_specialGlyphs);

    // Pre-composed vowel glyphs
    list.addAll([
      {'legacy': 'Å', 'unicode': 'ඛි'},
      {'legacy': 'Ñ', 'unicode': 'චි'},
      {'legacy': 'ð', 'unicode': 'ජි'},
      {'legacy': '¯', 'unicode': 'ඣි'},
      {'legacy': 'ˉ', 'unicode': 'ඣි'},
      {'legacy': 'á', 'unicode': 'ටි'},
      {'legacy': 'À', 'unicode': 'ඨි'},
      {'legacy': 'ä', 'unicode': 'ඩි'},
      {'legacy': 'Î', 'unicode': 'ඪි'},
      {'legacy': '‚', 'unicode': 'ණි'},
      {'legacy': 'ç', 'unicode': 'ඬි'},
      {'legacy': 'Ó', 'unicode': 'ථි'},
      {'legacy': 'È', 'unicode': 'දි'},
      {'legacy': 'ê', 'unicode': 'ධි'},
      {'legacy': '¢', 'unicode': 'ඳි'},
      {'legacy': 'ì', 'unicode': 'බි'},
      {'legacy': 'ñ', 'unicode': 'මි'},
      {'legacy': 'ô', 'unicode': 'ඹි'},
      {'legacy': 'ß', 'unicode': 'රි'},
      {'legacy': 'ú', 'unicode': 'වි'},
      {'legacy': 'Ç', 'unicode': 'ඛී'},
      {'legacy': 'Ö', 'unicode': 'චී'},
      {'legacy': 'Â', 'unicode': 'ඡී'},
      {'legacy': 'Ô', 'unicode': 'ජී'},
      {'legacy': '°', 'unicode': 'ඣී'},
      {'legacy': 'à', 'unicode': 'ටී'},
      {'legacy': 'Á', 'unicode': 'ඨී'},
      {'legacy': 'Ð', 'unicode': 'ඪී'},
      {'legacy': 'Œ', 'unicode': 'ණී'},
      {'legacy': 'é', 'unicode': 'ඬී'},
      {'legacy': 'Ò', 'unicode': 'ථී'},
      {'legacy': '§', 'unicode': 'දී'},
      {'legacy': 'ë', 'unicode': 'ධී'},
      {'legacy': '£', 'unicode': 'ඳී'},
      {'legacy': 'î', 'unicode': 'බී'},
      {'legacy': 'Ú', 'unicode': 'ඵී'},
      {'legacy': 'Ý', 'unicode': 'ඵී'},
      {'legacy': 'ó', 'unicode': 'මී'},
      {'legacy': 'ö', 'unicode': 'ඹී'},
      {'legacy': 'Í', 'unicode': 'රී'},
      {'legacy': 'ù', 'unicode': 'වී'},
      {'legacy': 'û', 'unicode': 'ඤු'},
      {'legacy': 'ü', 'unicode': 'ඤූ'},
      {'legacy': 'ÿ', 'unicode': 'දු'},
      {'legacy': '÷', 'unicode': 'ඳු'},
      {'legacy': 're', 'unicode': 'රු'},
      {'legacy': 'rE', 'unicode': 'රූ'},
      {'legacy': 'Æ', 'unicode': 'ලූ'},
      {'legacy': '¿', 'unicode': 'ළු'},
      {'legacy': 'Þ', 'unicode': 'දා'},
      {'legacy': '±', 'unicode': 'දැ'},
      {'legacy': 'ƒ', 'unicode': 'ඳැ'},
      {'legacy': '/', 'unicode': 'රැ'},
      {'legacy': 'ø', 'unicode': 'ද්‍ර'},
      {'legacy': '›', 'unicode': 'ශ්‍රී'},
    ]);

    // Modifiers & signs
    list.addAll([
      {'legacy': 'd', 'unicode': 'ා'},
      {'legacy': 'e', 'unicode': 'ැ'},
      {'legacy': 'E', 'unicode': 'ෑ'},
      {'legacy': 's', 'unicode': 'ි'},
      {'legacy': 'S', 'unicode': 'ී'},
      {'legacy': 'q', 'unicode': 'ු'},
      {'legacy': '=', 'unicode': 'ු'},
      {'legacy': 'Q', 'unicode': 'ූ'},
      {'legacy': '+', 'unicode': 'ූ'},
      {'legacy': 'DD', 'unicode': 'ෲ'},
      {'legacy': 'D', 'unicode': 'ෘ'},
      {'legacy': '!', 'unicode': 'ෟ'},
      {'legacy': 'f', 'unicode': 'ෙ'},
      {'legacy': 'a', 'unicode': '්'},
      {'legacy': 'A', 'unicode': '්'},
      {'legacy': 'x', 'unicode': 'ං'},
      {'legacy': '#', 'unicode': 'ඃ'},
      {'legacy': '%s', 'unicode': '්‍රි'},
      {'legacy': 's%', 'unicode': '්‍රි'},
      {'legacy': '%S', 'unicode': '්‍රී'},
      {'legacy': 'S%', 'unicode': '්‍රී'},
      {'legacy': '%', 'unicode': '්‍ර'},
      {'legacy': 'H', 'unicode': '්‍ය'},
      {'legacy': "'", 'unicode': '.'},
      {'legacy': '"', 'unicode': ','},
    ]);

    // Consonant + Yansaya / Rakaransaya combinations
    for (final c in _consonants) {
      list.add({'legacy': '${c['legacy']}H', 'unicode': '${c['unicode']}්‍ය'});
      list.add({'legacy': '${c['legacy']}%', 'unicode': '${c['unicode']}්‍ර'});
    }

    // Prefix Kombuwa rules
    final prefixes = [
      {'suffix': 'da', 'sign': 'ෝ', 'prefix': false},
      {'suffix': 'd', 'sign': 'ො', 'prefix': false},
      {'suffix': '!', 'sign': 'ෞ', 'prefix': false},
      {'suffix': 'a', 'sign': 'ේ', 'prefix': true},
    ];

    for (final p in prefixes) {
      for (final c in _consonants) {
        final sign = p['sign'] as String;
        final isPrefix = p['prefix'] as bool;
        list.add({
          'legacy': 'f${c['legacy']}${p['suffix']}',
          'unicode': isPrefix ? '$sign${c['unicode']}' : '${c['unicode']}$sign',
        });
      }
    }

    // Dekombuwa (ff + consonant) -> ෛ + consonant
    for (final c in _consonants) {
      list.add({
        'legacy': 'ff${c['legacy']}',
        'unicode': 'ෛ${c['unicode']}',
      });
    }

    // Sort by longest legacy string first for greedy prefix matching
    list.sort((a, b) => b['legacy']!.length.compareTo(a['legacy']!.length));
    _sortedMappings = list;
  }

  /// Convert legacy FM Abhaya text to Unicode
  static String convert(String text) {
    if (text.isEmpty) return text;
    _init();

    final buffer = StringBuffer();
    int i = 0;
    final len = text.length;

    outer:
    while (i < len) {
      for (final entry in _sortedMappings!) {
        final leg = entry['legacy']!;
        if (text.startsWith(leg, i)) {
          buffer.write(entry['unicode']);
          i += leg.length;
          continue outer;
        }
      }
      buffer.write(text[i]);
      i += 1;
    }

    String result = buffer.toString();
    // Kombuwa re-ordering:
    // Move pre-positioned Kombuwa (ෙ / ේ / ෛ) to after the consonant/ligature
    final kombuwaReg = RegExp(r'([ෙේෛ])([\u0D9A-\u0DC6](?:\u0DCA\u200D[\u0DBB\u0DBA])?)');
    result = result.replaceAllMapped(kombuwaReg, (m) => '${m[2]}${m[1]}');

    return result;
  }
}
