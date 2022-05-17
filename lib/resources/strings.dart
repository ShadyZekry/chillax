class Dictiornary {
  static String currentLanguage = 'english';

  static const Map<String, Map> _translations = {
    CodeStrings.arabicCode: {
      'chillax': 'تشيلاكس',
      'chillChat': 'روق...واتكلم',
      'hello': 'مرحبا',
      'calledWhat': 'كيف ترغب انا يناديك الناس؟',
      'typeMessage': 'اكتب رسالتك هنا',
      'generalRoom': 'General Room',
    },
    CodeStrings.englishCode: {
      'chillax': 'Chillax',
      'chillChat': 'Chill...and chat',
      'hello': 'Hello',
      'calledWhat': 'What would you like\nto be called in there?',
      'typeMessage': 'Type your message here',
      'generalRoom': 'General Room',
    },
  };

  static String get chillChat => _translations[currentLanguage]?['chillChat'] ?? '';
  static String get chillax => _translations[currentLanguage]?['chillax'] ?? '';
  static String get hello => _translations[currentLanguage]?['hello'] ?? '';
  static String get calledWhat => _translations[currentLanguage]?['calledWhat'] ?? '';
  static String get typeMessage => _translations[currentLanguage]?['typeMessage'] ?? '';
  static String get generalRoom => _translations[currentLanguage]?['generalRoom'] ?? '';
}

class CodeStrings {
  static const String arabicCode = 'arabic';
  static const String englishCode = 'english';
}
