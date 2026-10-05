class Singlish {
  static String convert(String text) {
    // Initialize arrays
    List<String> vowels = [];
    List<String> vowelsUni = [];
    List<String> vowelModifiersUni = [];
    List<RegExp> specialConsonants = [];
    List<String> specialConsonantsUni = [];
    List<String> specialCharUni = [];
    List<String> specialChar = [];
    List<String> consonants = [];
    List<String> consonantsUni = [];

    // Populate vowels arrays
    vowelsUni.add('ඌ'); vowels.add('oo'); vowelModifiersUni.add('ූ');
    vowelsUni.add('ඕ'); vowels.add('o\\)'); vowelModifiersUni.add('ෝ');
    vowelsUni.add('ඕ'); vowels.add('oe'); vowelModifiersUni.add('ෝ');
    vowelsUni.add('ආ'); vowels.add('aa'); vowelModifiersUni.add('ා');
    vowelsUni.add('ආ'); vowels.add('a\\)'); vowelModifiersUni.add('ා');
    vowelsUni.add('ඈ'); vowels.add('Aa'); vowelModifiersUni.add('ෑ');
    vowelsUni.add('ඈ'); vowels.add('A\\)'); vowelModifiersUni.add('ෑ');
    vowelsUni.add('ඈ'); vowels.add('ae'); vowelModifiersUni.add('ෑ');
    vowelsUni.add('ඊ'); vowels.add('ii'); vowelModifiersUni.add('ී');
    vowelsUni.add('ඊ'); vowels.add('i\\)'); vowelModifiersUni.add('ී');
    vowelsUni.add('ඊ'); vowels.add('ie'); vowelModifiersUni.add('ී');
    vowelsUni.add('ඊ'); vowels.add('ee'); vowelModifiersUni.add('ී');
    vowelsUni.add('ඒ'); vowels.add('ea'); vowelModifiersUni.add('ේ');
    vowelsUni.add('ඒ'); vowels.add('e\\)'); vowelModifiersUni.add('ේ');
    vowelsUni.add('ඒ'); vowels.add('ei'); vowelModifiersUni.add('ේ');
    vowelsUni.add('ඌ'); vowels.add('uu'); vowelModifiersUni.add('ූ');
    vowelsUni.add('ඌ'); vowels.add('u\')'); vowelModifiersUni.add('ූ');
    vowelsUni.add('ඖ'); vowels.add('au'); vowelModifiersUni.add('ෞ');
    vowelsUni.add('ඇ'); vowels.add('/a'); vowelModifiersUni.add('ැ');
    vowelsUni.add('අ'); vowels.add('a'); vowelModifiersUni.add('');
    vowelsUni.add('ඇ'); vowels.add('A'); vowelModifiersUni.add('ැ');
    vowelsUni.add('ඉ'); vowels.add('i'); vowelModifiersUni.add('ි');
    vowelsUni.add('එ'); vowels.add('e'); vowelModifiersUni.add('ෙ');
    vowelsUni.add('උ'); vowels.add('u'); vowelModifiersUni.add('ු');
    vowelsUni.add('ඔ'); vowels.add('o'); vowelModifiersUni.add('ො');
    vowelsUni.add('ඓ'); vowels.add('I'); vowelModifiersUni.add('ෛ');

    int nVowels = 26;

    // Populate special consonants arrays
    specialConsonantsUni.add('ං'); specialConsonants.add(RegExp(r'\\n'));
    specialConsonantsUni.add('ඃ'); specialConsonants.add(RegExp(r'\\h'));
    specialConsonantsUni.add('ඞ'); specialConsonants.add(RegExp(r'\\N'));
    specialConsonantsUni.add('ඍ'); specialConsonants.add(RegExp(r'\\R'));
    specialConsonantsUni.add('ර්\u200D'); specialConsonants.add(RegExp(r'R'));
    specialConsonantsUni.add('ර්\u200D'); specialConsonants.add(RegExp(r'\\r'));

    // Populate consonants arrays
    consonantsUni.add('ඬ'); consonants.add('nnd');
    consonantsUni.add('ඳ'); consonants.add('nndh');
    consonantsUni.add('ඟ'); consonants.add('nng');
    consonantsUni.add('ථ'); consonants.add('Th');
    consonantsUni.add('ධ'); consonants.add('Dh');
    consonantsUni.add('ඝ'); consonants.add('gh');
    consonantsUni.add('ඡ'); consonants.add('Ch');
    consonantsUni.add('ඵ'); consonants.add('ph');
    consonantsUni.add('භ'); consonants.add('bh');
    consonantsUni.add('ශ'); consonants.add('sh');
    consonantsUni.add('ෂ'); consonants.add('Sh');
    consonantsUni.add('ඥ'); consonants.add('GN');
    consonantsUni.add('ඤ'); consonants.add('KN');
    consonantsUni.add('ළු'); consonants.add('Lu');
    consonantsUni.add('ද'); consonants.add('dh');
    consonantsUni.add('ච'); consonants.add('ch');
    consonantsUni.add('ඛ'); consonants.add('kh');
    consonantsUni.add('ත'); consonants.add('th');
    consonantsUni.add('ට'); consonants.add('t');
    consonantsUni.add('ක'); consonants.add('k');
    consonantsUni.add('ඩ'); consonants.add('d');
    consonantsUni.add('න'); consonants.add('n');
    consonantsUni.add('ප'); consonants.add('p');
    consonantsUni.add('බ'); consonants.add('b');
    consonantsUni.add('ම'); consonants.add('m');
    consonantsUni.add('‍ය'); consonants.add(r'\y');
    consonantsUni.add('‍ය'); consonants.add('Y');
    consonantsUni.add('ය'); consonants.add('y');
    consonantsUni.add('ජ'); consonants.add('j');
    consonantsUni.add('ල'); consonants.add('l');
    consonantsUni.add('ව'); consonants.add('v');
    consonantsUni.add('ව'); consonants.add('w');
    consonantsUni.add('ස'); consonants.add('s');
    consonantsUni.add('හ'); consonants.add('h');
    consonantsUni.add('ණ'); consonants.add('N');
    consonantsUni.add('ළ'); consonants.add('L');
    consonantsUni.add('ඛ'); consonants.add('K');
    consonantsUni.add('ඝ'); consonants.add('G');
    consonantsUni.add('ඨ'); consonants.add('T');
    consonantsUni.add('ඪ'); consonants.add('D');
    consonantsUni.add('ඵ'); consonants.add('P');
    consonantsUni.add('ඹ'); consonants.add('B');
    consonantsUni.add('ෆ'); consonants.add('f');
    consonantsUni.add('ඣ'); consonants.add('q');
    consonantsUni.add('ග'); consonants.add('g');
    consonantsUni.add('ර'); consonants.add('r');

    // Populate special characters arrays
    specialCharUni.add('ෲ'); specialChar.add('ruu');
    specialCharUni.add('ෘ'); specialChar.add('ru');

    // Apply conversion logic
    // Replace special consonants
    for (int i = 0; i < specialConsonants.length; i++) {
      text = text.replaceAll(specialConsonants[i], specialConsonantsUni[i]);
    }

    // Replace special characters with consonants
    for (int i = 0; i < specialCharUni.length; i++) {
      for (int j = 0; j < consonants.length; j++) {
        String s = consonants[j] + specialChar[i];
        String v = consonantsUni[j] + specialCharUni[i];
        text = text.replaceAll(s, v);
      }
    }

    // Handle consonant + "r" + vowel combinations
    for (int j = 0; j < consonants.length; j++) {
      for (int i = 0; i < vowels.length; i++) {
        String s = consonants[j] + "r" + vowels[i];
        String v = consonantsUni[j] + "්‍ර" + vowelModifiersUni[i];
        text = text.replaceAll(s, v);
      }
      String s = consonants[j] + "r";
      String v = consonantsUni[j] + "්‍ර";
      text = text.replaceAll(s, v);
    }

    // Handle consonant + vowel combinations
    for (int i = 0; i < consonants.length; i++) {
      for (int j = 0; j < nVowels; j++) {
        String s = consonants[i] + vowels[j];
        String v = consonantsUni[i] + vowelModifiersUni[j];
        text = text.replaceAll(s, v);
      }
    }

    // Replace standalone consonants
    for (int i = 0; i < consonants.length; i++) {
      text = text.replaceAll(consonants[i], consonantsUni[i] + "්");
    }

    // Replace standalone vowels
    for (int i = 0; i < vowels.length; i++) {
      text = text.replaceAll(vowels[i], vowelsUni[i]);
    }

    return text;
  }
}