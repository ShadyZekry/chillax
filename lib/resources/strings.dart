class Dictiornary {
  static String currentLanguage = 'english';

  static const Map<String, Map> _translations = {
    CodeStrings.arabicCode: {
      'hello': 'مرحبا',
    },
    CodeStrings.englishCode: {
      'hello': 'Hello',
    },
  };

  static String get hello => _translations[currentLanguage]?['hello'] ?? '';
}

class CodeStrings {
  static const String arabicCode = 'arabic';
  static const String englishCode = 'english';
}
