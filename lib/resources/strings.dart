class Dictiornary {
  static String currentLanguage = 'english';

  static const Map<String, Map> _translations = {
    CodeStrings.arabicCode: {
      'hello': 'مرحبا',
      'calledWhat': 'كيف ترغب انا يناديك الناس؟',
    },
    CodeStrings.englishCode: {
      'hello': 'Hello',
      'calledWhat': 'What would you like to be called in there?',
    },
  };

  static String get hello => _translations[currentLanguage]?['hello'] ?? '';
  static String get calledWhat =>
      _translations[currentLanguage]?['calledWhat'] ?? '';
}

class CodeStrings {
  static const String arabicCode = 'arabic';
  static const String englishCode = 'english';
}
