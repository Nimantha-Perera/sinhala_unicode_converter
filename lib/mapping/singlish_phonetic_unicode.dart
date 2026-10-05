class SinglishPhonetic {
  static String convert(String text) {
    // Initialize arrays
    List<String> vowels = [];
    List<String> vowelsuni = [];
    List<String> vowelmodifiersuni = [];
    List<dynamic> specialconsonants = [];
    List<String> specialconsonantsuni = [];
    List<String> specialcharuni = [];
    List<String> specialchar = [];
    List<String> consonants = [];
    List<String> consonantsuni = [];

    // Populate vowels arrays
    vowelsuni.add('ඌ'); vowels.add('oo'); vowelmodifiersuni.add('ූ');
    vowelsuni.add('ඕ'); vowels.add('o\\)'); vowelmodifiersuni.add('ෝ');
    vowelsuni.add('ඕ'); vowels.add('oe'); vowelmodifiersuni.add('ෝ');
    vowelsuni.add('ආ'); vowels.add('aa'); vowelmodifiersuni.add('ා');
    vowelsuni.add('ආ'); vowels.add('a\\)'); vowelmodifiersuni.add('ා');
    vowelsuni.add('ඈ'); vowels.add('aa'); vowelmodifiersuni.add('ෑ');
    vowelsuni.add('ඈ'); vowels.add('a\\)'); vowelmodifiersuni.add('ෑ');
    vowelsuni.add('ඈ'); vowels.add('ae'); vowelmodifiersuni.add('ෑ');
    vowelsuni.add('ඊ'); vowels.add('ii'); vowelmodifiersuni.add('ී');
    vowelsuni.add('ඊ'); vowels.add('i\\)'); vowelmodifiersuni.add('ී');
    vowelsuni.add('ඊ'); vowels.add('ie'); vowelmodifiersuni.add('ී');
    vowelsuni.add('ඊ'); vowels.add('ee'); vowelmodifiersuni.add('ී');
    vowelsuni.add('ඒ'); vowels.add('ea'); vowelmodifiersuni.add('ේ');
    vowelsuni.add('ඒ'); vowels.add('e\\)'); vowelmodifiersuni.add('ේ');
    vowelsuni.add('ඒ'); vowels.add('ei'); vowelmodifiersuni.add('ේ');
    vowelsuni.add('ඌ'); vowels.add('uu'); vowelmodifiersuni.add('ූ');
    vowelsuni.add('ඌ'); vowels.add('u\\)'); vowelmodifiersuni.add('ූ');
    vowelsuni.add('ඖ'); vowels.add('au'); vowelmodifiersuni.add('ෞ');
    vowelsuni.add('ඇ'); vowels.add('/a'); vowelmodifiersuni.add('ැ');
    vowelsuni.add('අ'); vowels.add('a'); vowelmodifiersuni.add('');
    vowelsuni.add('ඇ'); vowels.add('a'); vowelmodifiersuni.add('ැ');
    vowelsuni.add('ඉ'); vowels.add('i'); vowelmodifiersuni.add('ි');
    vowelsuni.add('එ'); vowels.add('e'); vowelmodifiersuni.add('ෙ');
    vowelsuni.add('උ'); vowels.add('u'); vowelmodifiersuni.add('ු');
    vowelsuni.add('ඔ'); vowels.add('o'); vowelmodifiersuni.add('ො');
    vowelsuni.add('ඓ'); vowels.add('i'); vowelmodifiersuni.add('ෛ');

    int nvowels = 26;

    // Populate special consonants arrays
    specialconsonantsuni.add('ං'); specialconsonants.add(RegExp(r'\\n'));
    specialconsonantsuni.add('ඃ'); specialconsonants.add(RegExp(r'\\h'));
    specialconsonantsuni.add('ඞ'); specialconsonants.add(RegExp(r'\\n'));
    specialconsonantsuni.add('ඍ'); specialconsonants.add(RegExp(r'\\r'));
    specialconsonantsuni.add('ර්\u200d'); specialconsonants.add(RegExp(r'r'));
    specialconsonantsuni.add('ර්\u200d'); specialconsonants.add(RegExp(r'\\r'));

    // Populate consonants arrays
    consonantsuni.add('ඬ'); consonants.add('nnd');
    consonantsuni.add('ඳ'); consonants.add('nndh');
    consonantsuni.add('ඟ'); consonants.add('nng');
    consonantsuni.add('ථ'); consonants.add('th');
    consonantsuni.add('ධ'); consonants.add('dh');
    consonantsuni.add('ඝ'); consonants.add('gh');
    consonantsuni.add('ඡ'); consonants.add('ch');
    consonantsuni.add('ඵ'); consonants.add('ph');
    consonantsuni.add('භ'); consonants.add('bh');
    consonantsuni.add('ඣ'); consonants.add('jh');
    consonantsuni.add('ෂ'); consonants.add('sh');
    consonantsuni.add('ඥ'); consonants.add('gn');
    consonantsuni.add('ඤ'); consonants.add('kn');
    consonantsuni.add('ළු'); consonants.add('lu');
    consonantsuni.add('ඛ'); consonants.add('kh');
    consonantsuni.add('ඨ'); consonants.add('th');
    consonantsuni.add('ඪ'); consonants.add('dh');
    consonantsuni.add('ශ'); consonants.add('s');
    consonantsuni.add('ද'); consonants.add('d');
    consonantsuni.add('ච'); consonants.add('c');
    consonantsuni.add('ත'); consonants.add('t');
    consonantsuni.add('ට'); consonants.add('t');
    consonantsuni.add('ක'); consonants.add('k');
    consonantsuni.add('ඩ'); consonants.add('d');
    consonantsuni.add('න'); consonants.add('n');
    consonantsuni.add('ප'); consonants.add('p');
    consonantsuni.add('බ'); consonants.add('b');
    consonantsuni.add('ම'); consonants.add('m');
    consonantsuni.add('‍ය'); consonants.add(r'\y');
    consonantsuni.add('‍ය'); consonants.add('y');
    consonantsuni.add('ය'); consonants.add('y');
    consonantsuni.add('ජ'); consonants.add('j');
    consonantsuni.add('ල'); consonants.add('l');
    consonantsuni.add('ව'); consonants.add('v');
    consonantsuni.add('ව'); consonants.add('w');
    consonantsuni.add('ස'); consonants.add('s');
    consonantsuni.add('හ'); consonants.add('h');
    consonantsuni.add('ණ'); consonants.add('n');
    consonantsuni.add('ළ'); consonants.add('l');
    consonantsuni.add('ඛ'); consonants.add('k');
    consonantsuni.add('ඝ'); consonants.add('g');
    consonantsuni.add('ඵ'); consonants.add('p');
    consonantsuni.add('ඹ'); consonants.add('b');
    consonantsuni.add('ෆ'); consonants.add('f');
    consonantsuni.add('ග'); consonants.add('g');
    consonantsuni.add('ර'); consonants.add('r');

    // Populate special characters arrays
    specialcharuni.add('ෲ'); specialchar.add('ruu');
    specialcharuni.add('ෘ'); specialchar.add('ru');

    // Apply conversion logic
    // Replace special consonants
    for (int i = 0; i < specialconsonants.length; i++) {
      text = text.replaceAll(specialconsonants[i], specialconsonantsuni[i]);
    }

    // Replace special characters with consonants
    for (int i = 0; i < specialcharuni.length; i++) {
      for (int j = 0; j < consonants.length; j++) {
        String s = consonants[j] + specialchar[i];
        String v = consonantsuni[j] + specialcharuni[i];
        text = text.replaceAll(s, v);
      }
    }

    // Handle consonant + "r" + vowel combinations
    for (int j = 0; j < consonants.length; j++) {
      for (int i = 0; i < vowels.length; i++) {
        String s = consonants[j] + "r" + vowels[i];
        String v = consonantsuni[j] + "්‍ර" + vowelmodifiersuni[i];
        text = text.replaceAll(s, v);
      }
      String s = consonants[j] + "r";
      String v = consonantsuni[j] + "්‍ර";
      text = text.replaceAll(s, v);
    }

    // Handle consonant + vowel combinations
    for (int i = 0; i < consonants.length; i++) {
      for (int j = 0; j < nvowels; j++) {
        String s = consonants[i] + vowels[j];
        String v = consonantsuni[i] + vowelmodifiersuni[j];
        text = text.replaceAll(s, v);
      }
    }

    // Replace standalone consonants
    for (int i = 0; i < consonants.length; i++) {
      text = text.replaceAll(consonants[i], consonantsuni[i] + "්");
    }

    // Replace standalone vowels
    for (int i = 0; i < vowels.length; i++) {
      text = text.replaceAll(vowels[i], vowelsuni[i]);
    }

    return text;
  }
}