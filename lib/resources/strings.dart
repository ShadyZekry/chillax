class Dictiornary {
  static String currentLanguage = 'english';

  static const Map<String, Map> _translations = {
    CodeStrings.arabicCode: {
      'chillax': 'تشيلاكس',
      'chillChat': 'روق...واتكلم',
      'hello': 'مرحبا',
      'calledWhat': 'كيف ترغب انا يناديك الناس؟',
      'typeMessage': 'اكتب رسالتك هنا',
      'generalRoom': 'الغرفة العامة',
      'hateSpeech': 'خطاب الكراهية',
      'hsContent': 'يتضمن خطاب كراهية.',
      'offContent': 'يتضمن خطاب عدائي.',
      'inapContent': 'يتضمن خطاب غير مناسب.',
      'tapView': 'اضغط للمشاهدة',
      'signsOfDepression': 'دليل وجود اكتئاب !',
      'enterUsername': 'ادخل اسمك',
    },
    CodeStrings.englishCode: {
      'chillax': 'Chillax',
      'chillChat': 'Chill...and chat',
      'hello': 'Hello',
      'calledWhat': 'What would you like\nto be called in there?',
      'typeMessage': 'Type your message here',
      'generalRoom': 'General Room',
      'hateSpeech': 'Hate Speech',
      'hateSpeech ': 'Hate Speech',
      'hsContent': 'Hate speech content.',
      'offContent': 'Offensive content.',
      'inapContent': 'Inappropriate content.',
      'tapView': 'Tap to view',
      'signsOfDepression': 'Signs of depression !',
      'enterUsername': 'Enter your username',
    },
  };

  static String get chillChat => _translations[currentLanguage]?['chillChat'] ?? '';
  static String get chillax => _translations[currentLanguage]?['chillax'] ?? '';
  static String get hello => _translations[currentLanguage]?['hello'] ?? '';
  static String get calledWhat => _translations[currentLanguage]?['calledWhat'] ?? '';
  static String get typeMessage => _translations[currentLanguage]?['typeMessage'] ?? '';
  static String get generalRoom => _translations[currentLanguage]?['generalRoom'] ?? '';
  static String get hateSpeech => _translations[currentLanguage]?['hateSpeech'] ?? '';
  static String get hsContent => _translations[currentLanguage]?['hsContent'] ?? '';
  static String get offContent => _translations[currentLanguage]?['offContent'] ?? '';
  static String get inapContent => _translations[currentLanguage]?['inapContent'] ?? '';
  static String get tapView => _translations[currentLanguage]?['tapView'] ?? '';
  static String get signsOfDepression => _translations[currentLanguage]?['signsOfDepression'] ?? '';
  static String get enterUsername => _translations[currentLanguage]?['enterUsername'] ?? '';
}

class CodeStrings {
  static const String arabicCode = 'arabic';
  static const String englishCode = 'english';
}
