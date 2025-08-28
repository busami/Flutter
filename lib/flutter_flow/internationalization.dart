import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/foundation.dart';
import 'package:shared_preferences/shared_preferences.dart';

const _kLocaleStorageKey = '__locale_key__';

class FFLocalizations {
  FFLocalizations(this.locale);

  final Locale locale;

  static FFLocalizations of(BuildContext context) =>
      Localizations.of<FFLocalizations>(context, FFLocalizations)!;

  static List<String> languages() => ['en', 'ar'];

  static late SharedPreferences _prefs;
  static Future initialize() async =>
      _prefs = await SharedPreferences.getInstance();
  static Future storeLocale(String locale) =>
      _prefs.setString(_kLocaleStorageKey, locale);
  static Locale? getStoredLocale() {
    final locale = _prefs.getString(_kLocaleStorageKey);
    return locale != null && locale.isNotEmpty ? createLocale(locale) : null;
  }

  String get languageCode => locale.toString();
  String? get languageShortCode =>
      _languagesWithShortCode.contains(locale.toString())
          ? '${locale.toString()}_short'
          : null;
  int get languageIndex => languages().contains(languageCode)
      ? languages().indexOf(languageCode)
      : 0;

  String getText(String key) =>
      (kTranslationsMap[key] ?? {})[locale.toString()] ?? '';

  String getVariableText({
    String? enText = '',
    String? arText = '',
  }) =>
      [enText, arText][languageIndex] ?? '';

  static const Set<String> _languagesWithShortCode = {
    'ar',
    'az',
    'ca',
    'cs',
    'da',
    'de',
    'dv',
    'en',
    'es',
    'et',
    'fi',
    'fr',
    'gr',
    'he',
    'hi',
    'hu',
    'it',
    'km',
    'ku',
    'mn',
    'ms',
    'no',
    'pt',
    'ro',
    'ru',
    'rw',
    'sv',
    'th',
    'uk',
    'vi',
  };
}

/// Used if the locale is not supported by GlobalMaterialLocalizations.
class FallbackMaterialLocalizationDelegate
    extends LocalizationsDelegate<MaterialLocalizations> {
  const FallbackMaterialLocalizationDelegate();

  @override
  bool isSupported(Locale locale) => _isSupportedLocale(locale);

  @override
  Future<MaterialLocalizations> load(Locale locale) async =>
      SynchronousFuture<MaterialLocalizations>(
        const DefaultMaterialLocalizations(),
      );

  @override
  bool shouldReload(FallbackMaterialLocalizationDelegate old) => false;
}

/// Used if the locale is not supported by GlobalCupertinoLocalizations.
class FallbackCupertinoLocalizationDelegate
    extends LocalizationsDelegate<CupertinoLocalizations> {
  const FallbackCupertinoLocalizationDelegate();

  @override
  bool isSupported(Locale locale) => _isSupportedLocale(locale);

  @override
  Future<CupertinoLocalizations> load(Locale locale) =>
      SynchronousFuture<CupertinoLocalizations>(
        const DefaultCupertinoLocalizations(),
      );

  @override
  bool shouldReload(FallbackCupertinoLocalizationDelegate old) => false;
}

class FFLocalizationsDelegate extends LocalizationsDelegate<FFLocalizations> {
  const FFLocalizationsDelegate();

  @override
  bool isSupported(Locale locale) => _isSupportedLocale(locale);

  @override
  Future<FFLocalizations> load(Locale locale) =>
      SynchronousFuture<FFLocalizations>(FFLocalizations(locale));

  @override
  bool shouldReload(FFLocalizationsDelegate old) => false;
}

Locale createLocale(String language) => language.contains('_')
    ? Locale.fromSubtags(
        languageCode: language.split('_').first,
        scriptCode: language.split('_').last,
      )
    : Locale(language);

bool _isSupportedLocale(Locale locale) {
  final language = locale.toString();
  return FFLocalizations.languages().contains(
    language.endsWith('_')
        ? language.substring(0, language.length - 1)
        : language,
  );
}

final kTranslationsMap = <Map<String, Map<String, String>>>[
  // Home
  {
    'sne9qbs5': {
      'en': 'Aldilaijan Real Estate Office',
      'ar': 'مكتب الدليجان العقاري',
    },
    'tuvvm5ii': {
      'en': 'Search..',
      'ar': 'بحث..',
    },
    'soli97w4': {
      'en': 'House',
      'ar': 'منزل',
    },
    'zy52395z': {
      'en': 'Chalet',
      'ar': 'شاليه',
    },
    'fvt5zi4j': {
      'en': 'Apartment',
      'ar': 'شقة',
    },
    'zrmdueow': {
      'en': 'Investment',
      'ar': 'استثماري',
    },
    'po8piadr': {
      'en': 'Industrial',
      'ar': 'صناعي',
    },
    '1n1ryd2n': {
      'en': 'Smart Suggestion',
      'ar': 'اقتراح ذكي',
    },
    'nx1e2gqb': {
      'en': 'See all',
      'ar': 'انظر الكل',
    },
    'slu6pq4y': {
      'en': 'Show All',
      'ar': 'إظهار الكل',
    },
    'u224dvrd': {
      'en': 'Top Cities',
      'ar': 'أفضل المدن',
    },
    'd39spgdk': {
      'en': 'See all',
      'ar': 'انظر الكل',
    },
    '30ka9ip0': {
      'en': 'Our recommendation',
      'ar': 'توصيتنا',
    },
    '0zqa2qzk': {
      'en': 'See all',
      'ar': 'انظر الكل',
    },
    'u55eqtqj': {
      'en': 'All',
      'ar': 'الجميع',
    },
    '34jyle2j': {
      'en': 'House',
      'ar': 'منزل',
    },
    't03s6guq': {
      'en': 'Villa',
      'ar': 'فيلا',
    },
    'rsqu8efh': {
      'en': 'Appartment',
      'ar': 'شقة',
    },
    'ox5sbh38': {
      'en': 'All',
      'ar': 'الجميع',
    },
    '2deuu5e6': {
      'en': 'Home',
      'ar': 'الرئيسة',
    },
  },
  // Profile
  {
    '5ktklt87': {
      'en': 'info@aldilaijan.com',
      'ar': 'info@aldilaijan.com',
    },
    '6wzi1tsj': {
      'en': 'Favorite',
      'ar': 'مفضل',
    },
    'ymgjviyu': {
      'en': 'My Properties',
      'ar': 'ممتلكاتي',
    },
    '6xr81irp': {
      'en': 'Message',
      'ar': 'رسالة',
    },
    '6o4hwdhd': {
      'en': 'Language',
      'ar': 'لغة',
    },
    'm9db2eee': {
      'en': 'English',
      'ar': 'إنجليزي',
    },
    'eyaotzn2': {
      'en': 'Dark Mode',
      'ar': 'الوضع المظلم',
    },
    '1o64zfcw': {
      'en': 'About Aldilaijan',
      'ar': 'نبذة عن الدليجان',
    },
    'mam0ifso': {
      'en': '1.02.135',
      'ar': '1.02.135',
    },
    'pq8xroup': {
      'en': 'Logout',
      'ar': 'تسجيل الخروج',
    },
    'xyt88iut': {
      'en': 'My Profile',
      'ar': 'ملفي الشخصي',
    },
    'vuowni5v': {
      'en': 'Profile',
      'ar': 'حساب تعريفي',
    },
  },
  // ProfileEdit
  {
    'ysnlxgh8': {
      'en': 'Name',
      'ar': 'اسم',
    },
    'pn847gfb': {
      'en': 'TextField',
      'ar': 'حقل النص',
    },
    '14omb7jd': {
      'en': 'Abdulrahman Aldelaigan',
      'ar': 'عبدالرحمن الدليجان',
    },
    'hs9e3qmg': {
      'en': 'Email',
      'ar': 'بريد إلكتروني',
    },
    'gtz8sn3l': {
      'en': 'TextField',
      'ar': 'حقل النص',
    },
    'l6jt7zxe': {
      'en': 'abdulrahman@aldilaijan.com',
      'ar': 'abdulrahman@aldilaijan.com',
    },
    '6qxb3nlp': {
      'en': 'Mobile',
      'ar': 'متحرك',
    },
    'zctz0eoy': {
      'en': 'TextField',
      'ar': 'حقل النص',
    },
    'kc68230g': {
      'en': '62224000',
      'ar': '62224000',
    },
    '8w4gwdii': {
      'en': 'Gender',
      'ar': 'جنس',
    },
    '9tuclmcz': {
      'en': 'Birth date',
      'ar': 'تاريخ الميلاد',
    },
    't2ypqasr': {
      'en': 'TextField',
      'ar': 'حقل النص',
    },
    'somzc7ez': {
      'en': '01/01/2005',
      'ar': '01/01/2005',
    },
    'l1dr9smp': {
      'en': 'Location',
      'ar': 'موقع',
    },
    '90hn0myk': {
      'en': 'TextField',
      'ar': 'حقل النص',
    },
    'jz7g8cso': {
      'en': 'Alnuzha',
      'ar': 'النزهة',
    },
    '8ypkw7ts': {
      'en': 'Save Changes',
      'ar': 'حفظ التغييرات',
    },
    'cytepble': {
      'en': 'Edit Profile',
      'ar': 'تعديل الملف الشخصي',
    },
    'yoh0miep': {
      'en': 'Home',
      'ar': 'الرئيسة',
    },
  },
  // HelpCenter
  {
    'qaecf4qf': {
      'en': 'Search',
      'ar': 'بحث',
    },
    '7axyot8g': {
      'en': 'FAQ',
      'ar': 'التعليمات',
    },
    '17bqvi51': {
      'en': 'Contact Us',
      'ar': 'اتصل بنا',
    },
    'rizn6j2z': {
      'en': 'General',
      'ar': 'عام',
    },
    'vib0e204': {
      'en': 'Account',
      'ar': 'حساب',
    },
    'vtfjty1i': {
      'en': 'Services',
      'ar': 'خدمات',
    },
    'e30hdw0f': {
      'en': 'Payments',
      'ar': 'المدفوعات',
    },
    '2v5q15lh': {
      'en': 'General',
      'ar': 'عام',
    },
    '3z2bap5h': {
      'en': 'Help Center',
      'ar': 'مركز المساعدة',
    },
    'o8coscjq': {
      'en': 'Home',
      'ar': 'الرئيسة',
    },
  },
  // PasswordChange
  {
    '0ibxqm5g': {
      'en': 'Create new password 🔒',
      'ar': 'إنشاء كلمة مرور جديدة 🔒',
    },
    'doxoa6uf': {
      'en':
          'Create your new password. If you forget it, then you have to do forgot password.',
      'ar': 'أنشئ كلمة مرور جديدة. إذا نسيتها، فاضغط على \"نسيت كلمة المرور\".',
    },
    '963v38ea': {
      'en': 'New Password',
      'ar': 'كلمة المرور الجديدة',
    },
    'ycbjgwos': {
      'en': '●●●●●●●●●●●●',
      'ar': '●●●●●●●●●●●●',
    },
    'czpq5t52': {
      'en': 'Confirm New Password',
      'ar': 'تأكيد كلمة المرور الجديدة',
    },
    'nr5tt7o1': {
      'en': '●●●●●●●●●●●●',
      'ar': '●●●●●●●●●●●●',
    },
    '9itgcz2h': {
      'en': 'Confirm',
      'ar': 'يتأكد',
    },
    '4glco392': {
      'en': 'Home',
      'ar': 'الرئيسة',
    },
  },
  // Onboarding
  {
    '4f38lzfx': {
      'en': 'Skip',
      'ar': 'تخطى',
    },
    '0lnfwd0x': {
      'en': 'Find your perfect rental on Redfin',
      'ar': 'ابحث عن الإيجار المثالي الخاص بك على Redfin',
    },
    'pxrqj9r2': {
      'en':
          'Discover thousands of verified listings in top neighborhoods. Whether you\'re buying or renting, we make it easy to find the perfect place that feels like home.\n',
      'ar':
          'اكتشف آلاف العقارات المُوثّقة في أرقى الأحياء. سواءً كنتَ تشتري أو تستأجر، نُسهّل عليك العثور على المكان المثالي الذي يُشعرك وكأنك في منزلك.',
    },
    'huozskvw': {
      'en': 'Sell for top dollar and save thousands on fees',
      'ar': 'بيع بأعلى سعر وتوفير آلاف الدولارات على الرسوم',
    },
    'ka2zzhjf': {
      'en':
          'Your safety comes first. Browse properties, connect with trusted agents, and make deals with confidence—backed by our built-in security features and verified listings.\n',
      'ar':
          'سلامتك هي الأولوية. تصفح العقارات، وتواصل مع وكلاء عقاريين موثوقين، وأبرم صفقاتك بثقة تامة، مدعومة بميزات الأمان المدمجة لدينا وقوائمنا العقارية الموثوقة.',
    },
    '0qozm6z4': {
      'en': 'Local expertise for luxury homes',
      'ar': 'الخبرة المحلية للمنازل الفاخرة',
    },
    'p4iqp9tq': {
      'en':
          'See what\'s around your new home—schools, hospitals, metro stations, and more. Make smarter location choices with real-time local insights.\n',
      'ar':
          'تعرّف على محيط منزلك الجديد - المدارس والمستشفيات ومحطات المترو وغيرها. حدّد موقعك بدقة أكبر مع رؤى محلية آنية.',
    },
    'hm6au87c': {
      'en': 'Get Started',
      'ar': 'البدء',
    },
    'tecq5x49': {
      'en': 'Home',
      'ar': 'الرئيسة',
    },
  },
  // Languages
  {
    'jk5rjsim': {
      'en': 'Select Language',
      'ar': 'اختر اللغة',
    },
    'sa0tijs7': {
      'en': 'Home',
      'ar': 'الرئيسة',
    },
  },
  // SignInMobile
  {
    '4st0rpwb': {
      'en': 'Back',
      'ar': 'عودة',
    },
    'ps3i9crf': {
      'en': 'Log in or sign up',
      'ar': 'تسجيل الدخول أو التسجيل',
    },
    'x8tq7tiq': {
      'en': 'Enter Phone Number',
      'ar': 'أدخل رقم الهاتف',
    },
    'nwuv5ra4': {
      'en': 'Continue',
      'ar': 'أكمل',
    },
    '1p3cc8dx': {
      'en': 'By continuing, you agree to our ',
      'ar': 'من خلال الاستمرار فإنك توافق على شروطنا',
    },
    'csd3yp6q': {
      'en': 'Terms of Service',
      'ar': 'شروط الخدمة',
    },
    'qvdw6194': {
      'en': ' ',
      'ar': '',
    },
    'wfy3pgji': {
      'en': 'Privacy Policy',
      'ar': 'سياسة الخصوصية',
    },
    'ba4zsgue': {
      'en': ' ',
      'ar': '',
    },
    'gip5rnty': {
      'en': 'Content Policy',
      'ar': 'سياسة المحتوى',
    },
    '27nal531': {
      'en': 'Home',
      'ar': 'الرئيسة',
    },
  },
  // VerifyCode
  {
    '5mt4ykn9': {
      'en': 'Verify code',
      'ar': 'التحقق من الرمز',
    },
    'h8gfkz7c': {
      'en': 'We have sent a verfiication code to',
      'ar': 'لقد أرسلنا رمز التحقق إلى',
    },
    'f5wm7afi': {
      'en': 'Check text messages for your OTP',
      'ar': 'التحقق من الرسائل النصية الخاصة بـ OTP الخاص بك',
    },
    'fphv9lmp': {
      'en': 'Resend OTP',
      'ar': 'إعادة إرسال OTP',
    },
    'mc02up9i': {
      'en': 'Didn\'t get the OTP? ',
      'ar': 'لم تحصل على OTP؟',
    },
    'neayjisv': {
      'en': 'Resend SMS in ',
      'ar': 'إعادة إرسال الرسائل القصيرة في',
    },
    'cyox8ulx': {
      'en': ' s',
      'ar': 'س',
    },
    'f0dbtimq': {
      'en': 'CONTINUE',
      'ar': 'يكمل',
    },
    'fbkc2lwo': {
      'en': 'Home',
      'ar': 'بيت',
    },
  },
  // SignIn_SignUp
  {
    'cup2t77h': {
      'en': 'Let\'s Get Started!',
      'ar': 'دعونا نبدأ!',
    },
    's67bnmv3': {
      'en': 'Name',
      'ar': 'اسم',
    },
    'fr0fblat': {
      'en': 'Furkan',
      'ar': 'فرقان',
    },
    'xz9ghrlb': {
      'en': 'Email',
      'ar': 'بريد إلكتروني',
    },
    'f8k4cqz9': {
      'en': 'furkan@appgenz.com',
      'ar': 'furkan@appgenz.com',
    },
    'vjb5sfd1': {
      'en': 'Password',
      'ar': 'كلمة المرور',
    },
    'rn7did16': {
      'en': '12345678',
      'ar': '12345678',
    },
    '8qvav8rt': {
      'en': 'I give my consent to the processing my\n',
      'ar': 'أعطي موافقتي على معالجة بياناتي',
    },
    '755h83h3': {
      'en': 'Personal Data and',
      'ar': 'البيانات الشخصية و',
    },
    'hqruvccw': {
      'en': ' and accept ',
      'ar': 'وتقبل',
    },
    'hwyv9n13': {
      'en': 'Privacy Policy',
      'ar': 'سياسة الخصوصية',
    },
    '09r9uwug': {
      'en': 'Hello World',
      'ar': 'مرحبا بالعالم',
    },
    'ix89dtet': {
      'en': 'Sign Up',
      'ar': 'اشتراك',
    },
    'v3h11bnq': {
      'en': 'Phone Number',
      'ar': 'رقم التليفون',
    },
    'mvrkruf7': {
      'en': '',
      'ar': '',
    },
    'bul2jrdl': {
      'en': 'Password',
      'ar': 'كلمة المرور',
    },
    '8zdvnxcf': {
      'en': '12345678',
      'ar': '',
    },
    '3cjnuwl9': {
      'en': 'Remember me',
      'ar': 'تذكرنى',
    },
    '7fayt61n': {
      'en': 'Hello World',
      'ar': 'مرحبا بالعالم',
    },
    '6vqvwi7s': {
      'en': 'Forget Password',
      'ar': 'نسيت كلمة المرور',
    },
    'xt32f0f5': {
      'en': 'Hello World',
      'ar': 'مرحبا بالعالم',
    },
    'gzvjiwc7': {
      'en': 'Sign In',
      'ar': 'تسجيل الدخول',
    },
    '3gn9rf0h': {
      'en': 'Home',
      'ar': 'بيت',
    },
  },
  // Welcome
  {
    'smxt9xrc': {
      'en': 'Let\'s Get Started!',
      'ar': 'دعونا نبدأ!',
    },
    'n4j9agck': {
      'en': 'Login now to acces faster internet\nmore than 90+ location.',
      'ar': 'سجل الآن للوصول إلى إنترنت أسرع في أكثر من 90 موقعًا.',
    },
    'qqn5z85e': {
      'en': 'Login with Number',
      'ar': 'تسجيل الدخول بالرقم',
    },
    'x8ojcjve': {
      'en': 'Don’t have an account?',
      'ar': 'ليس لديك حساب؟',
    },
    '3xbcx7r8': {
      'en': ' Sign Up',
      'ar': 'اشتراك',
    },
    'r1lif8fo': {
      'en': 'Or Use Instant Sign Up',
      'ar': 'أو استخدم التسجيل الفوري',
    },
    '5xztnuq6': {
      'en': 'Privacy Policy',
      'ar': 'سياسة الخصوصية',
    },
    'k4wa4qb1': {
      'en': 'Terms of Service',
      'ar': 'شروط الخدمة',
    },
    'x2se39sc': {
      'en': 'Home',
      'ar': 'بيت',
    },
  },
  // Chat
  {
    '9oc9t72t': {
      'en': 'All Messages',
      'ar': 'جميع الرسائل',
    },
    'h2mupwbp': {
      'en': '108 Contects',
      'ar': '108 محتويات',
    },
    'kc6hb487': {
      'en': 'Latest',
      'ar': 'أحدث',
    },
    'xh6z5mst': {
      'en': 'Select...',
      'ar': 'يختار...',
    },
    'cgbz1xyt': {
      'en': 'Search...',
      'ar': 'يبحث...',
    },
    'hvcetbn2': {
      'en': 'Latest',
      'ar': 'أحدث',
    },
    '9fogw8js': {
      'en': 'Oldest',
      'ar': 'الأقدم',
    },
    '6pw9v6jz': {
      'en': 'Chat',
      'ar': 'محادثة',
    },
  },
  // InviteFriends
  {
    '2c74n95g': {
      'en':
          'Invite friends from your contact list or share your referral link with them.',
      'ar':
          'قم بدعوة الأصدقاء من قائمة جهات الاتصال الخاصة بك أو قم بمشاركة رابط الإحالة الخاص بك معهم.',
    },
    '4xclzvys': {
      'en': 'Share Link',
      'ar': 'مشاركة الرابط',
    },
    'pmvsxcmu': {
      'en': 'How it works',
      'ar': 'كيف يعمل',
    },
    'v9w5hfqj': {
      'en': '1',
      'ar': '1',
    },
    '70u3cza7': {
      'en': 'You share your refferal link with friends',
      'ar': 'تشارك رابط الإحالة الخاص بك مع الأصدقاء',
    },
    '6td4ut2z': {
      'en': '2',
      'ar': '2',
    },
    '6azck8jo': {
      'en':
          'Your friend sign up on the app & get a spendin limit for promotion',
      'ar': 'سجل صديقك في التطبيق واحصل على حد إنفاق للترويج',
    },
    '7x3ruieo': {
      'en': '3',
      'ar': '3',
    },
    'dr9ml8ga': {
      'en': 'You\'ll get 100% off on first property listing.',
      'ar': 'سوف تحصل على خصم 100% عند إدراج العقار لأول مرة.',
    },
    'kz986a0i': {
      'en': 'Search friends to invite',
      'ar': 'ابحث عن الأصدقاء الذين تريد دعوتهم',
    },
    'vi1dosn5': {
      'en': 'Invite Friends',
      'ar': 'دعوة الأصدقاء',
    },
    'ypatn2xy': {
      'en': 'Home',
      'ar': 'بيت',
    },
  },
  // SupportHome
  {
    '20lod9db': {
      'en': 'Help',
      'ar': 'يساعد',
    },
    '9kz0wpry': {
      'en': 'VIEW TICKETS',
      'ar': 'عرض التذاكر',
    },
    'pz7jw7nc': {
      'en': 'Recent tickets',
      'ar': 'التذاكر الأخيرة',
    },
    'v5h9941h': {
      'en': 'Quick links',
      'ar': 'روابط سريعة',
    },
    'ccq9l5l2': {
      'en': 'Reach support directly',
      'ar': 'تواصل مع الدعم مباشرةً',
    },
    '2jad4ezk': {
      'en': 'Chat with us',
      'ar': 'الدردشة معنا',
    },
    'n1dvey67': {
      'en': 'Talk to us',
      'ar': 'تحدث معنا',
    },
    '7m3vb7f3': {
      'en': 'Home',
      'ar': 'بيت',
    },
  },
  // PasswordReset
  {
    '3m6btf7q': {
      'en': 'Reset your password 🔑',
      'ar': 'إعادة تعيين كلمة المرور الخاصة بك 🔑',
    },
    'hj97kx2h': {
      'en':
          'Please enter your email and we will send an OTP code in the next step to reset your password.',
      'ar':
          'الرجاء إدخال بريدك الإلكتروني وسوف نرسل لك رمز OTP في الخطوة التالية لإعادة تعيين كلمة المرور الخاصة بك.',
    },
    'fua4nyy8': {
      'en': 'furkan@appgenz.com',
      'ar': 'furkan@appgenz.com',
    },
    '5i8t0ssu': {
      'en': 'Continue',
      'ar': 'يكمل',
    },
    '4f36tuhm': {
      'en': 'Home',
      'ar': 'بيت',
    },
  },
  // PrivacyPolicy
  {
    's74mmqmk': {
      'en': 'Privacy Policy',
      'ar': 'سياسة الخصوصية',
    },
    'r4rmc3bp': {
      'en': 'Home',
      'ar': 'بيت',
    },
  },
  // TermsConditions
  {
    'rpb61zy6': {
      'en': 'Trems & Conditions',
      'ar': 'الشروط والأحكام',
    },
    'gi5ffe25': {
      'en': 'Homexa Terms and Conditions',
      'ar': 'الشروط والأحكام الخاصة بـ Homexa',
    },
    'y4w85ecm': {
      'en': 'Last Updated:',
      'ar': 'آخر تحديث:',
    },
    'ni8ta9au': {
      'en': ' 1.02.35',
      'ar': '1.02.35',
    },
    'bb5lwt7b': {
      'en': 'Last Updated: 1.02.35',
      'ar': 'آخر تحديث: 1.02.35',
    },
    'uac8615s': {
      'en':
          'Welcome to Homexa! By using our services, you agree to these Terms and Conditions. Please read them carefully.',
      'ar':
          'أهلاً بك في هوميكسا! باستخدام خدماتنا، فإنك توافق على هذه الشروط والأحكام. يُرجى قراءتها بعناية.',
    },
    'tjokxnsg': {
      'en': '1. Introduction',
      'ar': '1. المقدمة',
    },
    'szwbzq0x': {
      'en': '2. Definitions',
      'ar': '2. التعاريف',
    },
    '7skp1dzr': {
      'en': '3. Eligibility',
      'ar': '3. الأهلية',
    },
    'nibaafeu': {
      'en': '4. Booking and Appointments',
      'ar': '4. الحجز والمواعيد',
    },
    '0artcvk3': {
      'en': '5. Payments and Refunds',
      'ar': '5. المدفوعات والاسترداد',
    },
    'cjzeley1': {
      'en': '6. User Conduct',
      'ar': '6. سلوك المستخدم',
    },
    'dgx4h4qr': {
      'en': 'Home',
      'ar': 'بيت',
    },
  },
  // AccountPrivacy
  {
    'ksbddd3f': {
      'en': 'Account Privacy',
      'ar': 'خصوصية الحساب',
    },
    'ofi6z8ju': {
      'en': 'Account privacy',
      'ar': 'خصوصية الحساب',
    },
    'y1pt1ji4': {
      'en':
          'We i.e. \"Abodex Private Limited\" (formerly known as Abodex Private Limited) (\"Company\"), are committed to protecting the privacy and security of your personal information. \nYour privacy is important to us and maintaining your trust is paramount. This privacy policy explains how we collect, use, process and disclose information about you. By using our website/app/platform and affiliated services, you consent to the terms of our privacy policy (\"Privacy Policy\") in addition to our \'Terms of Use.\' \n\nWe encourage you to read this privacy policy to understand the collection, use, and disclosure of your information from time to time, to keep yourself updated with the changes and updates that we make to this policy. This privacy policy describes our privacy practices for all websites, products and services that are linked to it. \nHowever this policy does not apply to those affiliates and partners that have their own privacy policy. In such situations, we recommend that you read the privacy policy on the applicable site. \nShould you have any clarifications regarding this privacy policy, please write to us at info@appgenz.com ',
      'ar':
          'نحن، شركة \"Abodex Private Limited\" (المعروفة سابقًا باسم Abodex Private Limited) (\"الشركة\")، ملتزمون بحماية خصوصية وأمن معلوماتكم الشخصية.\nخصوصيتكم تهمنا، والحفاظ على ثقتكم أمرٌ بالغ الأهمية. توضح سياسة الخصوصية هذه كيفية جمعنا واستخدامنا ومعالجتنا والإفصاح عن معلوماتكم. باستخدامكم موقعنا الإلكتروني/تطبيقنا/منصتنا والخدمات التابعة لنا، فإنكم توافقون على شروط سياسة الخصوصية الخاصة بنا (\"سياسة الخصوصية\") بالإضافة إلى \"شروط الاستخدام\".\n\nنشجعكم على قراءة سياسة الخصوصية هذه لفهم آلية جمع معلوماتكم واستخدامها والإفصاح عنها من وقت لآخر، ولمواكبة التغييرات والتحديثات التي نجريها عليها. توضح سياسة الخصوصية هذه ممارساتنا المتعلقة بالخصوصية لجميع المواقع الإلكترونية والمنتجات والخدمات المرتبطة بها.\nمع ذلك، لا تنطبق هذه السياسة على الشركات التابعة والشركاء الذين لديهم سياسة خصوصية خاصة بهم. في مثل هذه الحالات، نوصيكم بقراءة سياسة الخصوصية على الموقع المعني.\nإذا كان لديك أي توضيحات بخصوص سياسة الخصوصية هذه، يرجى مراسلتنا على info@appgenz.com',
    },
    '3nyo7pf3': {
      'en': 'Request to delete account',
      'ar': 'طلب حذف الحساب',
    },
    'jpug878p': {
      'en': 'Request to closure of your account',
      'ar': 'طلب إغلاق حسابك',
    },
    '5s4o0g69': {
      'en': 'Home',
      'ar': 'بيت',
    },
  },
  // AccountDeleteCnf
  {
    'ui2r3ybm': {
      'en':
          'Do you have any feedback for us? We would love to hear from you!(optional)',
      'ar': 'هل لديك أي ملاحظات لنا؟ يسعدنا سماع رأيك! (اختياري)',
    },
    'c3i4p9yv': {
      'en': '',
      'ar': '',
    },
    'buc8d0do': {
      'en': 'Please share your feedback (optional)',
      'ar': 'يرجى مشاركة تعليقاتك (اختياري)',
    },
    'xes75fa8': {
      'en': 'Delete my account',
      'ar': 'حذف حسابي',
    },
    'bm2eiwig': {
      'en':
          'Note* : All data associated with this account will be deleted in accordance withour privacy policy. You will not able to retrive this information once deleted.',
      'ar':
          'ملاحظة*: سيتم حذف جميع البيانات المرتبطة بهذا الحساب وفقًا لسياسة الخصوصية لدينا. لن تتمكن من استرجاع هذه المعلومات بعد حذفها.',
    },
    'qz7q7zrz': {
      'en': 'Delete account',
      'ar': 'حذف الحساب',
    },
    'xbxv8sai': {
      'en': 'Home',
      'ar': 'بيت',
    },
  },
  // AccountDelete
  {
    'pbso83xy': {
      'en': 'Delete my account',
      'ar': 'حذف حسابي',
    },
    'oc5tsztd': {
      'en': 'Why would you like to delete your account',
      'ar': 'لماذا تريد حذف حسابك',
    },
    '605dm7q0': {
      'en': 'Delete account',
      'ar': 'حذف الحساب',
    },
    'o5riirz0': {
      'en': 'Home',
      'ar': 'بيت',
    },
  },
  // NotificationSetting
  {
    'fw0kp0oa': {
      'en': 'General',
      'ar': 'عام',
    },
    'blzvtpx1': {
      'en': 'Others',
      'ar': 'آحرون',
    },
    'jcsgxwod': {
      'en': 'Notification Preference',
      'ar': 'تفضيلات الإشعارات',
    },
    'c2esefyj': {
      'en': 'Home',
      'ar': 'بيت',
    },
  },
  // Referral
  {
    'wfzmfxde': {
      'en': 'Invite your friends and win up to 1 Million Dollar!',
      'ar': 'قم بدعوة أصدقائك واربح ما يصل إلى مليون دولار!',
    },
    'fl21q1je': {
      'en':
          'Eacht time the friends you invite buy or sells, you get a 0.020%. Commission is calculated from the value of buy or sell purchase.',
      'ar':
          'في كل مرة يقوم فيها أصدقاؤك الذين تدعوهم بالشراء أو البيع، تحصل على عمولة بنسبة ٠٫٠٢٠٪. تُحسب العمولة بناءً على قيمة الشراء أو البيع.',
    },
    'hl0jtgfh': {
      'en': 'XY2CD5FR',
      'ar': 'XY2CD5FR',
    },
    '93g8uafc': {
      'en': 'Copy',
      'ar': 'ينسخ',
    },
    'uo92o45a': {
      'en': 'Invite My Friends',
      'ar': 'دعوة أصدقائي',
    },
    'pbz3tl03': {
      'en': 'Referral Program',
      'ar': 'برنامج الإحالة',
    },
    '5mtzsdej': {
      'en': 'Home',
      'ar': 'بيت',
    },
  },
  // SupportCallRequest
  {
    '6k9kopi1': {
      'en': 'Call Request',
      'ar': 'طلب الاتصال',
    },
    'rnyr58ln': {
      'en': 'Confirm your details so we can call you',
      'ar': 'قم بتأكيد بياناتك حتى نتمكن من الاتصال بك',
    },
    'ovk28ggd': {
      'en': 'Order not delivered yet',
      'ar': 'الطلب لم يتم تسليمه بعد',
    },
    'iax2lo50': {
      'en': 'Preferred language',
      'ar': 'اللغة المفضلة',
    },
    '8bs2wddi': {
      'en': 'English',
      'ar': 'إنجليزي',
    },
    'ajf7c637': {
      'en': 'Hindi',
      'ar': 'الهندية',
    },
    'uynudxtm': {
      'en': 'Bengali',
      'ar': 'البنغالية',
    },
    'nlbummew': {
      'en': 'Spanish',
      'ar': 'الأسبانية',
    },
    'b8qdhmgi': {
      'en': 'Enter Phone Number',
      'ar': 'أدخل رقم الهاتف',
    },
    'j7g387ws': {
      'en': 'Call me now',
      'ar': 'اتصل بي الآن',
    },
    'tmchbehd': {
      'en': 'Home',
      'ar': 'بيت',
    },
  },
  // Tickets
  {
    'aoer4x0p': {
      'en': '',
      'ar': '',
    },
    'dtd457rq': {
      'en': 'Search tickets',
      'ar': 'البحث عن التذاكر',
    },
    '0f9tukef': {
      'en': '',
      'ar': '',
    },
    'qaoj66co': {
      'en': 'Tickets',
      'ar': 'التذاكر',
    },
    'e7k381z9': {
      'en': 'Home',
      'ar': 'بيت',
    },
  },
  // Splash
  {
    'wcviule0': {
      'en': 'Home',
      'ar': 'بيت',
    },
  },
  // TicketDetails
  {
    'tlmzhqxf': {
      'en': 'Issue',
      'ar': 'مشكلة',
    },
    'crjh3pbr': {
      'en': 'Details',
      'ar': 'تفاصيل',
    },
    'm48deajo': {
      'en':
          'Payment processed, but no order confirmation received or visible in the \"My Orders\" section. Need assistance to confirm or refund the order.',
      'ar':
          'تم معالجة الدفع، ولكن لم يتم استلام تأكيد الطلب أو ظهوره في قسم \"طلباتي\". أحتاج إلى مساعدة لتأكيد الطلب أو استرداده.',
    },
    'nkvlvrg7': {
      'en': 'Write your message',
      'ar': 'اكتب رسالتك',
    },
    'ayhytwa1': {
      'en': 'Ticket #321454531',
      'ar': 'التذكرة رقم 321454531',
    },
    'cm1ygx3i': {
      'en': 'OPEN',
      'ar': 'يفتح',
    },
    '9hm69av2': {
      'en': '12 Oct 2024 at 01:48 PM',
      'ar': '12 أكتوبر 2024 الساعة 01:48 مساءً',
    },
    '5r1ci1eq': {
      'en': 'Home',
      'ar': 'بيت',
    },
  },
  // Security
  {
    'm7iv0txq': {
      'en': 'Security Settings',
      'ar': 'إعدادات الأمان',
    },
    '3n03vost': {
      'en': 'Delete account',
      'ar': 'حذف الحساب',
    },
    'l5z1gd7a': {
      'en': 'Your account has been deleting',
      'ar': 'لقد تم حذف حسابك',
    },
    '4cim37sx': {
      'en': 'Home',
      'ar': 'بيت',
    },
  },
  // AboutUs
  {
    'ygbfvu45': {
      'en': 'About us',
      'ar': 'معلومات عنا',
    },
    'x3wf7vnm': {
      'en': 'Homexa Pvt. Ltd.',
      'ar': 'شركة هوميكسا المحدودة',
    },
    'uk9wjnl6': {
      'en': 'Virssion: 1.02.35 Live',
      'ar': 'الإصدار: 1.02.35 مباشر',
    },
    'csoh9l1u': {
      'en': 'Why Choose Homexa?',
      'ar': 'لماذا تختار هوميكسا؟',
    },
    'uxawtckp': {
      'en': 'Verified Professionals: ',
      'ar': 'المهنيين المعتمدين:',
    },
    'qt4agkmg': {
      'en':
          'All service providers are thoroughly vetted to ensure quality and safety.',
      'ar': 'يتم فحص جميع مقدمي الخدمة بعناية لضمان الجودة والسلامة.',
    },
    'c8j7qeph': {
      'en': 'Transparent Pricing: ',
      'ar': 'التسعير الشفاف:',
    },
    '3rljm26u': {
      'en': 'Know the cost upfront with no hidden fees.',
      'ar': 'تعرف على التكلفة مقدمًا بدون أي رسوم مخفية.',
    },
    'hn6hmrpb': {
      'en': 'Convenience: ',
      'ar': 'راحة:',
    },
    '9rl9k2qi': {
      'en': 'Book services anytime, anywhere with just a few taps.',
      'ar': 'احجز الخدمات في أي وقت وفي أي مكان ببضع نقرات فقط.',
    },
    'ayhvx9zw': {
      'en': 'Comprehensive Solutions: ',
      'ar': 'الحلول الشاملة:',
    },
    'ir9fwjeb': {
      'en':
          'From plumbing and electrical repairs to cleaning and painting, we cover it all.',
      'ar':
          'من إصلاحات السباكة والكهرباء إلى التنظيف والطلاء، نحن نغطي كل شيء.',
    },
    '8rh23dm1': {
      'en': 'Home',
      'ar': 'بيت',
    },
  },
  // PasswordResetEmailSent
  {
    '3nauz8r2': {
      'en': 'Check your email',
      'ar': 'تحقق من بريدك الإلكتروني',
    },
    'p6vbx493': {
      'en': 'We\'ve sent a password reset link to:',
      'ar': 'لقد أرسلنا رابط إعادة تعيين كلمة المرور إلى:',
    },
    '0tvur6le': {
      'en': 'user@example.com',
      'ar': 'المستخدم@example.com',
    },
    'jik1yer0': {
      'en':
          'Didn\'t receive the email? Check your spam folder or try resending',
      'ar':
          'لم تستلم البريد الإلكتروني؟ تحقق من مجلد البريد العشوائي أو حاول إعادة إرساله.',
    },
    'aafbrk7e': {
      'en': 'Resend Email',
      'ar': 'إعادة إرسال البريد الإلكتروني',
    },
    '053lxj9m': {
      'en': 'I\'ve verified my email',
      'ar': 'لقد قمت بالتحقق من بريدي الإلكتروني',
    },
  },
  // Feedback
  {
    'cqiui484': {
      'en': 'Send Feedback',
      'ar': 'إرسال التعليقات',
    },
    '4etdjfn9': {
      'en':
          'Tell us what you love about the app, or what we could be doing better.',
      'ar':
          'أخبرنا بما تحبه في التطبيق، أو ما الذي يمكننا القيام به بشكل أفضل.',
    },
    'mf9lz6oz': {
      'en': '',
      'ar': '',
    },
    '4ypcz0jr': {
      'en': 'Enter feedback',
      'ar': 'أدخل التعليقات',
    },
    '8eq5iryv': {
      'en': 'Submit feedback',
      'ar': 'إرسال التعليقات',
    },
    '0oe6ni5z': {
      'en': 'Home',
      'ar': 'بيت',
    },
  },
  // PasswordCreationSuccessful
  {
    'cfuyyb7s': {
      'en': 'Password Created!',
      'ar': 'تم إنشاء كلمة المرور!',
    },
    'x4plhqbt': {
      'en':
          'Your new password has been set successfully. You can now use it to access your account.',
      'ar':
          'تم تعيين كلمة مرورك الجديدة بنجاح. يمكنك الآن استخدامها للوصول إلى حسابك.',
    },
    '3o6f8n29': {
      'en': 'Continue to Login',
      'ar': 'متابعة لتسجيل الدخول',
    },
  },
  // Troubleshooting
  {
    '1v0ml3h1': {
      'en': 'Common Issues',
      'ar': 'القضايا الشائعة',
    },
    '4u9pv25b': {
      'en': 'Connection Problems',
      'ar': 'مشاكل الاتصال',
    },
    'v3u2qtx7': {
      'en': 'Login Issues',
      'ar': 'مشاكل تسجيل الدخول',
    },
    '33kd2foh': {
      'en': 'Sync Problems',
      'ar': 'مشاكل المزامنة',
    },
    'sucubbze': {
      'en': 'System Status',
      'ar': 'حالة النظام',
    },
    'xjw9nzu6': {
      'en': 'Server Status',
      'ar': 'حالة الخادم',
    },
    'fv0fqb3j': {
      'en': 'Operational',
      'ar': 'تشغيلي',
    },
    'e4q5tol6': {
      'en': 'Last Check',
      'ar': 'الفحص الأخير',
    },
    'kst6qjpa': {
      'en': '2 min ago',
      'ar': 'منذ دقيقتين',
    },
    '6hjmp0q9': {
      'en': 'Contact Support',
      'ar': 'اتصل بالدعم',
    },
    'ot866cw4': {
      'en': 'Need additional help? Our support team is here for you.',
      'ar': 'هل تحتاج إلى مساعدة إضافية؟ فريق الدعم لدينا جاهز لخدمتك.',
    },
    'o8s03bjj': {
      'en': 'Chat with Support',
      'ar': 'الدردشة مع الدعم',
    },
    '98nzun93': {
      'en': 'Send Email',
      'ar': 'إرسال بريد إلكتروني',
    },
    'gojdp16f': {
      'en': 'Troubleshotting',
      'ar': 'استكشاف الأخطاء وإصلاحها',
    },
  },
  // Explore
  {
    'h80h0fy4': {
      'en': 'Search...',
      'ar': 'يبحث...',
    },
    '427ofel9': {
      'en': 'Explore Nearby',
      'ar': 'استكشف المناطق القريبة',
    },
    'xe0z6x8y': {
      'en': 'See all',
      'ar': 'انظر الكل',
    },
    'fiqebnwm': {
      'en': 'All',
      'ar': 'الجميع',
    },
    'z7ixerf4': {
      'en': 'House',
      'ar': 'منزل',
    },
    'grn2epun': {
      'en': 'Appartment',
      'ar': 'شقة',
    },
    'l85xp16d': {
      'en': 'Villa',
      'ar': 'فيلا',
    },
    'yy0ybu0r': {
      'en': 'Land/Plote',
      'ar': 'الأرض/قطعة الأرض',
    },
    'lzy1is6t': {
      'en': 'All',
      'ar': 'الجميع',
    },
    'n5f4qfk1': {
      'en': 'Top Estate Agent',
      'ar': 'أفضل وكيل عقارات',
    },
    'w1swb5wt': {
      'en': 'See all',
      'ar': 'انظر الكل',
    },
    'cg6qvub4': {
      'en': 'Find Your Perfect Realtor',
      'ar': 'ابحث عن وكيل العقارات المثالي الخاص بك',
    },
    'ai6yjrpk': {
      'en':
          'Connect with trusted real estate professionals who understand your needs.',
      'ar': 'تواصل مع خبراء العقارات الموثوق بهم الذين يفهمون احتياجاتك.',
    },
    'wxaendk0': {
      'en': 'Real Estate Guides',
      'ar': 'أدلة العقارات',
    },
    'v9xyfcz7': {
      'en': 'Bookings',
      'ar': 'الحجوزات',
    },
  },
  // PaymentMethods
  {
    '4te0kxtl': {
      'en': 'Payment Method',
      'ar': 'طريقة الدفع',
    },
    'pjayhwzd': {
      'en': 'Add New Card',
      'ar': 'إضافة بطاقة جديدة',
    },
    'diivj762': {
      'en': 'Home',
      'ar': 'بيت',
    },
  },
  // SearchContacts
  {
    'xf3wuemm': {
      'en': 'Search Contacts',
      'ar': 'البحث عن جهات الاتصال',
    },
    '8u1xn9n2': {
      'en': 'Chat',
      'ar': 'محادثة',
    },
  },
  // PasswordResetOTP
  {
    '7wpkjqlf': {
      'en': 'OTP code verification 🔐',
      'ar': 'التحقق من رمز OTP 🔐',
    },
    'sb6ze314': {
      'en':
          'We have sent an OTP code to your email and********ley@appgenz.com. Enter the OTP code below to verify.',
      'ar':
          'لقد أرسلنا رمز OTP إلى بريدك الإلكتروني and********ley@appgenz.com. أدخل رمز OTP أدناه للتحقق.',
    },
    'ta20ducu': {
      'en': 'Didn\'t receive email?',
      'ar': 'لم تستلم البريد الإلكتروني؟',
    },
    'pj49zpma': {
      'en': 'You can resend code in',
      'ar': 'يمكنك إعادة إرسال الكود في',
    },
    '5lagxfgp': {
      'en': ' 52',
      'ar': '52',
    },
    'wppuy4qv': {
      'en': ' s',
      'ar': 'س',
    },
    'ahjxpn4z': {
      'en': 'Hello World',
      'ar': 'مرحبا بالعالم',
    },
    'qa3vhxab': {
      'en': 'Submit',
      'ar': 'يُقدِّم',
    },
    'vx0s179f': {
      'en': 'Home',
      'ar': 'بيت',
    },
  },
  // AboutTheApp
  {
    '7y0qtzu9': {
      'en': 'Virssion: 1.02.35 Live',
      'ar': 'الإصدار: 1.02.35 مباشر',
    },
    'm0bn9s7q': {
      'en': 'About Homexa',
      'ar': 'حول هوميكسا',
    },
    '06a5r40c': {
      'en': 'Home',
      'ar': 'بيت',
    },
  },
  // ViewAll
  {
    'm5h4e63n': {
      'en': 'Search category or near you',
      'ar': 'ابحث عن الفئة أو بالقرب منك',
    },
    'dkj5qe4w': {
      'en': 'Filters',
      'ar': 'المرشحات',
    },
    'hc5dnp9u': {
      'en': '1,271 Properties Available',
      'ar': '1,271 عقارًا متاحًا',
    },
    'bjv04e2w': {
      'en': 'Sort by',
      'ar': 'فرز حسب',
    },
    'r0eu68zd': {
      'en': 'Bookings',
      'ar': 'الحجوزات',
    },
  },
  // Listings
  {
    'e3z5mzk9': {
      'en': 'All Properties',
      'ar': 'جميع العقارات',
    },
    '0mc3csaq': {
      'en': 'My Properties',
      'ar': 'ممتلكاتي',
    },
    't2h782o8': {
      'en': 'Add Property',
      'ar': 'إضافة عقار',
    },
    '5gwxglqy': {
      'en': 'Chat',
      'ar': 'محادثة',
    },
  },
  // PropertyDetails
  {
    's9axf7e4': {
      'en': '4.8',
      'ar': '4.8',
    },
    'fhxd7r0p': {
      'en': '(947) reviews',
      'ar': '(947) تقييمًا',
    },
    'vmjncy3h': {
      'en': '6993 Meadow Valley Terrace, New York',
      'ar': '6993 ميدو فالي تيراس، نيويورك',
    },
    '002ko6s4': {
      'en': '7,500',
      'ar': '7,500',
    },
    'd8ejyn1k': {
      'en': 'sqft',
      'ar': 'قدم مربع',
    },
    'f6xru5jn': {
      'en': '4',
      'ar': '4',
    },
    'ucxf503k': {
      'en': 'Bedroom',
      'ar': 'غرفة النوم',
    },
    'tjx3b5kg': {
      'en': '3',
      'ar': '3',
    },
    'jkiy9h9q': {
      'en': 'Bathroom',
      'ar': 'حمام',
    },
    'rbn477tr': {
      'en': 'Start Price',
      'ar': 'سعر البداية',
    },
    'kpm1mrk5': {
      'en': '880,000',
      'ar': '880,000',
    },
    'karyulnf': {
      'en': 'USD',
      'ar': 'دولار أمريكي',
    },
    '8270x4yb': {
      'en': '30% off',
      'ar': 'خصم 30%',
    },
    '32oz4sxm': {
      'en': 'Max Price:  1.1M USD',
      'ar': 'السعر الأقصى: 1.1 مليون دولار أمريكي',
    },
    '8db191pi': {
      'en': 'View Price breakup',
      'ar': 'عرض تفاصيل السعر',
    },
    'd1z2zqra': {
      'en': 'Offer Price',
      'ar': 'سعر العرض',
    },
    'dj4f5suf': {
      'en': 'For example: \$400,000',
      'ar': 'على سبيل المثال: 400,000 دولار',
    },
    'epqp39m4': {
      'en': 'Please choose an option from the dropdown',
      'ar': 'الرجاء اختيار خيار من القائمة المنسدلة',
    },
    'z39yhxgt': {
      'en': 'About the Property',
      'ar': 'حول العقار',
    },
    'di5ep3vk': {
      'en':
          'Beautiful brand new independent house with huge parking space. servants quarter drivers room, office, security room along with Bhhk independent house in the prime location of Bangalore in\nSadashivanagar',
      'ar':
          'منزل مستقل جديد وجميل، مع موقف سيارات واسع، وغرفة خادم، وغرفة سائق، ومكتب، وغرفة أمن، بالإضافة إلى منزل مستقل من غرفة نوم واحدة ومطبخ وصالة، في موقع مميز في بنغالور، ساداشيفاناغار.',
    },
    '8vyz5nhu': {
      'en': 'Read more',
      'ar': 'اقرأ المزيد',
    },
    '6d1qalp8': {
      'en': 'Nearby Facilities',
      'ar': 'المرافق القريبة',
    },
    'lfwo40xx': {
      'en': 'Fact & Feature',
      'ar': 'حقائق وميزات',
    },
    'vl3cc0yz': {
      'en': 'See all',
      'ar': 'انظر الكل',
    },
    '0c21crrr': {
      'en': 'Bedrooms & bathrooms',
      'ar': 'غرف النوم والحمامات',
    },
    'doxh8fo2': {
      'en': 'Bedrooms: 6',
      'ar': 'غرف النوم: 6',
    },
    'exw3mpe2': {
      'en': 'Bathrooms: 5',
      'ar': 'الحمامات: 5',
    },
    'xhmyy7nb': {
      'en': 'Full bathrooms: 1',
      'ar': 'الحمامات الكاملة: 1',
    },
    'md7i1wdb': {
      'en': '3/4 bathrooms: 3',
      'ar': '3/4 حمامات: 3',
    },
    'ckp6wzep': {
      'en': '1/2 bathrooms: 1',
      'ar': 'نصف الحمامات: 1',
    },
    'j7tboy96': {
      'en': 'Constraction Details',
      'ar': 'تفاصيل البناء',
    },
    'red6899j': {
      'en': 'See all',
      'ar': 'انظر الكل',
    },
    '3d2gfc97': {
      'en': 'Flore & Counter',
      'ar': 'فلور آند كاونتر',
    },
    'io0yxbba': {
      'en': 'Living or dining',
      'ar': 'المعيشة أو تناول الطعام',
    },
    'xx7aa0n9': {
      'en': 'Vitrified tiels',
      'ar': 'تيلز زجاجية',
    },
    'g1ohaj4i': {
      'en': 'Master bedroom',
      'ar': 'غرفة النوم الرئيسية',
    },
    'xtpssxnr': {
      'en': 'Wooden Flooring',
      'ar': 'الأرضيات الخشبية',
    },
    '0lbfj0hv': {
      'en': 'Other bedroom',
      'ar': 'غرفة نوم أخرى',
    },
    'r0f5ubft': {
      'en': 'Vitrified tiles',
      'ar': 'البلاط المزجج',
    },
    'tyis3zch': {
      'en': 'Kitchin',
      'ar': 'كيتشن',
    },
    '5cmc4l0x': {
      'en': 'Vitrified Tiles',
      'ar': 'البلاط المزجج',
    },
    'yk675p8u': {
      'en': 'Tsilets',
      'ar': 'تسيليتس',
    },
    'i6n72zdn': {
      'en': 'Anti Skid Ceramic Tiles',
      'ar': 'بلاط سيراميك مضاد للانزلاق',
    },
    'vz9a6jt1': {
      'en': 'Balcony',
      'ar': 'شرفة',
    },
    '77rmg1cq': {
      'en': 'Anti skid ceramic tiles',
      'ar': 'بلاط سيراميك مضاد للانزلاق',
    },
    '78b5jlf2': {
      'en': 'Amenities',
      'ar': 'وسائل الراحة',
    },
    '43fztz4s': {
      'en': 'See all',
      'ar': 'انظر الكل',
    },
    '5oq3nizg': {
      'en': 'Rohan Khatun',
      'ar': 'روهان خاتون',
    },
    '5gd6rwo7': {
      'en': 'See Developer Profile',
      'ar': 'انظر ملف تعريف المطور',
    },
    'r4qc0cik': {
      'en': 'Phone',
      'ar': 'هاتف',
    },
    '3q5qnj9t': {
      'en': 'Message',
      'ar': 'رسالة',
    },
    'vjqh7rwh': {
      'en':
          'Ready to make your real estate dreams a reality? Trust Mike Kenney, Broker/Owner of Better Homes and Gardens Real Estate....',
      'ar':
          'هل أنت مستعد لتحقيق أحلامك العقارية؟ ثق بمايك كيني، الوسيط ومالك شركة بيتر هومز آند جاردنز للعقارات.',
    },
    'ocxqqq8e': {
      'en': 'Location',
      'ar': 'موقع',
    },
    'znb97p9n': {
      'en': 'See on Map',
      'ar': 'انظر على الخريطة',
    },
    'cvcsumba': {
      'en': '6993 Meadew Valley Terrace, New York',
      'ar': '6993 ميدو فالي تيراس، نيويورك',
    },
    '7ne31ys4': {
      'en': 'Avg rate/sqft',
      'ar': 'متوسط السعر/قدم مربع',
    },
    'cwuhu1rq': {
      'en': '5.4 K USD',
      'ar': '5.4 ألف دولار أمريكي',
    },
    'ytw635hg': {
      'en': 'Price trend',
      'ar': 'اتجاه السعر',
    },
    'uzv29mjh': {
      'en': '5.64% YoY',
      'ar': '5.64% على أساس سنوي',
    },
    'y3ck9x8k': {
      'en': 'Build up Area',
      'ar': 'منطقة البناء',
    },
    'xar4ypro': {
      'en': '1,725.0 sqft',
      'ar': '1,725.0 قدم مربع',
    },
    'jj8l2wyv': {
      'en': 'Similar Properties',
      'ar': 'خصائص مماثلة',
    },
    't9fheh9p': {
      'en': 'Contact',
      'ar': 'اتصال',
    },
    'ca4xzy07': {
      'en': 'Request a tour',
      'ar': 'طلب جولة',
    },
    'fwbd7e1d': {
      'en': 'Home',
      'ar': 'بيت',
    },
  },
  // AllReviews
  {
    'qt3q811s': {
      'en': 'Reviews',
      'ar': 'المراجعات',
    },
    'tdxzngz7': {
      'en': '4.9',
      'ar': '4.9',
    },
    'foqrog1b': {
      'en': '/',
      'ar': '/',
    },
    'aikj403q': {
      'en': '5',
      'ar': '5',
    },
    'bk8addif': {
      'en': 'Based on 216 Reviews',
      'ar': 'بناءً على 216 تقييمًا',
    },
    '2fs853ny': {
      'en': '5 Star',
      'ar': '5 نجوم',
    },
    'p6udyyct': {
      'en': '4 Star',
      'ar': '4 نجوم',
    },
    'bkqfv7f7': {
      'en': '3 Star',
      'ar': '3 نجوم',
    },
    'z9c7e567': {
      'en': '2 Star',
      'ar': 'نجمتان',
    },
    '2gdazh4k': {
      'en': '1  Star',
      'ar': 'نجمة واحدة',
    },
    '8ym5h6mj': {
      'en': 'Add review',
      'ar': 'أضف مراجعة',
    },
    'vl2kyha6': {
      'en': 'Search in reviews',
      'ar': 'البحث في المراجعات',
    },
    '39ptamz9': {
      'en': 'User reviews',
      'ar': 'مراجعات المستخدمين',
    },
    'tlvb481y': {
      'en': 'Most useful',
      'ar': 'الأكثر فائدة',
    },
    '0d4vhp58': {
      'en': 'Select...',
      'ar': 'يختار...',
    },
    'r1vp6ayp': {
      'en': 'Search...',
      'ar': 'يبحث...',
    },
    'gj011xmx': {
      'en': 'Recent',
      'ar': 'مؤخرًا',
    },
    '4s7syhvg': {
      'en': 'Most useful',
      'ar': 'الأكثر فائدة',
    },
    'rs8on6y0': {
      'en': 'Michael Roberts',
      'ar': 'مايكل روبرتس',
    },
    'os926cl1': {
      'en': '1 day ago',
      'ar': 'منذ يوم واحد',
    },
    '12v64a7f': {
      'en':
          'Best haircut experience I\'ve had in years! The barbers are skilled, friendly, and really take their time to get everything just right',
      'ar':
          'أفضل تجربة قص شعر مررت بها منذ سنوات! الحلاقون ماهرون، ودودون، ويبذلون جهدًا كبيرًا لإنجاز كل شيء على أكمل وجه.',
    },
    'cr5w38mx': {
      'en': 'David Lewis',
      'ar': 'ديفيد لويس',
    },
    'vfwqzsgv': {
      'en': '2 days ago',
      'ar': 'منذ يومين',
    },
    'snsn0fb1': {
      'en':
          'Great atmosphere and excellent service. The wait time was a bit long, but the haircut was worth it!',
      'ar':
          'جو رائع وخدمة ممتازة. كان الانتظار طويلاً بعض الشيء، لكن قص الشعر كان يستحق العناء!',
    },
    'dlolkebb': {
      'en': 'Jessica Martinez',
      'ar': 'جيسيكا مارتينيز',
    },
    'e3wiwpum': {
      'en': '5 days ago',
      'ar': 'منذ 5 أيام',
    },
    '6uy5fcp9': {
      'en':
          'Took my son here for a haircut, and they did an amazing job! The barber was very patient and detailed.',
      'ar':
          'أخذت ابني إلى هنا لقص شعره، وكان عملاً رائعًا! كان الحلاق صبورًا جدًا ومهتمًا بالتفاصيل.',
    },
    'ges3yw87': {
      'en': 'Christopher Thompson',
      'ar': 'كريستوفر تومسون',
    },
    '7a0fw4ew': {
      'en': '10 days ago',
      'ar': 'منذ 10 أيام',
    },
    'wgipopju': {
      'en':
          'Super clean shop with top-tier barbers. Got a fade and beard trim, and I left looking fresh!',
      'ar':
          'محل نظيف جدًا، وحلاقون من الطراز الأول. حلقتُ لحيتي وشعري، وغادرتُ وأنا أشعر بالانتعاش!',
    },
    'k1slnou7': {
      'en': 'Ryan Stewart',
      'ar': 'ريان ستيوارت',
    },
    '9wm1a3yj': {
      'en': '12 days ago',
      'ar': 'منذ 12 يومًا',
    },
    'zq365egz': {
      'en':
          'Solid haircut, fair prices, and a welcoming vibe. Would definitely recommend to friends.',
      'ar':
          'قصة شعر رائعة، وأسعار مناسبة، وأجواء ترحيبية. أنصح به بشدة للأصدقاء.',
    },
    'cxi613h2': {
      'en': 'Home',
      'ar': 'بيت',
    },
  },
  // MapView
  {
    '3h5nlbea': {
      'en': 'area, Devloper, Compounds',
      'ar': 'المنطقة، المطور، المركبات',
    },
    '0cg4ildh': {
      'en': 'Filters',
      'ar': 'المرشحات',
    },
    '368rf2e9': {
      'en': '3 out of 30 results',
      'ar': '3 من أصل 30 نتيجة',
    },
    '9qlvicaw': {
      'en': 'List View',
      'ar': 'عرض القائمة',
    },
    'yjtbqjnf': {
      'en': 'Compounds in Los Angeles',
      'ar': 'المجمعات السكنية في لوس أنجلوس',
    },
    'v06lzlj7': {
      'en': '86 Available Result',
      'ar': '86 نتيجة متاحة',
    },
    '1e8xbyv2': {
      'en': 'Property List',
      'ar': 'قائمة العقارات',
    },
    'u8jmxxac': {
      'en': 'View All',
      'ar': 'عرض الكل',
    },
    '2vwfpvex': {
      'en': 'Home',
      'ar': 'بيت',
    },
  },
  // WriteaReview
  {
    '4ko97uik': {
      'en': '8502 Preston Rd. Inglewood, Maine 98380',
      'ar': '8502 طريق بريستون، إنجلوود، مين 98380',
    },
    'm57xqyto': {
      'en': 'Your overall rating of this product',
      'ar': 'تقييمك العام لهذا المنتج',
    },
    'c2hfh0wy': {
      'en': 'What impressed you?',
      'ar': 'ما الذي أثار إعجابك؟',
    },
    'x22gmoy6': {
      'en': 'Write Your Review',
      'ar': 'اكتب رأيك',
    },
    '7a6d4lhw': {
      'en': 'Add a Comment',
      'ar': 'أضف تعليق',
    },
    'g5c6voeq': {
      'en': 'Add photo',
      'ar': 'أضف صورة',
    },
    'mlo2v83w': {
      'en': 'Submit Review',
      'ar': 'إرسال المراجعة',
    },
    'cj87r9ki': {
      'en': '4.8 (1k+ Reviews)',
      'ar': '4.8 (أكثر من 1000 تقييم)',
    },
    'lu5iqlyl': {
      'en': 'Home',
      'ar': 'بيت',
    },
  },
  // ViewPropertyImage
  {
    'mr5fueqd': {
      'en': 'Home',
      'ar': 'بيت',
    },
  },
  // AudioCall
  {
    'wlx0dxgq': {
      'en': ' ',
      'ar': '',
    },
    'vn9p3b1v': {
      'en': '04:38 minutes',
      'ar': '04:38 دقيقة',
    },
    '40bao3n1': {
      'en': 'Keypad',
      'ar': 'لوحة المفاتيح',
    },
    'fic4ey47': {
      'en': 'Mute',
      'ar': 'صامت',
    },
    'o53s75l6': {
      'en': 'Speaker',
      'ar': 'المتحدث',
    },
    'ttmcko4i': {
      'en': 'More',
      'ar': 'أكثر',
    },
    '3bf1698z': {
      'en': 'Home',
      'ar': 'بيت',
    },
  },
  // VideoCall
  {
    '37odq960': {
      'en': 'Alex Zender',
      'ar': 'أليكس زيندر',
    },
    'qbvr2pqq': {
      'en': '10 : 15 ',
      'ar': '10:15',
    },
    'tddu4g2n': {
      'en': 'Home',
      'ar': 'بيت',
    },
  },
  // ChatView
  {
    'bo3frc6t': {
      'en': 'Online 3 minutes ago',
      'ar': 'متصل منذ 3 دقائق',
    },
    'rt4lv217': {
      'en':
          'Hi! I saw a 2BHK listing in Greenview Residency. Is it still available?',
      'ar':
          'مرحباً! رأيتُ إعلاناً لشقة بغرفتي نوم وصالة في غرينفيو ريزيدنسي. هل لا تزال متاحة؟',
    },
    '8xx3werh': {
      'en': '15:42 PM',
      'ar': '15:42 مساءً',
    },
    'vqyo9ojo': {
      'en':
          'Hello! Yes, the 2BHK in Greenview Residency is still available. Would you like to schedule a visit or get more details?',
      'ar':
          'مرحباً! نعم، شقة بغرفتي نوم وصالة في جرينفيو ريزيدنسي لا تزال متاحة. هل ترغب بحجز موعد أو معرفة المزيد من التفاصيل؟',
    },
    '7bvnkqvj': {
      'en': '15:42 PM',
      'ar': '15:42 مساءً',
    },
    '70cs02k6': {
      'en': 'Yes, please share more details. What’s the total area and price?',
      'ar':
          'نعم، يرجى تزويدنا بمزيد من التفاصيل. ما هي المساحة الإجمالية والسعر؟',
    },
    'nsn0qouy': {
      'en': '15:42 PM',
      'ar': '15:42 مساءً',
    },
    'd70h39ot': {
      'en':
          'Sure! It’s a 2BHK apartment with 1,280 sq.ft. built-up area. The asking price is \$210,000. It comes with covered parking, a balcony, and access to gym & pool.',
      'ar':
          'بالتأكيد! شقة بغرفتي نوم وحمامين، بمساحة بناء ١٢٨٠ قدمًا مربعًا. السعر المطلوب ٢١٠,٠٠٠ دولار أمريكي. تشمل الشقة موقف سيارات مغطى، وشرفة، وإمكانية الوصول إلى صالة الألعاب الرياضية والمسبح.',
    },
    '3ldh6uyh': {
      'en': '15:42 PM',
      'ar': '15:42 مساءً',
    },
    'lwko8j09': {
      'en': 'Sounds good. How old is the property?',
      'ar': 'يبدو جيدًا. كم عمر العقار؟',
    },
    'qs2skc4k': {
      'en': '15:42 PM',
      'ar': '15:42 مساءً',
    },
    'rgyrrkpx': {
      'en':
          'It was constructed in 2019 and is in excellent condition. It’s a corner unit with great natural light.',
      'ar':
          'شُيّد عام ٢٠١٩ وهو في حالة ممتازة. إنه وحدة زاوية تتمتع بإضاءة طبيعية رائعة.',
    },
    'uxphgd7m': {
      'en': '15:42 PM',
      'ar': '15:42 مساءً',
    },
    't7zhl3fm': {
      'en': 'Nice. Is financing available?',
      'ar': 'جميل. هل التمويل متاح؟',
    },
    'mtu01sh2': {
      'en': '15:42 PM',
      'ar': '15:42 مساءً',
    },
    'za3fki9z': {
      'en':
          'Yes, we can assist you with home loan options through multiple banks. Pre-approval can also be arranged if needed.',
      'ar':
          'نعم، يمكننا مساعدتك في الحصول على قرض عقاري من خلال عدة بنوك. كما يمكننا ترتيب الموافقة المسبقة عند الحاجة.',
    },
    '7stle6jy': {
      'en': '15:42 PM',
      'ar': '15:42 مساءً',
    },
    'a3o966wt': {
      'en':
          'Great. I’d like to visit this Saturday around 11 AM. Is that okay?',
      'ar':
          'رائع. أرغب بالزيارة يوم السبت حوالي الساعة ١١ صباحًا. هل هذا مناسب؟',
    },
    '0t8dip3j': {
      'en': '15:42 PM',
      'ar': '15:42 مساءً',
    },
    'wxptt8uf': {
      'en':
          'Saturday at 11 AM is confirmed ✅. I’ll send you the location and contact details shortly.',
      'ar':
          'تم تأكيد الموعد يوم السبت الساعة ١١ صباحًا ✅. سأرسل لك الموقع ومعلومات الاتصال قريبًا.',
    },
    'sg9hso21': {
      'en': '15:42 PM',
      'ar': '15:42 مساءً',
    },
    'm1ygk6j1': {
      'en': 'Thank you! See you then.',
      'ar': 'شكرا لك! إلى اللقاء.',
    },
    'ge4suo37': {
      'en': '15:42 PM',
      'ar': '15:42 مساءً',
    },
    '4vf3k8lb': {
      'en':
          'You\'re welcome! Looking forward to meeting you. Let me know if you have any questions before the visit. 😊',
      'ar':
          'أهلاً وسهلاً بكم! أتطلع لرؤيتكم. أخبروني إذا كانت لديكم أي أسئلة قبل الزيارة. 😊',
    },
    'c87nr2q2': {
      'en': '15:42 PM',
      'ar': '15:42 مساءً',
    },
    'wwede9gh': {
      'en': 'TextField',
      'ar': 'حقل النص',
    },
    'cyfuqo2c': {
      'en': 'Chat',
      'ar': 'محادثة',
    },
  },
  // SearchBookigs
  {
    't38vihod': {
      'en': 'Search Properties',
      'ar': 'البحث عن العقارات',
    },
    'w8n412gd': {
      'en': 'Chat',
      'ar': 'محادثة',
    },
  },
  // ListingDetails
  {
    'aykjqsfn': {
      'en': 'Booking Details',
      'ar': 'تفاصيل الحجز',
    },
    'gho3bjv1': {
      'en': 'Golden Gleam Property',
      'ar': 'جولدن جليم بروبرتي',
    },
    '4liv4lea': {
      'en': 'Developer Price ',
      'ar': 'سعر المطور',
    },
    'zfz743mq': {
      'en': 'History',
      'ar': 'تاريخ',
    },
    'qzukurqu': {
      'en': 'Avarage price by March 2025',
      'ar': 'متوسط السعر بحلول مارس 2025',
    },
    'x7x3gt5e': {
      'en': 'Hello World',
      'ar': 'مرحبا بالعالم',
    },
    'hi3r7wlm': {
      'en': '24,617 021',
      'ar': '24,617 021',
    },
    '3pz5e9yp': {
      'en': 'over 8 years',
      'ar': 'أكثر من 8 سنوات',
    },
    '53nxv1je': {
      'en': '28199%',
      'ar': '28199%',
    },
    'm8z9yvm9': {
      'en': 'vs conntracted price (USD 86,530)',
      'ar': 'مقابل السعر المتعاقد عليه (86,530 دولارًا أمريكيًا)',
    },
    'g6eh0cxi': {
      'en':
          'This price to subjet to change accroding to your unit \nlocation in the compound last update march 2025',
      'ar':
          'هذا السعر قابل للتغيير حسب موقع وحدتك في المجمع. آخر تحديث: مارس ٢٠٢٥',
    },
    'k5a8qnbw': {
      'en': 'Last Compoud Updates',
      'ar': 'آخر تحديثات المجمع',
    },
    'gqk23r5b': {
      'en': 'No  updatte available',
      'ar': 'لا يوجد تحديث متاح',
    },
    'don0917c': {
      'en': 'Sell My Property',
      'ar': 'بيع ممتلكاتي',
    },
    'jpm6ddxt': {
      'en': 'Listing your property has never been easier!',
      'ar': 'لم يكن إدراج ممتلكاتك أسهل من أي وقت مضى!',
    },
    'f32cif8h': {
      'en': 'Sell Now',
      'ar': 'بيع الآن',
    },
    '27yr3c5v': {
      'en': 'Home',
      'ar': 'بيت',
    },
  },
  // MyBookmarks
  {
    'yygnhni5': {
      'en': 'My Bookmarks',
      'ar': 'إشاراتي المرجعية',
    },
    '0llvl6kl': {
      'en': 'All',
      'ar': 'الجميع',
    },
    'oe1wbwwp': {
      'en': 'House',
      'ar': 'منزل',
    },
    'gd2e38dl': {
      'en': 'Appartment',
      'ar': 'شقة',
    },
    'qtddlred': {
      'en': 'Villa',
      'ar': 'فيلا',
    },
    'vhhw0ep0': {
      'en': 'Land/Plote',
      'ar': 'الأرض/قطعة الأرض',
    },
    'mqn65air': {
      'en': 'All',
      'ar': 'الجميع',
    },
    'co3drkqm': {
      'en': 'Home',
      'ar': 'بيت',
    },
  },
  // Notification
  {
    'btj8l9x7': {
      'en': 'Notifications',
      'ar': 'إشعارات',
    },
    'wwxtlkcp': {
      'en': 'Today',
      'ar': 'اليوم',
    },
    'goqhfwcc': {
      'en': 'Mark all as read',
      'ar': 'وضع علامة على الكل كمقروء',
    },
    '0j4fu629': {
      'en': 'Yesterday',
      'ar': 'أمس',
    },
    '8uxsgc57': {
      'en': 'Mark all as read',
      'ar': 'وضع علامة على الكل كمقروء',
    },
    'jj8qr67m': {
      'en': 'All notifications',
      'ar': 'جميع الإشعارات',
    },
    'p42s6jnv': {
      'en': 'Mark all as read',
      'ar': 'وضع علامة على الكل كمقروء',
    },
    'f2gqj0o9': {
      'en': 'Home',
      'ar': 'بيت',
    },
  },
  // Location
  {
    'rxa9lr24': {
      'en': 'Select Location',
      'ar': 'حدد الموقع',
    },
    '4406j5sm': {
      'en': 'Search for Locations...',
      'ar': 'البحث عن المواقع...',
    },
    'ox058ywk': {
      'en': 'Use Current location',
      'ar': 'استخدم الموقع الحالي',
    },
    'r1mzmb73': {
      'en': 'All Locations',
      'ar': 'جميع المواقع',
    },
    'nfqlizuo': {
      'en': 'Home',
      'ar': 'بيت',
    },
  },
  // AllFilters
  {
    'pdozwn8u': {
      'en': 'All Filters',
      'ar': 'جميع المرشحات',
    },
    'nyd50t5m': {
      'en': 'Reset',
      'ar': 'إعادة ضبط',
    },
    'gu7zhmzl': {
      'en': 'Get updates on your search',
      'ar': 'احصل على تحديثات حول بحثك',
    },
    'k4lnzrbp': {
      'en': ' Save Search',
      'ar': 'حفظ البحث',
    },
    'kf8q7gp8': {
      'en': 'Add Area & Developer',
      'ar': 'إضافة منطقة ومطور',
    },
    'w17noeyf': {
      'en': 'I\'m Looking to',
      'ar': 'انا ابحث عن',
    },
    'xw7362wm': {
      'en': 'Residential',
      'ar': 'سكني',
    },
    '4x1092xy': {
      'en': 'Investment',
      'ar': 'استثماري',
    },
    'mpnowszr': {
      'en': 'Commercial',
      'ar': 'تجاري',
    },
    'npx68mgr': {
      'en': 'Apartment',
      'ar': 'شقة',
    },
    'cu3uw3uo': {
      'en': 'Chalet',
      'ar': 'شاليه',
    },
    'wqov8k9q': {
      'en': 'Industrial',
      'ar': 'صناعي',
    },
    'o943cbkj': {
      'en': 'Rating',
      'ar': 'تصنيف',
    },
    '7lnn2iee': {
      'en': 'Property Type',
      'ar': 'نوع العقار',
    },
    'g8lcrqlr': {
      'en': 'House',
      'ar': 'منزل',
    },
    'afufzvme': {
      'en': 'Villa',
      'ar': 'فيلا',
    },
    'e560nf80': {
      'en': 'Apartment',
      'ar': 'شقة',
    },
    'npydgtx7': {
      'en': 'Townhouse',
      'ar': 'تاون هاوس',
    },
    'm9dn7jfg': {
      'en': 'Duplex',
      'ar': 'دوبلكس',
    },
    'fniogb2u': {
      'en': 'Penthouse',
      'ar': 'كنة',
    },
    'jwzmwwrp': {
      'en': 'Chalet',
      'ar': 'شاليه',
    },
    '8s7ody7c': {
      'en': 'Studio',
      'ar': 'الاستوديو',
    },
    'aokqx0om': {
      'en': 'Cabin',
      'ar': 'كابينة',
    },
    'n8sav368': {
      'en': 'Office',
      'ar': 'مكتب',
    },
    'ixp7p9cl': {
      'en': 'Clinic',
      'ar': 'عيادة',
    },
    'wywtszvw': {
      'en': 'Retali',
      'ar': 'ريتالي',
    },
    '9sr7wfrm': {
      'en': 'Number of Rooms',
      'ar': 'عدد الغرف',
    },
    '4ki1y95c': {
      'en': 'Rooms',
      'ar': 'الغرف',
    },
    'dc16sq8u': {
      'en': 'bedrooms',
      'ar': 'غرف النوم',
    },
    'e9de61b2': {
      'en': 'Bathrooms',
      'ar': 'الحمامات',
    },
    'jp08fbot': {
      'en': 'Price Range',
      'ar': 'نطاق السعر',
    },
    '3q86y7tg': {
      'en': 'Minimum',
      'ar': 'الحد الأدنى',
    },
    'j7iousor': {
      'en': 'Any',
      'ar': 'أي',
    },
    '958nmi8g': {
      'en': 'Search...',
      'ar': 'يبحث...',
    },
    'y4ytvfrz': {
      'en': '\$0',
      'ar': '0 دولار',
    },
    's20yaa2b': {
      'en': '\$100',
      'ar': '100 دولار',
    },
    '2urd5e9k': {
      'en': '\$200',
      'ar': '200 دولار',
    },
    '39vok9nk': {
      'en': '\$400',
      'ar': '400 دولار',
    },
    'x78oyseb': {
      'en': '\$600',
      'ar': '600 دولار',
    },
    'qe5p76ur': {
      'en': '\$800',
      'ar': '800 دولار',
    },
    '44djrhlj': {
      'en': '\$1000',
      'ar': '1000 دولار',
    },
    'yjfl2ogr': {
      'en': 'Maximum',
      'ar': 'الحد الأقصى',
    },
    'p4yk81lw': {
      'en': 'Any',
      'ar': 'أي',
    },
    'odn0yp82': {
      'en': 'Search...',
      'ar': 'يبحث...',
    },
    '0mf9kyo4': {
      'en': '\$100',
      'ar': '100 دولار',
    },
    'w041cqrm': {
      'en': '\$200',
      'ar': '200 دولار',
    },
    '2drh2nhv': {
      'en': '\$400',
      'ar': '400 دولار',
    },
    '3vkk1g4f': {
      'en': '\$600',
      'ar': '600 دولار',
    },
    'zzhlurpn': {
      'en': '\$800',
      'ar': '800 دولار',
    },
    'legto2u8': {
      'en': '\$1,000',
      'ar': '1000 دولار',
    },
    '9zp5f6mf': {
      'en': '\$1,200',
      'ar': '1200 دولار',
    },
    '3n14m63j': {
      'en': 'PaymentPlan',
      'ar': 'خطة الدفع',
    },
    'hv1v0o17': {
      'en': 'Down Payment',
      'ar': 'دفعة مبدئية',
    },
    'z750sjtq': {
      'en': 'Monthly Amou',
      'ar': 'الدفعة الشهرية',
    },
    'dj6uah48': {
      'en': 'Installment Years',
      'ar': 'سنوات التقسيط',
    },
    'kqxix86c': {
      'en': 'Unit Area',
      'ar': 'وحدة المساحة',
    },
    'dxgdc6v3': {
      'en': 'Min m',
      'ar': 'مين م',
    },
    'ofg50e9l': {
      'en': '2',
      'ar': '2',
    },
    'dxbj7s7b': {
      'en': '',
      'ar': '',
    },
    'qkcpqbld': {
      'en': '0',
      'ar': '0',
    },
    'wkdkk00t': {
      'en': 'Search...',
      'ar': 'يبحث...',
    },
    'bd1nhqcv': {
      'en': '0',
      'ar': '0',
    },
    '35s1316l': {
      'en': '100',
      'ar': '100',
    },
    'zoefv7bw': {
      'en': '200',
      'ar': '200',
    },
    'fgz8hfvy': {
      'en': '400',
      'ar': '400',
    },
    'dicg2idq': {
      'en': '600',
      'ar': '600',
    },
    't5azgldp': {
      'en': '800',
      'ar': '800',
    },
    'pjs0q5eu': {
      'en': '1000',
      'ar': '1000',
    },
    'j94smrpy': {
      'en': 'Min m',
      'ar': 'مين م',
    },
    'sekddrp1': {
      'en': '2',
      'ar': '2',
    },
    'l7f22wdh': {
      'en': 'No max',
      'ar': 'لا يوجد حد أقصى',
    },
    'ojghjgri': {
      'en': 'Search...',
      'ar': 'يبحث...',
    },
    'ovyvl93z': {
      'en': '100',
      'ar': '100',
    },
    'b5za2r1g': {
      'en': '200',
      'ar': '200',
    },
    '7nfe91y7': {
      'en': '400',
      'ar': '400',
    },
    '7s6kwxf9': {
      'en': '600',
      'ar': '600',
    },
    'tfjkkc4l': {
      'en': '800',
      'ar': '800',
    },
    'rs88ls1i': {
      'en': '1,000',
      'ar': '1000',
    },
    '5426ilw1': {
      'en': '1,200',
      'ar': '1200',
    },
    '77b181y4': {
      'en': 'Finishing ',
      'ar': 'التشطيب',
    },
    'nohgqroe': {
      'en': 'Not Finiched',
      'ar': 'لم يتم الانتهاء منه',
    },
    '9bu0602x': {
      'en': 'Semi-Finished',
      'ar': 'نصف تشطيب',
    },
    '2mpli0zc': {
      'en': 'Finished',
      'ar': 'انتهى',
    },
    't4xhth32': {
      'en': 'Furnished',
      'ar': 'مفروشة',
    },
    'cuikhia1': {
      'en': 'Flexi Finished',
      'ar': 'فليكسى تشطيب',
    },
    'to8xn7km': {
      'en': 'Deivery Date',
      'ar': 'تاريخ التسليم',
    },
    '0d5f8lbb': {
      'en': 'Delivere',
      'ar': 'توصيل',
    },
    'jwem86aq': {
      'en': '2026',
      'ar': '2026',
    },
    'x5ea0ae1': {
      'en': '2027',
      'ar': '2027',
    },
    'qv1niz1u': {
      'en': '2028',
      'ar': '2028',
    },
    'ujaaoyft': {
      'en': '2029',
      'ar': '2029',
    },
    '0clrieex': {
      'en': '2030+',
      'ar': '2030+',
    },
    'opauvexc': {
      'en': 'Sale Type',
      'ar': 'نوع البيع',
    },
    'r50of5ks': {
      'en': 'Resale',
      'ar': 'إعادة البيع',
    },
    'uvbxawuo': {
      'en': 'Developer Sale',
      'ar': 'بيع المطور',
    },
    'du3457ar': {
      'en': 'Amenities',
      'ar': 'وسائل الراحة',
    },
    'g2nlg6s3': {
      'en': 'Garden',
      'ar': 'حديقة',
    },
    'kvd7jpo5': {
      'en': 'Has roof',
      'ar': 'لديه سقف',
    },
    'edbe3hc1': {
      'en': 'Bicycles lanes',
      'ar': 'مسارات الدراجات',
    },
    'pz7stzx9': {
      'en': 'Disablity suppor',
      'ar': 'دعم ذوي الإعاقة',
    },
    'hqhdv9j5': {
      'en': 'Jogging trail',
      'ar': 'مسار الركض',
    },
    'mps623o4': {
      'en': 'Outdoor pools',
      'ar': 'حمامات سباحة خارجية',
    },
    'c6hg36ge': {
      'en': 'Mosqe',
      'ar': 'المسجد',
    },
    'njqqwzwt': {
      'en': 'Spoer clubs',
      'ar': 'نوادي سبور',
    },
    'bsbxc2tk': {
      'en': 'Busines hub',
      'ar': 'مركز الأعمال',
    },
    'f71ik4v3': {
      'en': 'Commercial strip',
      'ar': 'شريط تجاري',
    },
    'xa5weaeu': {
      'en': 'Medical senter',
      'ar': 'مركز طبي',
    },
    '1j8pjde3': {
      'en': 'Schools',
      'ar': 'المدارس',
    },
    'mr2naowh': {
      'en': 'Views',
      'ar': 'المشاهدات',
    },
    'ksy679n8': {
      'en': 'Outstanding view',
      'ar': 'منظر رائع',
    },
    'nev56b34': {
      'en': 'Sea',
      'ar': 'بحر',
    },
    'u3wo7b40': {
      'en': 'Courtyard',
      'ar': 'فناء',
    },
    'gfh8wdkn': {
      'en': 'Mountains',
      'ar': 'الجبال',
    },
    'j4ew9gj5': {
      'en': 'City',
      'ar': 'مدينة',
    },
    '8kg1ffpt': {
      'en': 'Hills',
      'ar': 'التلال',
    },
    'tcarb5p5': {
      'en': 'Garden',
      'ar': 'حديقة',
    },
    't631o0la': {
      'en': 'Forest',
      'ar': 'غابة',
    },
    '6cd10yyt': {
      'en': 'Park',
      'ar': 'حديقة',
    },
    'p2clchok': {
      'en': 'Lake',
      'ar': 'بحيرة',
    },
    'kog71yit': {
      'en': 'Orientation',
      'ar': 'توجيه',
    },
    '31lpo7wn': {
      'en': 'South',
      'ar': 'جنوب',
    },
    'xz76rngn': {
      'en': 'East',
      'ar': 'شرق',
    },
    'eewik4oj': {
      'en': 'North',
      'ar': 'شمال',
    },
    'nbq1ezfm': {
      'en': 'West',
      'ar': 'الغرب',
    },
    '6qw2x2fx': {
      'en': 'See 86 Result',
      'ar': 'انظر 86 نتيجة',
    },
    '4fshvnex': {
      'en': 'Home',
      'ar': 'بيت',
    },
  },
  // Home_02
  {
    'z4mv2biu': {
      'en': 'Location',
      'ar': 'موقع',
    },
    'j167f6ge': {
      'en': 'New York, USA',
      'ar': 'نيويورك، الولايات المتحدة الأمريكية',
    },
    'ndiq1c33': {
      'en': 'Search..',
      'ar': 'يبحث..',
    },
    'lghrkdtf': {
      'en': 'Tranding Properties',
      'ar': 'خصائص التداول',
    },
    'xtiesys8': {
      'en': 'See all',
      'ar': 'انظر الكل',
    },
    'emyyesl5': {
      'en': 'Top Cities',
      'ar': 'أفضل المدن',
    },
    'c2sosvzt': {
      'en': 'See all',
      'ar': 'انظر الكل',
    },
    'sulmyj8v': {
      'en': 'Our recommendation',
      'ar': 'توصيتنا',
    },
    'ldoorgaa': {
      'en': 'See all',
      'ar': 'انظر الكل',
    },
    'tbr82pwm': {
      'en': 'All',
      'ar': 'الجميع',
    },
    '1huqta82': {
      'en': 'House',
      'ar': 'منزل',
    },
    'geksd3s4': {
      'en': 'Villa',
      'ar': 'فيلا',
    },
    'hsk4qnis': {
      'en': 'Appartment',
      'ar': 'شقة',
    },
    'tniuuaph': {
      'en': 'All',
      'ar': 'الجميع',
    },
    'de60eyi5': {
      'en': 'Home',
      'ar': 'بيت',
    },
  },
  // Search
  {
    'fjzi8d70': {
      'en': 'Search',
      'ar': 'يبحث',
    },
    'hciqje00': {
      'en': 'Area, Developer, Compound',
      'ar': 'المنطقة، المطور، المجمع',
    },
    'o6bfte4m': {
      'en': 'World Map',
      'ar': 'خريطة العالم',
    },
    'oh6zcp28': {
      'en': 'Search for your home \non the map!',
      'ar': 'ابحث عن منزلك على الخريطة!',
    },
    'tczrso7c': {
      'en': 'Your recent searches',
      'ar': 'عمليات البحث الأخيرة الخاصة بك',
    },
    'iea3qi1i': {
      'en': 'Your recent searches',
      'ar': 'عمليات البحث الأخيرة الخاصة بك',
    },
    'vgsj8m62': {
      'en': 'More',
      'ar': 'أكثر',
    },
    '80wfvucb': {
      'en': 'Home',
      'ar': 'بيت',
    },
  },
  // ViewAllLocationsBased
  {
    'wamk6jtc': {
      'en': 'Filters',
      'ar': 'المرشحات',
    },
    'vxrew9jo': {
      'en': '1,271 Properties Available',
      'ar': '1,271 عقارًا متاحًا',
    },
    'ucscz6b2': {
      'en': 'Sort by',
      'ar': 'فرز حسب',
    },
    'ekmxderk': {
      'en': 'Bookings',
      'ar': 'الحجوزات',
    },
  },
  // MapView2
  {
    'io91r9zh': {
      'en': 'Map',
      'ar': 'رسم خريطة',
    },
    '55zjhku8': {
      'en': 'Home',
      'ar': 'بيت',
    },
  },
  // FactFeature
  {
    'i84e305g': {
      'en': 'Fact & Feature',
      'ar': 'حقائق وميزات',
    },
    '9m4eektx': {
      'en': 'Bedrooms & bathrooms',
      'ar': 'غرف النوم والحمامات',
    },
    'zugs8a8s': {
      'en': 'Interior area',
      'ar': 'المنطقة الداخلية',
    },
    '7bbhy6je': {
      'en': 'Features',
      'ar': 'سمات',
    },
    'bh7m8xmu': {
      'en': 'Basement',
      'ar': 'الطابق السفلي',
    },
    'pt7g2lrt': {
      'en': 'Cooling',
      'ar': 'تبريد',
    },
    'r3d1smdb': {
      'en': 'Parking',
      'ar': 'موقف السيارات',
    },
    '77ku4sbn': {
      'en': 'Lot',
      'ar': 'كثير',
    },
    '2olf2dv5': {
      'en': 'Type & style',
      'ar': 'النوع والأسلوب',
    },
    'ostrv2iq': {
      'en': 'Condition',
      'ar': 'حالة',
    },
    'k58ih5of': {
      'en': 'Home',
      'ar': 'بيت',
    },
  },
  // ConntactAgent
  {
    'a1dsuk0e': {
      'en': 'Conntact Agent',
      'ar': 'وكيل الاتصال',
    },
    'y175755a': {
      'en': 'Full Name',
      'ar': 'الاسم الكامل',
    },
    'ltrh2f1q': {
      'en': 'Furkan sarkar',
      'ar': 'فوركان ساركار',
    },
    'b18u49lq': {
      'en': 'Email',
      'ar': 'بريد إلكتروني',
    },
    '15fozbl7': {
      'en': 'furkan@appgenz.com',
      'ar': 'furkan@appgenz.com',
    },
    'l04s6u4b': {
      'en': 'Phone Number',
      'ar': 'رقم التليفون',
    },
    'gjcayvhh': {
      'en': '+1 528 995 5567',
      'ar': '+1 528 995 5567',
    },
    'nn2f8hdi': {
      'en': 'Messsage',
      'ar': 'الرسالة',
    },
    'wk23y71s': {
      'en': 'Hello, I am interested in this Property.',
      'ar': 'مرحبًا، أنا مهتم بهذه الخاصية.',
    },
    'xhpn02gj': {
      'en':
          'By clicking \"Send request\", you agree to our terms and conditions and privacy policy.',
      'ar':
          'من خلال النقر على \"إرسال الطلب\"، فإنك توافق على الشروط والأحكام وسياسة الخصوصية الخاصة بنا.',
    },
    'e69wbgy4': {
      'en': 'Continue to Payment',
      'ar': 'متابعة الدفع',
    },
    'lmb841vq': {
      'en': 'Home',
      'ar': 'بيت',
    },
  },
  // RequestaTour
  {
    'nilajgtt': {
      'en': 'Request a tour',
      'ar': 'طلب جولة',
    },
    '6qddvs94': {
      'en':
          'Let us know when you\'re available, and the agent will contact you to arrange a tour.',
      'ar': 'أخبرنا عندما تكون متاحًا، وسيتصل بك الوكيل لترتيب الجولة.',
    },
    '8sy25wqq': {
      'en': 'Select your desired date',
      'ar': 'حدد التاريخ المطلوب',
    },
    '8bw5bhiy': {
      'en': 'Select the timeslots you\'re available',
      'ar': 'حدد الفترات الزمنية المتاحة لك',
    },
    'y1t33e0d': {
      'en': 'Time in El Paso County (GMT-7, 8:38 PM)',
      'ar': 'الوقت في مقاطعة إل باسو (غرينتش-7، 8:38 مساءً)',
    },
    'lcv3e1u7': {
      'en': 'Continue',
      'ar': 'يكمل',
    },
    'yc0281v9': {
      'en': 'Home',
      'ar': 'بيت',
    },
  },
  // RequestaTour_02
  {
    'b6prru4y': {
      'en': 'Conntact Agent',
      'ar': 'وكيل الاتصال',
    },
    'kk054r6b': {
      'en': 'Tour request date time',
      'ar': 'طلب الجولة التاريخ والوقت',
    },
    '8i2d4x0p': {
      'en': 'Wed, Apr 09',
      'ar': 'الأربعاء، 9 أبريل',
    },
    'zcqv5664': {
      'en': 'Anytime',
      'ar': 'في أي وقت',
    },
    '553yffgv': {
      'en': 'Full Name',
      'ar': 'الاسم الكامل',
    },
    'omtkqdrs': {
      'en': 'Furkan sarkar',
      'ar': 'فوركان ساركار',
    },
    'c0p9llux': {
      'en': 'Email',
      'ar': 'بريد إلكتروني',
    },
    'gc09o8s7': {
      'en': 'furkan@appgenz.com',
      'ar': 'furkan@appgenz.com',
    },
    'shss9sgv': {
      'en': 'Phone Number',
      'ar': 'رقم التليفون',
    },
    'mjpz8hlm': {
      'en': '+1 528 995 5567',
      'ar': '+1 528 995 5567',
    },
    '8llckjrw': {
      'en': 'Messsage',
      'ar': 'الرسالة',
    },
    'gqve2ix7': {
      'en': 'Hello, I am interested in this Property.',
      'ar': 'مرحبًا، أنا مهتم بهذه الخاصية.',
    },
    'ir1159bj': {
      'en':
          'By clicking \"Send request\", you agree to our terms and conditions and privacy policy.',
      'ar':
          'من خلال النقر على \"إرسال الطلب\"، فإنك توافق على الشروط والأحكام وسياسة الخصوصية الخاصة بنا.',
    },
    '71yu1gf8': {
      'en': 'Send Request',
      'ar': 'إرسال الطلب',
    },
    'q8z0626p': {
      'en': 'Home',
      'ar': 'بيت',
    },
  },
  // DeveloperPriceHistory
  {
    '3ytzk8g3': {
      'en': 'Dveloper Price History',
      'ar': 'تاريخ أسعار المطور',
    },
    'sznwl4d5': {
      'en': 'March 2025',
      'ar': 'مارس 2025',
    },
    '7gxsgx9n': {
      'en': 'Current Price',
      'ar': 'السعر الحالي',
    },
    'hf35ipr7': {
      'en': 'USD',
      'ar': 'دولار أمريكي',
    },
    '982nwi40': {
      'en': '24,617 021',
      'ar': '24,617 021',
    },
    'a6xg6je4': {
      'en': '28199%',
      'ar': '28199%',
    },
    'br93ewzl': {
      'en': 'vs conntracted price (USD 86,530)',
      'ar': 'مقابل السعر المتعاقد عليه (86,530 دولارًا أمريكيًا)',
    },
    'qeaare7m': {
      'en': 'March 2025',
      'ar': 'مارس 2025',
    },
    'a1yxkrf5': {
      'en': 'Current Price',
      'ar': 'السعر الحالي',
    },
    'ea9168ea': {
      'en': 'USD',
      'ar': 'دولار أمريكي',
    },
    'imwpj4tx': {
      'en': '24,617 021',
      'ar': '24,617 021',
    },
    'j0jbnx2j': {
      'en': '28199%',
      'ar': '28199%',
    },
    'us1wqm5u': {
      'en': 'vs conntracted price (USD 86,530)',
      'ar': 'مقابل السعر المتعاقد عليه (86,530 دولارًا أمريكيًا)',
    },
    'fdydwk1u': {
      'en': 'March 2025',
      'ar': 'مارس 2025',
    },
    'c3w5fyf2': {
      'en': 'Current Price',
      'ar': 'السعر الحالي',
    },
    'ic3fsby1': {
      'en': 'USD',
      'ar': 'دولار أمريكي',
    },
    'x69ggbo9': {
      'en': '24,617 021',
      'ar': '24,617 021',
    },
    'rujxpmzg': {
      'en': '28199%',
      'ar': '28199%',
    },
    'boxfdno0': {
      'en': 'vs conntracted price (USD 86,530)',
      'ar': 'مقابل السعر المتعاقد عليه (86,530 دولارًا أمريكيًا)',
    },
    'kbv5l79j': {
      'en': 'March 2025',
      'ar': 'مارس 2025',
    },
    'nu2w3ul7': {
      'en': 'Current Price',
      'ar': 'السعر الحالي',
    },
    't3fiuup3': {
      'en': 'USD',
      'ar': 'دولار أمريكي',
    },
    'jsrpi3av': {
      'en': '24,617 021',
      'ar': '24,617 021',
    },
    'yxzb2nbb': {
      'en': '28199%',
      'ar': '28199%',
    },
    'wk5mdvc7': {
      'en': 'vs conntracted price (USD 86,530)',
      'ar': 'مقابل السعر المتعاقد عليه (86,530 دولارًا أمريكيًا)',
    },
    'qpdur6w0': {
      'en': 'March 2025',
      'ar': 'مارس 2025',
    },
    'wp1mxejc': {
      'en': 'Current Price',
      'ar': 'السعر الحالي',
    },
    '3759tdkb': {
      'en': 'USD',
      'ar': 'دولار أمريكي',
    },
    '2ja49z9n': {
      'en': '24,617 021',
      'ar': '24,617 021',
    },
    'bwlwsm0q': {
      'en': '28199%',
      'ar': '28199%',
    },
    'sltirx50': {
      'en': 'vs conntracted price (USD 86,530)',
      'ar': 'مقابل السعر المتعاقد عليه (86,530 دولارًا أمريكيًا)',
    },
    'rnwjdaze': {
      'en': 'March 2025',
      'ar': 'مارس 2025',
    },
    'tbp17nr0': {
      'en': 'Current Price',
      'ar': 'السعر الحالي',
    },
    'r5feoacf': {
      'en': 'USD',
      'ar': 'دولار أمريكي',
    },
    'fwyjrqnc': {
      'en': '24,617 021',
      'ar': '24,617 021',
    },
    'we6dqtny': {
      'en': '28199%',
      'ar': '28199%',
    },
    'aptheqm4': {
      'en': 'vs conntracted price (USD 86,530)',
      'ar': 'مقابل السعر المتعاقد عليه (86,530 دولارًا أمريكيًا)',
    },
    'h4s1z9fb': {
      'en': 'Home',
      'ar': 'بيت',
    },
  },
  // AddProperty
  {
    'mrh7jdnl': {
      'en': 'Add Property',
      'ar': 'إضافة عقار',
    },
    '4gzdws9t': {
      'en': '🏠 Basic Information',
      'ar': '🏠 معلومات أساسية',
    },
    'l8hnzmzk': {
      'en': 'Enter general details about the property you\'re listing.',
      'ar': 'أدخل التفاصيل العامة حول العقار الذي تريد إدراجه.',
    },
    'ygmpckct': {
      'en': 'Property Title',
      'ar': 'عنوان الملكية',
    },
    'fcf606ta': {
      'en': 'Add title',
      'ar': 'أضف عنوانًا',
    },
    'v6803hpl': {
      'en': 'Property Type',
      'ar': 'نوع العقار',
    },
    'sex4ms35': {
      'en': 'Choose property type',
      'ar': 'اختر نوع العقار',
    },
    'owif5qvn': {
      'en': 'Search...',
      'ar': 'يبحث...',
    },
    'qapp11lh': {
      'en': 'Apartment',
      'ar': 'شقة',
    },
    'ih08rjkn': {
      'en': 'Villa',
      'ar': 'فيلا',
    },
    'qv45mc2g': {
      'en': 'House',
      'ar': 'منزل',
    },
    'g1fu89ul': {
      'en': 'Plot',
      'ar': 'حبكة',
    },
    'wgfn0orr': {
      'en': 'Commercial',
      'ar': 'تجاري',
    },
    'euza6wku': {
      'en': 'Listing Type',
      'ar': 'نوع القائمة',
    },
    'm96qjp6e': {
      'en': 'BHK Type',
      'ar': 'نوع BHK',
    },
    '7im17utk': {
      'en': 'Choose BHK Type',
      'ar': 'اختر نوع BHK',
    },
    'cog3g1nr': {
      'en': 'Search...',
      'ar': 'يبحث...',
    },
    'k82d39g5': {
      'en': '1 BHK',
      'ar': 'شقة بغرفة نوم واحدة وحمام واحد',
    },
    'qb74sfv9': {
      'en': '2 BHK',
      'ar': '2 غرفة نوم وحمام',
    },
    'wghcrmwe': {
      'en': '3 BHK',
      'ar': '3 غرف نوم وحمام',
    },
    'rkcfi6as': {
      'en': '4 BHK',
      'ar': '4 غرف نوم وحمام',
    },
    'bw5vtd1z': {
      'en': '5 BHK',
      'ar': '5 غرف نوم وحمام',
    },
    'cu66kn9y': {
      'en': '5 BHK +',
      'ar': '5 غرف نوم +',
    },
    'a5g1pmcr': {
      'en': 'Furnishing Status',
      'ar': 'حالة التأثيث',
    },
    'ljns96gs': {
      'en': 'Choose Furnishing Status',
      'ar': 'اختر حالة التأثيث',
    },
    'rpmvq0t4': {
      'en': 'Search...',
      'ar': 'يبحث...',
    },
    'tvhtxplq': {
      'en': 'Fully',
      'ar': 'بالكامل',
    },
    'fu0nvwx5': {
      'en': 'Semi',
      'ar': 'نصف',
    },
    'yndbaobb': {
      'en': 'Unfurnished',
      'ar': 'غير مفروش',
    },
    'jezm1s6g': {
      'en': 'Built-up Area',
      'ar': 'المساحة المبنية',
    },
    'pqhgx3hg': {
      'en': 'Year Built',
      'ar': 'سنة البناء',
    },
    'n7wfk04d': {
      'en': 'Add build year date',
      'ar': 'إضافة تاريخ سنة البناء',
    },
    'y2kp82tx': {
      'en': '🗺️ Location Details',
      'ar': '🗺️ تفاصيل الموقع',
    },
    'tsvhuszh': {
      'en':
          'Specify the exact address and nearby landmarks for easy discovery.',
      'ar': 'حدد العنوان الدقيق والمعالم القريبة لسهولة الاكتشاف.',
    },
    'rdp6ljaj': {
      'en': 'Street Address',
      'ar': 'عنوان الشارع',
    },
    '6jcv3v64': {
      'en': 'Add your property address',
      'ar': 'أضف عنوان الممتلكات الخاصة بك',
    },
    '3c1gahtj': {
      'en': 'Select State',
      'ar': 'اختر الولاية',
    },
    'mr077tre': {
      'en': 'Choose your state',
      'ar': 'اختر ولايتك',
    },
    'qzbneon8': {
      'en': 'Search...',
      'ar': 'يبحث...',
    },
    '6le5tv50': {
      'en': 'California',
      'ar': 'كاليفورنيا',
    },
    'ro6cy7ol': {
      'en': 'Texas',
      'ar': 'تكساس',
    },
    'rppog00o': {
      'en': 'Florida',
      'ar': 'فلوريدا',
    },
    '83s98myf': {
      'en': 'New York',
      'ar': 'نيويورك',
    },
    'haxagran': {
      'en': 'Illinois',
      'ar': 'إلينوي',
    },
    '81k7zj0i': {
      'en': 'Pennsylvania',
      'ar': 'بنسلفانيا',
    },
    'hn3ywuct': {
      'en': 'Ohio',
      'ar': 'أوهايو',
    },
    'ldskktxk': {
      'en': 'Georgia',
      'ar': 'جورجيا',
    },
    'eg0j9h46': {
      'en': 'North Carolina',
      'ar': 'كارولينا الشمالية',
    },
    'gynp6evt': {
      'en': 'Michigan',
      'ar': 'ميشيغان',
    },
    '5jw73x9e': {
      'en': 'New Jersey',
      'ar': 'نيوجيرسي',
    },
    '9zigzj7m': {
      'en': 'Arizona',
      'ar': 'أريزونا',
    },
    'xvumuj9m': {
      'en': 'Washington',
      'ar': 'واشنطن',
    },
    'n8wmisv3': {
      'en': 'Massachusetts',
      'ar': 'ماساتشوستس',
    },
    'kw5soris': {
      'en': 'Virginia',
      'ar': 'فرجينيا',
    },
    'ywaw08k0': {
      'en': 'Select City',
      'ar': 'اختر المدينة',
    },
    'j3b9b8bt': {
      'en': 'Choose your city',
      'ar': 'اختر مدينتك',
    },
    'sl7hqbix': {
      'en': 'Search...',
      'ar': 'يبحث...',
    },
    't574tv2m': {
      'en': 'New York City',
      'ar': 'مدينة نيويورك',
    },
    '319iwvc4': {
      'en': 'Los Angeles',
      'ar': 'لوس أنجلوس',
    },
    'vwtq25i7': {
      'en': 'Chicago',
      'ar': 'شيكاغو',
    },
    'dws28vke': {
      'en': 'Houston',
      'ar': 'هيوستن',
    },
    'ijtml9m7': {
      'en': 'Phoenix',
      'ar': 'فينيكس',
    },
    'ukk9zu44': {
      'en': 'Philadelphia',
      'ar': 'فيلادلفيا',
    },
    'dkn76ma2': {
      'en': 'San Antonio',
      'ar': 'سان أنطونيو',
    },
    '1aaeuwxw': {
      'en': 'San Diego',
      'ar': 'سان دييغو',
    },
    'zv8estxo': {
      'en': 'Dallas',
      'ar': 'دالاس',
    },
    'x5vz1ih9': {
      'en': 'San Jose',
      'ar': 'سان خوسيه',
    },
    'stigt921': {
      'en': 'Austin',
      'ar': 'أوستن',
    },
    't59xkyn1': {
      'en': 'Jacksonville',
      'ar': 'جاكسونفيل',
    },
    'nl0goezu': {
      'en': 'Columbus',
      'ar': 'كولومبوس',
    },
    'usjhfd3s': {
      'en': 'Charlotte',
      'ar': 'شارلوت',
    },
    'qa64bwa1': {
      'en': 'Indianapolis',
      'ar': 'إنديانابوليس',
    },
    '05tvac7c': {
      'en': 'San Francisco',
      'ar': 'سان فرانسيسكو',
    },
    '41rlysnv': {
      'en': 'Seattle',
      'ar': 'سياتل',
    },
    'rphibht1': {
      'en': 'Denver',
      'ar': 'دنفر',
    },
    'jqm1om4z': {
      'en': 'Zip Code / Postal Code',
      'ar': 'الرمز البريدي',
    },
    'ppurnz3e': {
      'en': 'Add your Zip Code / Postal Code',
      'ar': 'أضف الرمز البريدي الخاص بك',
    },
    '3yypf1a6': {
      'en': 'Nearby Landmarks',
      'ar': 'المعالم القريبة',
    },
    'g3ifyqgu': {
      'en': 'Add Nearby Landmarks',
      'ar': 'إضافة المعالم القريبة',
    },
    'h0pflxj1': {
      'en': 'Select area on map',
      'ar': 'حدد المنطقة على الخريطة',
    },
    'p3lldvl0': {
      'en': '💲Pricing Details',
      'ar': '💲تفاصيل التسعير',
    },
    'srtoao6y': {
      'en': 'Add the property\'s price and any other financial details.',
      'ar': 'أضف سعر العقار وأية تفاصيل مالية أخرى.',
    },
    'inldtjbn': {
      'en': 'Property Price',
      'ar': 'سعر العقار',
    },
    'tpcbjrey': {
      'en': '\$/month',
      'ar': 'دولار/شهريًا',
    },
    'zzj2fgqa': {
      'en': 'Security Deposit',
      'ar': 'وديعة الضمان',
    },
    '9k5hnzbu': {
      'en': '\$/month',
      'ar': 'دولار/شهريًا',
    },
    'o59v88ya': {
      'en': 'Negotiable?',
      'ar': 'قابلة للتفاوض؟',
    },
    'ofquqny1': {
      'en': '📝 Describe the property',
      'ar': '📝 وصف العقار',
    },
    'v2dygcxw': {
      'en':
          'Write several sentences describing the upgrades and desirable features that will attract renters to your property.',
      'ar':
          'اكتب عدة جمل تصف الترقيات والميزات المرغوبة التي من شأنها جذب المستأجرين إلى ممتلكاتك.',
    },
    'h7xuvfdu': {
      'en': 'Property description',
      'ar': 'وصف العقار',
    },
    'x7tg170p': {
      'en':
          'Example: Freshly painted home with new appliances and carpeting. Easy\nwalking to public transit and a great neighborhood.cvefef',
      'ar':
          'مثال: منزل مطلي حديثًا بأجهزة جديدة وسجاد. يسهل الوصول إليه سيرًا على الأقدام من المواصلات العامة، ويقع في حي رائع.',
    },
    'i1ckfyct': {
      'en':
          'Example: Freshly painted home with new appliances and carpeting. Modern 3-bed, 2-bath home in a quiet neighborhood. Open-concept living, updated kitchen, large backyard, and 2-car garage. Close to schools, parks, and shopping. Move-in ready!',
      'ar':
          'مثال: منزل مطلي حديثًا بأجهزة وسجاد جديدين. منزل عصري بثلاث غرف نوم وحمامين في حي هادئ. غرفة معيشة مفتوحة، مطبخ مُجدد، حديقة خلفية واسعة، ومرآب يتسع لسيارتين. قريب من المدارس والحدائق ومراكز التسوق. جاهز للسكن!',
    },
    '7byw1e1g': {
      'en': '🖼️ Media Upload',
      'ar': '🖼️ تحميل الوسائط',
    },
    'pnzvz1ac': {
      'en': 'Photos help renters imagine living in your place.',
      'ar': 'تساعد الصور المستأجرين على تخيل العيش في مكانك.',
    },
    '0k21ucky': {
      'en': 'Add photos',
      'ar': 'أضف الصور',
    },
    'ohaox9jh': {
      'en':
          'Renters like to see photos of the room they\'ll be renting. Consider adding photos of the room, in addition to photos of the property\'s shared areas.',
      'ar':
          'يُفضّل المستأجرون مشاهدة صور الغرفة التي سيستأجرونها. فكّروا في إضافة صور للغرفة، بالإضافة إلى صور للمناطق المشتركة في العقار.',
    },
    'whxw7iey': {
      'en': '📇 Personal Info',
      'ar': '📇المعلومات الشخصية',
    },
    'lqf9speb': {
      'en': 'Provide your contact details and specify your role',
      'ar': 'قم بتقديم تفاصيل الاتصال الخاصة بك وحدد دورك',
    },
    'c8ge33zh': {
      'en': 'Your Name',
      'ar': 'اسمك',
    },
    'pxb6kqyd': {
      'en': 'Add your name',
      'ar': 'أضف اسمك',
    },
    'qteo5kxt': {
      'en': 'Contact Number',
      'ar': 'رقم الاتصال',
    },
    'mi6i7tfr': {
      'en': 'Add your number',
      'ar': 'أضف رقمك',
    },
    'twgleyjb': {
      'en': 'Email',
      'ar': 'بريد إلكتروني',
    },
    'rad8vgix': {
      'en': 'Add your email',
      'ar': 'أضف بريدك الإلكتروني',
    },
    'w7f2g8bj': {
      'en': 'Are you an?',
      'ar': 'هل انت ؟',
    },
    'u3v0ipy8': {
      'en': 'Choose who are you',
      'ar': 'اختر من أنت',
    },
    'um30m8og': {
      'en': 'Search...',
      'ar': 'يبحث...',
    },
    'am4h7tyk': {
      'en': 'Agent',
      'ar': 'عامل',
    },
    'rhq2wpwb': {
      'en': 'Owner',
      'ar': 'مالك',
    },
    '3ppuy5wl': {
      'en': '🛌 Let\'s start creating your listing',
      'ar': '🛌 لنبدأ في إنشاء قائمتك',
    },
    'jg2f0db8': {
      'en': 'Add or review detalis about your property\'s size.',
      'ar': 'أضف أو راجع التفاصيل المتعلقة بحجم ممتلكاتك.',
    },
    'eorfbhnv': {
      'en': 'Square footage (sq. ft.)',
      'ar': 'المساحة المربعة (قدم مربع)',
    },
    'izwdvbry': {
      'en': '0',
      'ar': '0',
    },
    'tnog0rq5': {
      'en': 'Rooms',
      'ar': 'الغرف',
    },
    '1vvemque': {
      'en': 'Badrooms',
      'ar': 'غرف الحمام',
    },
    'iet9bgcc': {
      'en': 'Bathooms',
      'ar': 'الحمامات',
    },
    'nim0eg2q': {
      'en': '🧱 Property Features',
      'ar': '🧱 مميزات العقار',
    },
    'e8txjiek': {
      'en':
          'Highlight important features like number of rooms, amenities, and layout.',
      'ar':
          'قم بتسليط الضوء على الميزات المهمة مثل عدد الغرف ووسائل الراحة والتخطيط.',
    },
    'zbzr5xaf': {
      'en': 'Parking',
      'ar': 'موقف السيارات',
    },
    'ist8uskz': {
      'en': 'Outdoor amenities',
      'ar': 'وسائل الراحة الخارجية',
    },
    '7536upv3': {
      'en': 'Outdoor amenities',
      'ar': 'وسائل الراحة الخارجية',
    },
    'wcmu2gzq': {
      'en': 'Orientation',
      'ar': 'توجيه',
    },
    'jz71br6p': {
      'en': 'South',
      'ar': 'جنوب',
    },
    'uvdwt6v5': {
      'en': 'East',
      'ar': 'شرق',
    },
    'td79vlpt': {
      'en': 'North',
      'ar': 'شمال',
    },
    'k7eztldh': {
      'en': 'West',
      'ar': 'الغرب',
    },
    'aazltbxv': {
      'en': 'Amenities',
      'ar': 'وسائل الراحة',
    },
    'qkftmq8t': {
      'en': 'Garden',
      'ar': 'حديقة',
    },
    'tkdo4o9a': {
      'en': 'Has roof',
      'ar': 'لديه سقف',
    },
    'cl5gsy0j': {
      'en': 'Bicycles lanes',
      'ar': 'مسارات الدراجات',
    },
    'yvgj3zav': {
      'en': 'Disablity suppor',
      'ar': 'دعم ذوي الإعاقة',
    },
    'yghrycnj': {
      'en': 'Jogging trail',
      'ar': 'مسار الركض',
    },
    'fn3yug2b': {
      'en': 'Outdoor pools',
      'ar': 'حمامات سباحة خارجية',
    },
    'saz3xtxh': {
      'en': 'Mosqe',
      'ar': 'المسجد',
    },
    'skxsnxhg': {
      'en': 'Spoer clubs',
      'ar': 'نوادي سبور',
    },
    '3agjat2u': {
      'en': 'Busines hub',
      'ar': 'مركز الأعمال',
    },
    '3pk4z92c': {
      'en': 'Commercial strip',
      'ar': 'شريط تجاري',
    },
    '7ggk6xyi': {
      'en': 'Medical senter',
      'ar': 'مركز طبي',
    },
    'ughc6gyj': {
      'en': 'Schools',
      'ar': 'المدارس',
    },
    'z0kyz4x4': {
      'en': 'Other amenities',
      'ar': 'وسائل الراحة الأخرى',
    },
    'ztsa4riy': {
      'en': 'Showcase what\'s included in your home',
      'ar': 'عرض ما هو مدرج في منزلك',
    },
    'kz23asip': {
      'en': 'Sharing more will help renters see themselves in your home.',
      'ar':
          'إن مشاركة المزيد من المعلومات سوف تساعد المستأجرين على رؤية أنفسهم في منزلك.',
    },
    '78g9odji': {
      'en': 'Laundry',
      'ar': 'مغسلة',
    },
    'manyu9lf': {
      'en': 'Cooling',
      'ar': 'تبريد',
    },
    '4j1tszhj': {
      'en': 'Heating',
      'ar': 'التدفئة',
    },
    '45qdpryt': {
      'en': 'Appliances',
      'ar': 'الأجهزة',
    },
    'yrxgeh8t': {
      'en': 'Flooring',
      'ar': 'الأرضيات',
    },
    'idclfgrb': {
      'en': 'When are you available to show the property?',
      'ar': 'متى ستكون متاحًا لإظهار العقار؟',
    },
    'vlu1ha03': {
      'en': 'It is very important that customers can contact you.',
      'ar': 'من المهم جدًا أن يتمكن العملاء من الاتصال بك.',
    },
    '0zvhoo3o': {
      'en': 'Select your availability',
      'ar': 'حدد توافرك',
    },
    'jtwlawv8': {
      'en': 'Back',
      'ar': 'خلف',
    },
    'fte6t9w3': {
      'en': 'Next',
      'ar': 'التالي',
    },
    'xng7c8yb': {
      'en': 'Publish',
      'ar': 'نشر',
    },
    'vgylo7i6': {
      'en': 'Home',
      'ar': 'بيت',
    },
  },
  // PublishedCompleted
  {
    '0binkd7m': {
      'en': 'Your Listing Has Been Submitted!',
      'ar': 'لقد تم تقديم قائمتك!',
    },
    'jmfwslqn': {
      'en':
          'Your Listing is now under review by our team to ensure it meets our guidelines. This process usually takes 24 hours',
      'ar':
          'يقوم فريقنا الآن بمراجعة إعلانك للتأكد من توافقه مع إرشاداتنا. تستغرق هذه العملية عادةً ٢٤ ساعة.',
    },
    'jdwofsr1': {
      'en': 'Submited',
      'ar': 'تم التقديم',
    },
    '0b50gvbi': {
      'en': 'Under Review',
      'ar': 'قيد المراجعة',
    },
    'p8ha5wta': {
      'en': 'Published',
      'ar': 'نُشرت',
    },
    'e8kdt7l2': {
      'en': 'View My Listing',
      'ar': 'عرض قائمتي',
    },
    '9g443m9t': {
      'en': 'Post Another Ad',
      'ar': 'انشر إعلانًا آخر',
    },
    '59b0kw06': {
      'en': 'Home',
      'ar': 'بيت',
    },
  },
  // EditListing
  {
    '07uvscal': {
      'en': 'Add Property',
      'ar': 'إضافة عقار',
    },
    'bp9gi9gw': {
      'en': '🏠 Basic Information',
      'ar': '🏠 معلومات أساسية',
    },
    '0p994gd2': {
      'en': 'Enter general details about the property you\'re listing.',
      'ar': 'أدخل التفاصيل العامة حول العقار الذي تريد إدراجه.',
    },
    'p14nfau5': {
      'en': 'Property Title',
      'ar': 'عنوان الملكية',
    },
    '2pauuskw': {
      'en': 'Add title',
      'ar': 'أضف عنوانًا',
    },
    'mxwjtpkk': {
      'en': 'Riviera Villa',
      'ar': 'فيلا ريفييرا',
    },
    '1w0j9vvt': {
      'en': 'Property Type',
      'ar': 'نوع العقار',
    },
    '3shc3081': {
      'en': 'House',
      'ar': 'منزل',
    },
    'ds692d29': {
      'en': 'Choose property type',
      'ar': 'اختر نوع العقار',
    },
    'exhe0bkp': {
      'en': 'Search...',
      'ar': 'يبحث...',
    },
    'bhheqkz8': {
      'en': 'Apartment',
      'ar': 'شقة',
    },
    '7v0hq3nq': {
      'en': 'Villa',
      'ar': 'فيلا',
    },
    '2w4vmbj6': {
      'en': 'House',
      'ar': 'منزل',
    },
    'lwoa6fag': {
      'en': 'Plot',
      'ar': 'حبكة',
    },
    '6x2idej6': {
      'en': 'Commercial',
      'ar': 'تجاري',
    },
    'be8tv9ki': {
      'en': 'Listing Type',
      'ar': 'نوع القائمة',
    },
    '4usrtn76': {
      'en': 'BHK Type',
      'ar': 'نوع BHK',
    },
    'fd36weh7': {
      'en': '3 BHK',
      'ar': '3 غرف نوم وحمام',
    },
    '1pamrez0': {
      'en': 'Choose BHK Type',
      'ar': 'اختر نوع BHK',
    },
    '998fzwpq': {
      'en': 'Search...',
      'ar': 'يبحث...',
    },
    'mubvgl1a': {
      'en': '1 BHK',
      'ar': 'شقة بغرفة نوم واحدة وحمام واحد',
    },
    'mn6d9v6d': {
      'en': '2 BHK',
      'ar': '2 غرفة نوم وحمام',
    },
    '4xhursxo': {
      'en': '3 BHK',
      'ar': '3 غرف نوم وحمام',
    },
    'xeey32hv': {
      'en': '4 BHK',
      'ar': '4 غرف نوم وحمام',
    },
    'q14wzs1d': {
      'en': '5 BHK',
      'ar': '5 غرف نوم وحمام',
    },
    'wpysb8qy': {
      'en': '5 BHK +',
      'ar': '5 غرف نوم +',
    },
    '3bo3wine': {
      'en': 'Furnishing Status',
      'ar': 'حالة التأثيث',
    },
    'z4p0h7kw': {
      'en': 'Fully',
      'ar': 'بالكامل',
    },
    'eigiwjh1': {
      'en': 'Choose Furnishing Status',
      'ar': 'اختر حالة التأثيث',
    },
    'z61aq0io': {
      'en': 'Search...',
      'ar': 'يبحث...',
    },
    '6vm3dfl4': {
      'en': 'Fully',
      'ar': 'بالكامل',
    },
    'kvigitg7': {
      'en': 'Semi',
      'ar': 'نصف',
    },
    '60eyuxm9': {
      'en': 'Unfurnished',
      'ar': 'غير مفروش',
    },
    'v5ks3quw': {
      'en': 'Built-up Area',
      'ar': 'المساحة المبنية',
    },
    'j5u2oojg': {
      'en': 'Year Built',
      'ar': 'سنة البناء',
    },
    'igpzwbtb': {
      'en': 'Add build year date',
      'ar': 'إضافة تاريخ سنة البناء',
    },
    'hwgninje': {
      'en': '02/06/1983',
      'ar': '02/06/1983',
    },
    'dafgf1ta': {
      'en': '🗺️ Location Details',
      'ar': '🗺️ تفاصيل الموقع',
    },
    'hu50hign': {
      'en':
          'Specify the exact address and nearby landmarks for easy discovery.',
      'ar': 'حدد العنوان الدقيق والمعالم القريبة لسهولة الاكتشاف.',
    },
    'oanji7e6': {
      'en': 'Street Address',
      'ar': 'عنوان الشارع',
    },
    'wjbkan52': {
      'en': 'Add your property address',
      'ar': 'أضف عنوان الممتلكات الخاصة بك',
    },
    '50jkhjb9': {
      'en': 'Beverly Hills, California, USA',
      'ar': 'بيفرلي هيلز، كاليفورنيا، الولايات المتحدة الأمريكية',
    },
    'f81iamcf': {
      'en': 'Select State',
      'ar': 'اختر الولاية',
    },
    'w2ddrvz5': {
      'en': 'New York',
      'ar': 'نيويورك',
    },
    'zctj1a75': {
      'en': 'Choose your state',
      'ar': 'اختر ولايتك',
    },
    '5y5ai58u': {
      'en': 'Search...',
      'ar': 'يبحث...',
    },
    'z5hw3u5p': {
      'en': 'California',
      'ar': 'كاليفورنيا',
    },
    'aaxze63t': {
      'en': 'Texas',
      'ar': 'تكساس',
    },
    '73p0v0b8': {
      'en': 'Florida',
      'ar': 'فلوريدا',
    },
    'j347i7a0': {
      'en': 'New York',
      'ar': 'نيويورك',
    },
    'eb2jug8b': {
      'en': 'Illinois',
      'ar': 'إلينوي',
    },
    'es7w85gx': {
      'en': 'Pennsylvania',
      'ar': 'بنسلفانيا',
    },
    '5si6k2cr': {
      'en': 'Ohio',
      'ar': 'أوهايو',
    },
    'g7spx0oc': {
      'en': 'Georgia',
      'ar': 'جورجيا',
    },
    'jblzsge6': {
      'en': 'North Carolina',
      'ar': 'كارولينا الشمالية',
    },
    're8blgru': {
      'en': 'Michigan',
      'ar': 'ميشيغان',
    },
    'tcffbvwr': {
      'en': 'New Jersey',
      'ar': 'نيوجيرسي',
    },
    'vvq9vnq1': {
      'en': 'Arizona',
      'ar': 'أريزونا',
    },
    'vu98yp5e': {
      'en': 'Washington',
      'ar': 'واشنطن',
    },
    'jweo1li2': {
      'en': 'Massachusetts',
      'ar': 'ماساتشوستس',
    },
    'tvfx0jvn': {
      'en': 'Virginia',
      'ar': 'فرجينيا',
    },
    '5o2xkfpj': {
      'en': 'Select City',
      'ar': 'اختر المدينة',
    },
    'd831xm4t': {
      'en': 'New York City',
      'ar': 'مدينة نيويورك',
    },
    '5y4vh9f2': {
      'en': 'Choose your city',
      'ar': 'اختر مدينتك',
    },
    'i347gs35': {
      'en': 'Search...',
      'ar': 'يبحث...',
    },
    '2lvw4kxu': {
      'en': 'New York City',
      'ar': 'مدينة نيويورك',
    },
    '4r1v3cyi': {
      'en': 'Los Angeles',
      'ar': 'لوس أنجلوس',
    },
    'xcua5ics': {
      'en': 'Chicago',
      'ar': 'شيكاغو',
    },
    'lcfsthe2': {
      'en': 'Houston',
      'ar': 'هيوستن',
    },
    'q3d86wfl': {
      'en': 'Phoenix',
      'ar': 'فينيكس',
    },
    '32q253y9': {
      'en': 'Philadelphia',
      'ar': 'فيلادلفيا',
    },
    'l3sdp9q9': {
      'en': 'San Antonio',
      'ar': 'سان أنطونيو',
    },
    'vcfeobri': {
      'en': 'San Diego',
      'ar': 'سان دييغو',
    },
    'wiz9f6e8': {
      'en': 'Dallas',
      'ar': 'دالاس',
    },
    'idgunqqg': {
      'en': 'San Jose',
      'ar': 'سان خوسيه',
    },
    '92mcnn2o': {
      'en': 'Austin',
      'ar': 'أوستن',
    },
    't1rif9py': {
      'en': 'Jacksonville',
      'ar': 'جاكسونفيل',
    },
    'lundl6d0': {
      'en': 'Columbus',
      'ar': 'كولومبوس',
    },
    '7vhh2biu': {
      'en': 'Charlotte',
      'ar': 'شارلوت',
    },
    'mp7hji4p': {
      'en': 'Indianapolis',
      'ar': 'إنديانابوليس',
    },
    '7gfbokjj': {
      'en': 'San Francisco',
      'ar': 'سان فرانسيسكو',
    },
    'sbcgxlgm': {
      'en': 'Seattle',
      'ar': 'سياتل',
    },
    'c0gxfbfz': {
      'en': 'Denver',
      'ar': 'دنفر',
    },
    '5nmqge6g': {
      'en': 'Zip Code / Postal Code',
      'ar': 'الرمز البريدي',
    },
    'q3yccl6u': {
      'en': '',
      'ar': '',
    },
    '49h8j7zw': {
      'en': 'Add your Zip Code / Postal Code',
      'ar': 'أضف الرمز البريدي الخاص بك',
    },
    '74nw2uw6': {
      'en': '10112',
      'ar': '10112',
    },
    '6ku4h8ie': {
      'en': 'Nearby Landmarks',
      'ar': 'المعالم القريبة',
    },
    '7quo5uab': {
      'en': 'Add Nearby Landmarks',
      'ar': 'إضافة المعالم القريبة',
    },
    'u9p3v3x6': {
      'en': 'Upper East Side',
      'ar': 'الجانب الشرقي العلوي',
    },
    'z0wabyxp': {
      'en': 'Select area on map',
      'ar': 'حدد المنطقة على الخريطة',
    },
    'e47ns120': {
      'en': '💲Pricing Details',
      'ar': '💲تفاصيل التسعير',
    },
    '02n20hfm': {
      'en': 'Add the property\'s price and any other financial details.',
      'ar': 'أضف سعر العقار وأية تفاصيل مالية أخرى.',
    },
    'icxsrqz5': {
      'en': 'Property Price',
      'ar': 'سعر العقار',
    },
    'rsyv8kny': {
      'en': '\$/month',
      'ar': 'دولار/شهريًا',
    },
    'reaqakel': {
      'en': '\$ 800,000',
      'ar': '800,000 دولار',
    },
    '6r23bf2n': {
      'en': 'Security Deposit',
      'ar': 'وديعة الضمان',
    },
    'mdk0g7mn': {
      'en': '\$/month',
      'ar': 'دولار/شهريًا',
    },
    '7scnz9qq': {
      'en': '\$6,000',
      'ar': '6000 دولار',
    },
    'trqlr4kz': {
      'en': 'Negotiable?',
      'ar': 'قابلة للتفاوض؟',
    },
    'n7gso9nu': {
      'en': '📝 Describe the property',
      'ar': '📝 وصف العقار',
    },
    '27gcjq1u': {
      'en':
          'Write several sentences describing the upgrades and desirable features that will attract renters to your property.',
      'ar':
          'اكتب عدة جمل تصف الترقيات والميزات المرغوبة التي من شأنها جذب المستأجرين إلى ممتلكاتك.',
    },
    '1vb9idi8': {
      'en': 'Property description',
      'ar': 'وصف العقار',
    },
    'am0shxfo': {
      'en':
          'Example: Freshly painted home with new appliances and carpeting. Easy\nwalking to public transit and a great neighborhood.cvefef',
      'ar':
          'مثال: منزل مطلي حديثًا بأجهزة جديدة وسجاد. يسهل الوصول إليه سيرًا على الأقدام من المواصلات العامة، ويقع في حي رائع.',
    },
    '307fa74g': {
      'en':
          'Example: Freshly painted home with new appliances and carpeting. Modern 3-bed, 2-bath home in a quiet neighborhood. Open-concept living, updated kitchen, large backyard, and 2-car garage. Close to schools, parks, and shopping. Move-in ready!',
      'ar':
          'مثال: منزل مطلي حديثًا بأجهزة وسجاد جديدين. منزل عصري بثلاث غرف نوم وحمامين في حي هادئ. غرفة معيشة مفتوحة، مطبخ مُجدد، حديقة خلفية واسعة، ومرآب يتسع لسيارتين. قريب من المدارس والحدائق ومراكز التسوق. جاهز للسكن!',
    },
    'b83ncwb4': {
      'en': '🖼️ Media Upload',
      'ar': '🖼️ تحميل الوسائط',
    },
    'rqdfbavt': {
      'en': 'Photos help renters imagine living in your place.',
      'ar': 'تساعد الصور المستأجرين على تخيل العيش في مكانك.',
    },
    '17eljht4': {
      'en': 'Add photos',
      'ar': 'أضف الصور',
    },
    'lxky7er6': {
      'en':
          'Renters like to see photos of the room they\'ll be renting. Consider adding photos of the room, in addition to photos of the property\'s shared areas.',
      'ar':
          'يُفضّل المستأجرون مشاهدة صور الغرفة التي سيستأجرونها. فكّروا في إضافة صور للغرفة، بالإضافة إلى صور للمناطق المشتركة في العقار.',
    },
    'xw34w8pf': {
      'en': '📇 Personal Info',
      'ar': '📇المعلومات الشخصية',
    },
    '7fvmwzwp': {
      'en': 'Provide your contact details and specify your role',
      'ar': 'قم بتقديم تفاصيل الاتصال الخاصة بك وحدد دورك',
    },
    '1e96wgq0': {
      'en': 'Your Name',
      'ar': 'اسمك',
    },
    'kv42jytv': {
      'en': 'Add your name',
      'ar': 'أضف اسمك',
    },
    'ycudt7s5': {
      'en': 'Furkan Sarkar',
      'ar': 'فرقان سركار',
    },
    '0bakqq2h': {
      'en': 'Contact Number',
      'ar': 'رقم الاتصال',
    },
    '0jgxhoil': {
      'en': 'Add your number',
      'ar': 'أضف رقمك',
    },
    'qn0j8275': {
      'en': '+1 5586 8956 12',
      'ar': '+1 5586 8956 12',
    },
    'jb3nzy59': {
      'en': 'Email',
      'ar': 'بريد إلكتروني',
    },
    '0ryg2as3': {
      'en': 'Add your email',
      'ar': 'أضف بريدك الإلكتروني',
    },
    'igzsg966': {
      'en': 'Example@appgenz.com',
      'ar': 'مثال@appgenz.com',
    },
    '31nd5t03': {
      'en': 'Are you an?',
      'ar': 'هل انت ؟',
    },
    '4ta1y291': {
      'en': 'Agent',
      'ar': 'عامل',
    },
    'mqznmhpr': {
      'en': 'Choose who are you',
      'ar': 'اختر من أنت',
    },
    'ho9d250r': {
      'en': 'Search...',
      'ar': 'يبحث...',
    },
    'okivfzlv': {
      'en': 'Agent',
      'ar': 'عامل',
    },
    'e50rubcv': {
      'en': 'Owner',
      'ar': 'مالك',
    },
    'f84dw895': {
      'en': '🛌 Let\'s start creating your listing',
      'ar': '🛌 لنبدأ في إنشاء قائمتك',
    },
    'q37ysbpg': {
      'en': 'Add or review detalis about your property\'s size.',
      'ar': 'أضف أو راجع التفاصيل المتعلقة بحجم ممتلكاتك.',
    },
    'vf0nmo9z': {
      'en': 'Square footage (sq. ft.)',
      'ar': 'المساحة المربعة (قدم مربع)',
    },
    '68w9xw7n': {
      'en': '0',
      'ar': '0',
    },
    't6cmddtk': {
      'en': '2,532',
      'ar': '2,532',
    },
    'c37swalk': {
      'en': 'Rooms',
      'ar': 'الغرف',
    },
    'x08wu5yk': {
      'en': 'Badrooms',
      'ar': 'غرف الحمام',
    },
    'qjx0hzo0': {
      'en': 'Bathooms',
      'ar': 'الحمامات',
    },
    'iwmh8ny3': {
      'en': '🧱 Property Features',
      'ar': '🧱 مميزات العقار',
    },
    '2qy2ml4f': {
      'en':
          'Highlight important features like number of rooms, amenities, and layout.',
      'ar':
          'قم بتسليط الضوء على الميزات المهمة مثل عدد الغرف ووسائل الراحة والتخطيط.',
    },
    '654llko6': {
      'en': 'Parking',
      'ar': 'موقف السيارات',
    },
    'l2y5u9av': {
      'en': 'Outdoor amenities',
      'ar': 'وسائل الراحة الخارجية',
    },
    'ra3hz1r6': {
      'en': 'Outdoor amenities',
      'ar': 'وسائل الراحة الخارجية',
    },
    'zhabz66x': {
      'en': 'Orientation',
      'ar': 'توجيه',
    },
    'xd767j69': {
      'en': 'South',
      'ar': 'جنوب',
    },
    'q2bea7mb': {
      'en': 'East',
      'ar': 'شرق',
    },
    'fo2ys4c6': {
      'en': 'North',
      'ar': 'شمال',
    },
    'zmnt7wyn': {
      'en': 'West',
      'ar': 'الغرب',
    },
    's557f7nd': {
      'en': 'Amenities',
      'ar': 'وسائل الراحة',
    },
    '1u05kbai': {
      'en': 'Garden',
      'ar': 'حديقة',
    },
    '4txrprub': {
      'en': 'Has roof',
      'ar': 'لديه سقف',
    },
    '9lcpkh8n': {
      'en': 'Bicycles lanes',
      'ar': 'مسارات الدراجات',
    },
    'z9ts1o0j': {
      'en': 'Disablity suppor',
      'ar': 'دعم ذوي الإعاقة',
    },
    '2oakhz4u': {
      'en': 'Jogging trail',
      'ar': 'مسار الركض',
    },
    'lpuzk5fv': {
      'en': 'Outdoor pools',
      'ar': 'حمامات سباحة خارجية',
    },
    'ln03pjia': {
      'en': 'Mosqe',
      'ar': 'المسجد',
    },
    'erocf9w3': {
      'en': 'Spoer clubs',
      'ar': 'نوادي سبور',
    },
    '98i5bobu': {
      'en': 'Busines hub',
      'ar': 'مركز الأعمال',
    },
    '8b7fu9kb': {
      'en': 'Commercial strip',
      'ar': 'شريط تجاري',
    },
    'ddpqo5rv': {
      'en': 'Medical senter',
      'ar': 'مركز طبي',
    },
    'l8lfitpv': {
      'en': 'Schools',
      'ar': 'المدارس',
    },
    '3ndasrt0': {
      'en': 'Other amenities',
      'ar': 'وسائل الراحة الأخرى',
    },
    '9n412lrj': {
      'en': 'Showcase what\'s included in your home',
      'ar': 'عرض ما هو مدرج في منزلك',
    },
    'lbqafl6c': {
      'en': 'Sharing more will help renters see themselves in your home.',
      'ar':
          'إن مشاركة المزيد من المعلومات سوف تساعد المستأجرين على رؤية أنفسهم في منزلك.',
    },
    '4hqcfrz7': {
      'en': 'Laundry',
      'ar': 'مغسلة',
    },
    '9o1wcaob': {
      'en': 'Cooling',
      'ar': 'تبريد',
    },
    'ns19ecwi': {
      'en': 'Heating',
      'ar': 'التدفئة',
    },
    'qud1ncxw': {
      'en': 'Appliances',
      'ar': 'الأجهزة',
    },
    '41cbu2ez': {
      'en': 'Flooring',
      'ar': 'الأرضيات',
    },
    'icu1gnc6': {
      'en': 'When are you available to show the property?',
      'ar': 'متى ستكون متاحًا لإظهار العقار؟',
    },
    '2g6setmi': {
      'en': 'It is very important that customers can contact you.',
      'ar': 'من المهم جدًا أن يتمكن العملاء من الاتصال بك.',
    },
    'kuaaxf9t': {
      'en': 'Select your availability',
      'ar': 'حدد توافرك',
    },
    'z6718o48': {
      'en': 'Back',
      'ar': 'خلف',
    },
    '1m2047ir': {
      'en': 'Next',
      'ar': 'التالي',
    },
    'xzmfsny6': {
      'en': 'Publish',
      'ar': 'نشر',
    },
    'km3ucji8': {
      'en': 'Home',
      'ar': 'بيت',
    },
  },
  // AllLocatons
  {
    '5cl32x0u': {
      'en': 'Popular Areas',
      'ar': 'المناطق الشعبية',
    },
    '8lzwq0k4': {
      'en': 'Home',
      'ar': 'بيت',
    },
  },
  // AllDevelopers
  {
    'rvvqx7zf': {
      'en': 'All Developers',
      'ar': 'جميع المطورين',
    },
    '0ukbvd8h': {
      'en': 'Home',
      'ar': 'بيت',
    },
  },
  // DeveloperDetails
  {
    'j43iag3r': {
      'en': 'Developer Details',
      'ar': 'تفاصيل المطور',
    },
    '1r7uivud': {
      'en': 'Offers',
      'ar': 'العروض',
    },
    '45bv28og': {
      'en': 'ZED',
      'ar': 'زيد',
    },
    'gbvnxwg0': {
      'en': '10%',
      'ar': '10%',
    },
    'gj0bk7an': {
      'en': 'Down Payment',
      'ar': 'دفعة مبدئية',
    },
    '5g3jerme': {
      'en': '10 Years',
      'ar': '10 سنوات',
    },
    'a449rlve': {
      'en': 'GET OFFER',
      'ar': 'احصل على العرض',
    },
    't2t5t5e0': {
      'en': 'ZED',
      'ar': 'زيد',
    },
    '2dgr53zn': {
      'en': '5%',
      'ar': '5%',
    },
    'iogpw94t': {
      'en': 'Down Payment',
      'ar': 'دفعة مبدئية',
    },
    'dg3182mm': {
      'en': '10 Years',
      'ar': '10 سنوات',
    },
    '9u2tlwvq': {
      'en': 'GET OFFER',
      'ar': 'احصل على العرض',
    },
    'x2oxru3p': {
      'en': 'ZED',
      'ar': 'زيد',
    },
    'nd0dg1zd': {
      'en': '8%',
      'ar': '8%',
    },
    'zxqwch7r': {
      'en': 'Down Payment',
      'ar': 'دفعة مبدئية',
    },
    '0algh5fs': {
      'en': '10 Years',
      'ar': '10 سنوات',
    },
    'bxzy95ex': {
      'en': 'GET OFFER',
      'ar': 'احصل على العرض',
    },
    'f2hw0ec7': {
      'en': 'ZED',
      'ar': 'زيد',
    },
    'xzii4b56': {
      'en': '12%',
      'ar': '12%',
    },
    'p157uolv': {
      'en': 'Down Payment',
      'ar': 'دفعة مبدئية',
    },
    'oescnske': {
      'en': '10 Years',
      'ar': '10 سنوات',
    },
    'zu8d2uyk': {
      'en': 'GET OFFER',
      'ar': 'احصل على العرض',
    },
    'zbny99ah': {
      'en': 'Available Compounds',
      'ar': 'المركبات المتوفرة',
    },
    '78fi02ce': {
      'en': 'All',
      'ar': 'الجميع',
    },
    'ldhjapa0': {
      'en': 'House',
      'ar': 'منزل',
    },
    'b6w1uaf4': {
      'en': 'Appartment',
      'ar': 'شقة',
    },
    '54v79bo0': {
      'en': 'Villa',
      'ar': 'فيلا',
    },
    'zdfw55fw': {
      'en': 'Land/Plote',
      'ar': 'الأرض/قطعة الأرض',
    },
    'eggj5hlt': {
      'en': 'All',
      'ar': 'الجميع',
    },
    'zkocov56': {
      'en': 'Price Start From 800k USD',
      'ar': 'السعر يبدأ من 800 ألف دولار أمريكي',
    },
    'qikcz4ky': {
      'en': 'Home',
      'ar': 'بيت',
    },
  },
  // AgentProfile
  {
    'bxwji897': {
      'en': 'Trusted Agent',
      'ar': 'وكيل موثوق به',
    },
    '5btju1c0': {
      'en': 'Highly Professional',
      'ar': 'احترافية عالية',
    },
    '45gqrty4': {
      'en': 'Contact',
      'ar': 'اتصال',
    },
    'o39ko67r': {
      'en': 'Clints',
      'ar': 'كلينتس',
    },
    'lo3efrmj': {
      'en': '1000+',
      'ar': 'أكثر من 1000',
    },
    'q1iwpqgo': {
      'en': 'Exprience',
      'ar': 'الخبرة',
    },
    'vi9icdmu': {
      'en': '9 years',
      'ar': '9 سنوات',
    },
    'wpboc0xs': {
      'en': 'Properties',
      'ar': 'ملكيات',
    },
    '3q6g3tjd': {
      'en': '38',
      'ar': '38',
    },
    '064gbmca': {
      'en': 'About me',
      'ar': 'ْعَنِّي',
    },
    'xgqqodh4': {
      'en':
          'I’m Emily Carter, a certified real estate agent with 5+ years of experience in residential sales and rentals. I focus on providing honest advice, smooth transactions, and personalized support. Whether you\'re buying, selling, or renting, I’m here to make your real estate journey simple and successful.',
      'ar':
          'أنا إميلي كارتر، وكيلة عقارات معتمدة بخبرة تزيد عن خمس سنوات في مجال بيع وتأجير العقارات السكنية. أركز على تقديم نصائح صادقة، ومعاملات سلسة، ودعم شخصي. سواء كنت تشتري أو تبيع أو تستأجر، أنا هنا لأجعل رحلتك العقارية سهلة وناجحة.',
    },
    'vyn8d2p2': {
      'en': ' More...',
      'ar': 'أكثر...',
    },
    'sv6ttg89': {
      'en':
          'Welcome to [Shop Name], your go-to destination for premium grooming and hairstyling services. At [Shop Name], we blend classic barbering techniques with modern trends to give you the perfect look. Our team of experienced barbers specializes in precision haircuts, stylish fades, beard grooming, and traditional hot towel shaves.',
      'ar':
          'أهلاً بكم في [اسم المتجر]، وجهتكم المثالية لخدمات العناية الشخصية وتصفيف الشعر الفاخرة. في [اسم المتجر]، نمزج بين تقنيات الحلاقة الكلاسيكية والصيحات الحديثة لنمنحك إطلالة مثالية. فريقنا من الحلاقين ذوي الخبرة متخصص في قصات الشعر الدقيقة، والتلاشي الأنيق، وتشذيب اللحية، والحلاقة التقليدية بالمنشفة الساخنة.',
    },
    'ns046j00': {
      'en': 'Active Properties (38)',
      'ar': 'الخصائص النشطة (38)',
    },
    'rksuyw3k': {
      'en': 'All',
      'ar': 'الجميع',
    },
    '1dku54a4': {
      'en': 'House',
      'ar': 'منزل',
    },
    'xamxgz5e': {
      'en': 'Appartment',
      'ar': 'شقة',
    },
    'wj0do92c': {
      'en': 'Villa',
      'ar': 'فيلا',
    },
    'om01c7pi': {
      'en': 'Land/Plote',
      'ar': 'الأرض/قطعة الأرض',
    },
    't8hvgrw2': {
      'en': 'All',
      'ar': 'الجميع',
    },
    '01tkswsh': {
      'en': 'Price Start From 800k USD',
      'ar': 'السعر يبدأ من 800 ألف دولار أمريكي',
    },
    'l9tf66w7': {
      'en': 'Home',
      'ar': 'بيت',
    },
  },
  // AllAgents
  {
    'cbuhsll4': {
      'en': 'All Agents',
      'ar': 'جميع الوكلاء',
    },
    '6cj529p6': {
      'en': 'Home',
      'ar': 'بيت',
    },
  },
  // Realtors
  {
    '3ljxe5jg': {
      'en': 'Realtors',
      'ar': 'وكلاء العقارات',
    },
    'vqkbquyw': {
      'en': 'Search for Realtors',
      'ar': 'البحث عن وكلاء العقارات',
    },
    'n81s54g1': {
      'en': 'Speciality',
      'ar': 'التخصص',
    },
    'pqvvhpvn': {
      'en': 'Language',
      'ar': 'لغة',
    },
    'nwegn13u': {
      'en': '1,271 Realtors found',
      'ar': 'تم العثور على 1,271 وكيل عقارات',
    },
    '27eka8jp': {
      'en': 'Sort by',
      'ar': 'فرز حسب',
    },
    '1umedth8': {
      'en': 'Bookings',
      'ar': 'الحجوزات',
    },
  },
  // GuidanceDetails
  {
    'dainswg8': {
      'en': 'Real Estate Safety Guide: Smart & Secure Property Dealings',
      'ar': 'دليل سلامة العقارات: تعاملات عقارية ذكية وآمنة',
    },
    'hovwnd4w': {
      'en': 'Apr 08, 2025',
      'ar': '8 أبريل 2025',
    },
    '323podjk': {
      'en': 'Guides',
      'ar': 'أدلة',
    },
    'n59kvulj': {
      'en':
          '1. 🏡 Research the Property Thoroughly\n\nBefore buying or renting a property, always conduct in-depth research:\n\nLegal Status: Ensure the property has a clear title, is free from legal disputes, and has all approvals from local authorities.\n\nProperty Records: Request documentation such as tax receipts, ownership history, and encumbrance certificates.\n\nSurvey the Area: Visit the neighborhood at different times of the day to check on safety, noise, traffic, and amenities like schools, hospitals, and markets.\n\n\n\n2. 👤 Verify the Seller, Agent, or Landlord\n\nNever rely on verbal claims. Always verify the identity and legitimacy of the party you are dealing with.\n\nID Verification: Ask for valid government-issued identification.\n\nOwnership Proof: Ensure the person you\'re speaking with has legal authority to sell or rent the property.\n\nAgent Credentials: If you’re dealing with an agent, confirm their license, registration, and track record.\n\n🚫 Red Flags:\nUnwillingness to provide documents\n\nPressure to make quick decisions\n\nNo physical office or online presence\n\n\n\n3. 📄 Never Skip the Paperwork\n\nEvery real estate transaction—rental or purchase—should be documented and legally binding.\n\nSale Deed or Lease Agreement: These should be clear, registered, and legally vetted.\n\nBuilder Agreements: If buying under construction, review the agreement with a legal advisor.\n\nAdvance or Token Amounts: Always give payment through traceable methods (cheque, bank transfer) and only after paperwork is signed.\n\n\n\n4. 💸 Be Cautious with Payments\n\nScams often happen when money is exchanged without proper checks.\n\nNo Cash Deals: Always insist on bank transfers or payment gateways that offer records.\n\nBreakdown of Charges: Make sure you\'re aware of every cost involved—stamp duty, registration, brokerage, GST, maintenance, etc.\n\nReceipts: Take receipts for every transaction.\n\n\n\n5. 🔐 Visit Before You Commit\n\nAlways physically visit the property before agreeing to buy or rent.\n\nInspect the Condition: Look for leaks, mold, wiring issues, and other damages.\n\nCheck Utilities: Confirm availability and functionality of water, electricity, internet, etc.\n\nAsk Neighbors: Speak to residents nearby to learn more about the property and the owner/agent.\n\n📷 Pro Tip:\nTake pictures during your visit for future reference or to share with legal consultants.\n\n\n6. 🛑 Beware of Online Scams\n\nThe digital world is full of real estate frauds. Stay smart when using online platforms.\n\nFake Listings: Always cross-check property listings with other sources.\n\nNo Advance Without Visit: Never transfer money without meeting in person and seeing the property.\n\nSecure Websites: Use verified apps and websites that offer fraud protection features.\n\n💬 Communicate Smartly:\nAvoid sharing personal ID details on open platforms. Use in-app chat or secure email for communication.\n\n\n7. 🛎️ Check Builder/Developer Credibility\n\nWhen buying a new or under-construction home:\n\nRERA Registration: Check if the project is registered with the Real Estate Regulatory Authority (RERA).\n\nPast Projects: Review the builder\'s past delivery timelines and quality.\n\nConstruction Quality: Ask for structural plans, materials used, and stage-wise completion timelines.\n\n✅ Bonus:\nLook for builders offering post-sale support or warranties for construction.\n\n\n8. 🧾 Understand Your Legal Rights\n\nKnow the legalities so you don’t get cheated:\n\nRight to Information: You have the right to ask for any document related to the property.\n\nRight to Possession: Once the deal is done, you are legally entitled to full possession and access to the property.\n\nRight to Compensation: In case of construction delays or fraud, you can approach RERA or civil courts.\n\n9. 🧰 Safety After Moving In\n\nOnce you\'ve moved into a new home or office:\n\nChange Locks: Replace all exterior locks and install extra security if needed.\n\nFire Safety: Ensure there are fire extinguishers, alarms, and emergency exits.\n\nHome Insurance: Get home insurance to cover theft, fire, or natural disasters.\n\nKnow Your Neighbors: Establish good rapport with neighbors and the society committee.\n\n\n10. 👥 What to Do in Case of Disputes\n\nIf something goes wrong:\n\nStay Calm & Document Everything: Keep written and photographic proof.\n\nReach Out to RERA (India) or a local housing authority for buyer protection.\n\nConsult a Lawyer: Take legal help to resolve matters quickly and safely.\n\n',
      'ar':
          '١. 🏡 ابحث جيدًا عن العقار\n\nقبل شراء أو استئجار أي عقار، احرص دائمًا على إجراء بحث متعمق:\n\nالوضع القانوني: تأكد من أن العقار يحمل سند ملكية واضحًا، وخاليًا من أي نزاعات قانونية، وحاصل على جميع الموافقات من السلطات المحلية.\n\nسجلات العقار: اطلب وثائق مثل إيصالات الضرائب، وسجل الملكية، وشهادات الرهن.\n\nمسح المنطقة: قم بزيارة الحي في أوقات مختلفة من اليوم للتحقق من السلامة، والضوضاء، وحركة المرور، والمرافق مثل المدارس والمستشفيات والأسواق.\n\n٢. 👤 تحقق من البائع أو الوكيل أو المؤجر\n\nلا تعتمد أبدًا على الادعاءات الشفهية. تحقق دائمًا من هوية وشرعية الطرف الذي تتعامل معه.\n\nالتحقق من الهوية: اطلب بطاقة هوية حكومية سارية.\n\nإثبات الملكية: تأكد من أن الشخص الذي تتحدث معه لديه السلطة القانونية لبيع أو تأجير العقار.\n\nمؤهلات الوكيل: إذا كنت تتعامل مع وكيل، فتأكد من ترخيصه وتسجيله وسجله الحافل.\n\n🚫 علامات تحذيرية:\n\nعدم الرغبة في تقديم الوثائق\n\nالضغط لاتخاذ قرارات سريعة\n\nعدم وجود مكتب فعلي أو حضور إلكتروني\n\n3. 📄 لا تتجاهل أبدًا الإجراءات الورقية\n\nيجب توثيق كل معاملة عقارية - سواءً كانت إيجارًا أو شراءً - وأن تكون ملزمة قانونًا.\n\nعقد البيع أو عقد الإيجار: يجب أن يكونا واضحين ومسجلين ومعتمدين قانونيًا.\n\nاتفاقيات البناء: إذا كنت تشتري عقارًا قيد الإنشاء، راجع الاتفاقية مع مستشار قانوني.\n\nالمبالغ المدفوعة مقدمًا أو رمزيًا: احرص دائمًا على الدفع بطرق يمكن تتبعها (شيك، حوالة مصرفية) وفقط بعد توقيع الأوراق.\n\n4. 💸 كن حذرًا عند الدفع\n\nغالبًا ما تحدث عمليات احتيال عند صرف الأموال دون شيكات رسمية.\n\nعدم التعامل نقدًا: أصر دائمًا على التحويلات المصرفية أو بوابات الدفع التي توفر السجلات.\n\nتفاصيل الرسوم: تأكد من أنك على دراية بجميع التكاليف المتضمنة - رسوم الطوابع، والتسجيل، والوساطة، وضريبة السلع والخدمات، والصيانة، إلخ.\n\nالإيصالات: احتفظ بإيصالات لكل معاملة.\n\n٥. 🔐 زيارة قبل الالتزام\n\nاحرص دائمًا على زيارة العقار شخصيًا قبل الموافقة على الشراء أو الاستئجار.\n\nفحص الحالة: ابحث عن أي تسريبات، أو عفن، أو مشاكل في الأسلاك، أو أي أضرار أخرى.\n\nتحقق من المرافق: تأكد من توفر خدمات المياه والكهرباء والإنترنت، إلخ.\n\nاسأل الجيران: تحدث إلى السكان القريبين لمعرفة المزيد عن العقار والمالك/الوكيل.\n\n📷 نصيحة احترافية:\nالتقط صورًا أثناء زيارتك للرجوع إليها مستقبلًا أو لمشاركتها مع المستشارين القانونيين.\n\n٦. 🛑 احذر من عمليات الاحتيال الإلكتروني\n\nالعالم الرقمي مليء بعمليات الاحتيال العقاري. كن حذرًا عند استخدام المنصات الإلكترونية.\n\nالإعلانات المزيفة: تحقق دائمًا من إعلانات العقارات من مصادر أخرى.\n\nلا دفعة مقدمة دون زيارة: لا تُحوّل أموالك أبدًا دون مقابلة شخصية ومعاينة العقار.\n\nمواقع إلكترونية آمنة: استخدم تطبيقات ومواقع إلكترونية مُوثّقة تُوفّر ميزات حماية من الاحتيال.\n\n💬 تواصل بذكاء:\n\nتجنّب مشاركة بيانات الهوية الشخصية على المنصات المفتوحة. استخدم الدردشة داخل التطبيق أو البريد الإلكتروني الآمن للتواصل.\n\n7. 🛎️ تحقق من مصداقية شركة البناء/المطوّر العقاري\n\nعند شراء منزل جديد أو قيد الإنشاء:\n\nتسجيل RERA: تحقق مما إذا كان المشروع مُسجّلًا لدى هيئة تنظيم العقارات (RERA).\n\nالمشاريع السابقة: راجع مواعيد التسليم السابقة لشركة البناء وجودتها.\n\nجودة البناء: اسأل عن المخططات الإنشائية، والمواد المستخدمة، ومواعيد الإنجاز لكل مرحلة.\n\n✅ ميزة إضافية:\nابحث عن شركات بناء تُقدّم دعمًا ما بعد البيع أو ضمانات للبناء.\n\n٨. 🧾 افهم حقوقك القانونية\n\nاعرف الجوانب القانونية لتجنب الاحتيال:\n\nالحق في الحصول على المعلومات: يحق لك طلب أي وثيقة تتعلق بالعقار.\n\nالحق في الحيازة: بمجرد إتمام الصفقة، يحق لك قانونيًا الحيازة الكاملة والوصول إلى العقار.\n\nالحق في التعويض: في حالة تأخير البناء أو الاحتيال، يمكنك اللجوء إلى هيئة التنظيم العقاري أو المحاكم المدنية.\n\n٩. 🧰 السلامة بعد الانتقال\n\nبعد انتقالك إلى منزل أو مكتب جديد:\n\nتغيير الأقفال: استبدل جميع الأقفال الخارجية وركّب أنظمة أمان إضافية إذا لزم الأمر.\n\nالسلامة من الحرائق: تأكد من وجود طفايات حريق وأجهزة إنذار ومخارج طوارئ.\n\nتأمين المنزل: احصل على تأمين منزلي لتغطية السرقة أو الحريق أو الكوارث الطبيعية.\n\nتعرّف على جيرانك: كوّن علاقة جيدة مع الجيران ولجنة الجمعية.\n\n١٠. 👥 ما يجب فعله في حال وجود نزاعات\n\nفي حال حدوث أي مشكلة:\n\nحافظ على هدوئك ووثّق كل شيء: احتفظ بإثباتات مكتوبة ومصورة.\n\nتواصل مع هيئة التنظيم العقاري (الهند) أو هيئة الإسكان المحلية لحماية المشتري.\n\nاستشر محاميًا: اطلب المساعدة القانونية لحل الأمور بسرعة وأمان.',
    },
    'j7rg53p2': {
      'en': 'Home',
      'ar': 'بيت',
    },
  },
  // AddNewCard
  {
    '9xow2obz': {
      'en': 'Add New Card',
      'ar': 'إضافة بطاقة جديدة',
    },
    'fy0dewdm': {
      'en':
          'We accept Credit and Debit Cards from Visa, Mastercard, Rupay, Pluxes, American Express, Maestro, Diners & Discover.',
      'ar':
          'نحن نقبل بطاقات الائتمان والخصم من Visa وMastercard وRupay وPluxes وAmerican Express وMaestro وDiners وDiscover.',
    },
    'y4ovvnk6': {
      'en': 'Name on Card',
      'ar': 'الاسم على البطاقة',
    },
    'jakehift': {
      'en': 'Name on card',
      'ar': 'الاسم على البطاقة',
    },
    'd0r7896c': {
      'en': 'Card Number',
      'ar': 'رقم البطاقة',
    },
    'luly6nhb': {
      'en': 'XXXX XXXX XXXX XXXX',
      'ar': 'XXXX XXXX XXXX XXXX',
    },
    'ye76z8du': {
      'en': 'Valid Thru',
      'ar': 'صالحة حتى',
    },
    'frxzfeo3': {
      'en': 'MM/YY',
      'ar': 'شهر/سنة',
    },
    'qzghacpx': {
      'en': 'CVV',
      'ar': 'رمز التحقق من البطاقة (CVV)',
    },
    'rldyhekj': {
      'en': 'MM/YY',
      'ar': 'شهر/سنة',
    },
    'c7b271nt': {
      'en': 'Save my card details for next time.',
      'ar': 'احفظ تفاصيل بطاقتي للمرة القادمة.',
    },
    'y36j8gtv': {
      'en': 'Phone number',
      'ar': 'رقم التليفون',
    },
    '2gpu2ln8': {
      'en': '',
      'ar': '',
    },
    '70a0hrp2': {
      'en': '0123456789',
      'ar': '0123456789',
    },
    'asrvzano': {
      'en': 'Email address',
      'ar': 'عنوان البريد الإلكتروني',
    },
    'urys8gs3': {
      'en': 'furkan@appgenz.com',
      'ar': 'furkan@appgenz.com',
    },
    'f41j8fdz': {
      'en': 'Save',
      'ar': 'حفظ',
    },
    'nfre78em': {
      'en': 'Home',
      'ar': 'الرئيسة',
    },
  },
  // DashedBtn
  {
    'ibak78nj': {
      'en': 'Add New Address',
      'ar': 'إضافة عنوان جديد',
    },
  },
  // DialCode
  {
    'm6b0b5n4': {
      'en': 'India',
      'ar': 'الهند',
    },
    'e30j2xva': {
      'en': '+46',
      'ar': '+46',
    },
  },
  // RecentViewedCard
  {
    'aewfd5gk': {
      'en': ' ',
      'ar': '',
    },
  },
  // ConfirmAccountDelete
  {
    'zhbf2pe7': {
      'en': 'Deleting your account?',
      'ar': 'حذف حسابك؟',
    },
    '2s8ln8kj': {
      'en':
          'All data associated with this account will be deleted in accordance with our privacy policy. You will not be able to retrieve this information once deleted.',
      'ar':
          'سيتم حذف جميع البيانات المرتبطة بهذا الحساب وفقًا لسياسة الخصوصية لدينا. لن تتمكن من استرجاع هذه المعلومات بعد حذفها.',
    },
    'vkialzr8': {
      'en': 'Cancel',
      'ar': 'يلغي',
    },
    'ew7ezjpf': {
      'en': 'Delete',
      'ar': 'يمسح',
    },
  },
  // VerifyOTP
  {
    '9ryl68hg': {
      'en': 'Verify phone number',
      'ar': 'التحقق من رقم الهاتف',
    },
    '9xu664qv': {
      'en': 'Didn\'t get the OTP? ',
      'ar': 'لم تحصل على OTP؟',
    },
    'k8w88064': {
      'en': 'Resend SMS in 18s',
      'ar': 'إعادة إرسال الرسائل القصيرة في 18 ثانية',
    },
    'f8wp6n8h': {
      'en': 'Submit',
      'ar': 'يُقدِّم',
    },
  },
  // EmptyResult
  {
    'fmyrmoxh': {
      'en': 'No result found',
      'ar': 'لم يتم العثور على أي نتيجة',
    },
    'mftebbde': {
      'en': 'Could not find results for \"',
      'ar': 'لم نتمكن من العثور على نتائج لـ \"',
    },
    'vxy95cek': {
      'en': ' \".  Please try using a different keyword.',
      'ar': '\". الرجاء محاولة استخدام كلمة رئيسية أخرى.',
    },
    'cdsjckzo': {
      'en': 'Search again',
      'ar': 'ابحث مرة أخرى',
    },
  },
  // ProductCard_06
  {
    'y6g7s090': {
      'en': ' ',
      'ar': '',
    },
    'w1t4ypeo': {
      'en': 'x1',
      'ar': 'x1',
    },
  },
  // TicketCard
  {
    'p3c0yenr': {
      'en': 'OPEN',
      'ar': 'يفتح',
    },
  },
  // ReviewSuccess
  {
    '8v27mx31': {
      'en':
          'Thanks for the reviews. This will help us improving our service and product quality.',
      'ar':
          'شكرًا على المراجعات. ستساعدنا هذه المراجعات على تحسين خدماتنا وجودة منتجاتنا.',
    },
    'o32aztho': {
      'en': 'Back to Orders',
      'ar': 'العودة إلى الطلبات',
    },
  },
  // LanguageModal
  {
    'zrdoerkm': {
      'en': 'Choose your language',
      'ar': 'اختر لغتك',
    },
    'n38hthqn': {
      'en': 'Select your preferred language',
      'ar': 'اختر اللغة المفضلة لديك',
    },
    'w4dpstz2': {
      'en': 'Change Language',
      'ar': 'تغيير اللغة',
    },
  },
  // ConfirmLogout_02
  {
    '83hdq32d': {
      'en': 'Confirm Logout',
      'ar': 'تأكيد تسجيل الخروج',
    },
    'dq8pvmft': {
      'en': 'Are you sure you want to log out?',
      'ar': 'هل أنت متأكد أنك تريد تسجيل الخروج؟',
    },
    'owjcz6ps': {
      'en': 'Cancel',
      'ar': 'يلغي',
    },
    'fxnw69ey': {
      'en': 'Logout',
      'ar': 'تسجيل الخروج',
    },
  },
  // ConfirmFeedBackExit
  {
    '2ylzkaih': {
      'en': 'Your progress will be lost',
      'ar': 'سوف يتم فقدان تقدمك',
    },
    'v5upxzyb': {
      'en': 'Your feedback is important to us. Are you sure you want to exit?',
      'ar': 'ملاحظاتك تهمنا. هل أنت متأكد من رغبتك في الخروج؟',
    },
    '3er29rjt': {
      'en': 'Submit review',
      'ar': 'إرسال المراجعة',
    },
    'b44tn8l8': {
      'en': 'Discard & exit',
      'ar': 'التخلص والخروج',
    },
  },
  // ConfirmNotification
  {
    'dcm3o92a': {
      'en': 'Want to stay updated about offers, order status and more?',
      'ar': 'هل تريد أن تبقى مطلعًا على العروض وحالة الطلب والمزيد؟',
    },
    '44twzrnv': {
      'en': 'Yes, enable notifications',
      'ar': 'نعم، تمكين الإشعارات',
    },
    'qi643fae': {
      'en': 'Not now',
      'ar': 'ليس الآن',
    },
  },
  // ConfirmLogout
  {
    'arkahioc': {
      'en': 'Want to logout?',
      'ar': 'هل تريد تسجيل الخروج؟',
    },
    'bvwjdyw5': {
      'en': 'Logout',
      'ar': 'تسجيل الخروج',
    },
    'd18hkbxe': {
      'en': 'Cancel',
      'ar': 'يلغي',
    },
  },
  // AuthAltenatives
  {
    'ce2j74oq': {
      'en': 'Continue with Facebook',
      'ar': 'متابعة مع الفيسبوك',
    },
    'c5gouw19': {
      'en': 'Continue with Email',
      'ar': 'متابعة عبر البريد الإلكتروني',
    },
  },
  // TopupSuccess
  {
    'jwkenrmc': {
      'en': 'Top Up Successful!',
      'ar': 'تمت عملية الشحن بنجاح!',
    },
    '3mqyvlsr': {
      'en': 'Your wallet has been topped up with the specified amount.',
      'ar': 'لقد تم شحن محفظتك بالمبلغ المحدد.',
    },
    '41tta7nb': {
      'en': 'Amount Added',
      'ar': 'المبلغ المضاف',
    },
    'xeju5c4n': {
      'en': '\$500.00',
      'ar': '500.00 دولار',
    },
    '3aagdlfp': {
      'en': 'Done',
      'ar': 'منتهي',
    },
  },
  // EnableLocation
  {
    'ihell79g': {
      'en': 'Enable Location Services',
      'ar': 'تمكين خدمات الموقع',
    },
    'qmmm3rpl': {
      'en':
          'We need your location to show you relevant services and providers in your area.',
      'ar':
          'نحن بحاجة إلى موقعك لإظهار الخدمات ومقدمي الخدمات ذوي الصلة في منطقتك.',
    },
    '8k9pe2ka': {
      'en': 'Enable Location',
      'ar': 'تمكين الموقع',
    },
    '4bp7np7k': {
      'en': 'Not Now',
      'ar': 'ليس الآن',
    },
  },
  // RateUsPrompt
  {
    'bqo50m5r': {
      'en': 'Enjoying the app?',
      'ar': 'هل تستمتع بالتطبيق؟',
    },
    'r57qtry6': {
      'en': 'Your feedback helps us improve and serve you better.',
      'ar': 'تعليقاتك تساعدنا على التحسين وتقديم خدمة أفضل لك.',
    },
    'vp4j1fed': {
      'en': 'Maybe Later',
      'ar': 'ربما في وقت لاحق',
    },
  },
  // AuthenticationSection
  {
    '2jmryitt': {
      'en': 'Authentication',
      'ar': 'المصادقة',
    },
  },
  // ProfileSection
  {
    'y2g4jrfd': {
      'en': 'Profile',
      'ar': 'حساب تعريفي',
    },
  },
  // SupportSection
  {
    'janpch5l': {
      'en': 'Support',
      'ar': 'يدعم',
    },
  },
  // SettingstSection
  {
    'fm4xgp5l': {
      'en': 'Settings',
      'ar': 'إعدادات',
    },
  },
  // AccountSection
  {
    'itezh5dx': {
      'en': 'Account',
      'ar': 'حساب',
    },
  },
  // ChatSection
  {
    '0rvokiy2': {
      'en': 'Orders',
      'ar': 'طلبات',
    },
  },
  // ReviewSection
  {
    'dn059icp': {
      'en': 'Review',
      'ar': 'مراجعة',
    },
  },
  // ScheduleCard
  {
    '5pehytoo': {
      'en': 'Time',
      'ar': 'وقت',
    },
  },
  // LoginProgressModal
  {
    'jj170s7j': {
      'en': 'Logging in ....',
      'ar': 'جاري تسجيل الدخول ....',
    },
  },
  // NumberText
  {
    'd2uoxaec': {
      'en': '  ',
      'ar': '',
    },
    'hpvh5jdl': {
      'en': 'Last Updated: 1.02.35',
      'ar': 'آخر تحديث: 1.02.35',
    },
  },
  // ShareModal
  {
    'z0238ih4': {
      'en': 'Share Response',
      'ar': 'مشاركة الرد',
    },
    'nlei7mk7': {
      'en': 'Recent people',
      'ar': 'الأشخاص الجدد',
    },
    '2e7wjg8z': {
      'en': 'Social media',
      'ar': 'وسائل التواصل الاجتماعي',
    },
  },
  // PropertiesCard
  {
    'q2r2qs4v': {
      'en': 'views',
      'ar': 'المشاهدات',
    },
    'f1vk0ggd': {
      'en': 'Calls',
      'ar': 'المكالمات',
    },
    'qaozqx7l': {
      'en': 'In favorites',
      'ar': 'في المفضلة',
    },
    'cbrv08po': {
      'en': 'Message',
      'ar': 'رسالة',
    },
    'mrzr20je': {
      'en': 'Edit Listing',
      'ar': 'تعديل القائمة',
    },
    'u11cel66': {
      'en': 'View Property',
      'ar': 'عرض العقار',
    },
  },
  // EnableLocation_02
  {
    '8ko7jrxx': {
      'en': 'Enable Location',
      'ar': 'تمكين الموقع',
    },
    'bf6f5jw0': {
      'en':
          'Lorem Ipsum is simply dummy text of the printing and typesetting industry.',
      'ar':
          'Lorem Ipsum هو ببساطة نص شكلي (بلا معنى) يستخدم في صناعة الطباعة والتنضيد.',
    },
    'ql8ivyyh': {
      'en': 'Enable Location',
      'ar': 'تمكين الموقع',
    },
  },
  // ReviewSumited
  {
    'zg66p1d6': {
      'en': 'Thanks for your Feedback',
      'ar': 'شكرا على تعليقاتك',
    },
    'i7jx6gnf': {
      'en':
          'Lorem Ipsum is simply dummy text of the printing and typesetting industry.',
      'ar':
          'Lorem Ipsum هو ببساطة نص شكلي (بلا معنى) يستخدم في صناعة الطباعة والتنضيد.',
    },
    'dqlwul52': {
      'en': 'OK',
      'ar': 'نعم',
    },
  },
  // Filter
  {
    'iatbw62w': {
      'en': 'Filters',
      'ar': 'المرشحات',
    },
    'ovbzwo8u': {
      'en': 'Everyone',
      'ar': 'الجميع',
    },
    'bd0noz2l': {
      'en': 'Male Only',
      'ar': 'للذكور فقط',
    },
    'f93uce1q': {
      'en': 'Female Only',
      'ar': 'للنساء فقط',
    },
    'tp1uh5au': {
      'en': 'Category',
      'ar': 'فئة',
    },
    'x1daeka7': {
      'en': 'All',
      'ar': 'الجميع',
    },
    '4j4co597': {
      'en': 'Haircuts',
      'ar': 'قصات الشعر',
    },
    'tll7a30i': {
      'en': 'Make up',
      'ar': 'ماكياج',
    },
    'mwfhxotb': {
      'en': 'Manicure',
      'ar': 'مانيكير',
    },
    'gfgulv3j': {
      'en': 'Massage',
      'ar': 'تدليك',
    },
    '0uqzqxpt': {
      'en': 'Hair Colors',
      'ar': 'ألوان الشعر',
    },
    'oi0nkm8i': {
      'en': 'Consultaations',
      'ar': 'الاستشارات',
    },
    'kngx8pnq': {
      'en': 'All',
      'ar': 'الجميع',
    },
    'hjs3h9il': {
      'en': 'Ratings',
      'ar': 'التقييمات',
    },
    '7j0483mm': {
      'en': 'All',
      'ar': 'الجميع',
    },
    'lmtot147': {
      'en': '5',
      'ar': '5',
    },
    'z914cr65': {
      'en': '4',
      'ar': '4',
    },
    'qbkvu5fg': {
      'en': '3',
      'ar': '3',
    },
    '6k91kaov': {
      'en': '2',
      'ar': '2',
    },
    'ilw8y8i1': {
      'en': '1',
      'ar': '1',
    },
    'godnr3nn': {
      'en': 'All',
      'ar': 'الجميع',
    },
    'qp47vkvc': {
      'en': 'Distaance',
      'ar': 'المسافة',
    },
    'v058vacg': {
      'en': 'All',
      'ar': 'الجميع',
    },
    '2akdr9yh': {
      'en': '<1 km',
      'ar': 'أقل من 1 كم',
    },
    'kp4qlew2': {
      'en': '1-5 km',
      'ar': '1-5 كم',
    },
    '6pe5jlfu': {
      'en': '5-10 km',
      'ar': '5-10 كم',
    },
    'z9bqe0tj': {
      'en': '>10 km',
      'ar': '>10 كم',
    },
    'xw1hslkh': {
      'en': 'All',
      'ar': 'الجميع',
    },
    'u64k1nqk': {
      'en': 'Maximum Price',
      'ar': 'السعر الأقصى',
    },
    '2afwrfq6': {
      'en': '\$',
      'ar': 'دولار',
    },
    'ai8kavit': {
      'en': 'Clear All',
      'ar': 'مسح الكل',
    },
    'jkaw5w61': {
      'en': 'Apply',
      'ar': 'يتقدم',
    },
  },
  // HomeType
  {
    'xc31oo34': {
      'en': 'Home Type',
      'ar': 'نوع المنزل',
    },
    'm75xmdi5': {
      'en': 'Apply',
      'ar': 'يتقدم',
    },
  },
  // DistanceFilter
  {
    'suqp98v7': {
      'en': 'Availability',
      'ar': 'التوفر',
    },
    '69moek7z': {
      'en': 'Cancel',
      'ar': 'يلغي',
    },
    'lwokc3xf': {
      'en': 'Confitm',
      'ar': 'كونفيتم',
    },
  },
  // PriceFilter
  {
    'rrpsrk6k': {
      'en': 'Price',
      'ar': 'سعر',
    },
    'bol2o009': {
      'en': 'Maximum Price',
      'ar': 'السعر الأقصى',
    },
    'b637a9hs': {
      'en': '\$',
      'ar': 'دولار',
    },
    '79mpgr10': {
      'en': 'Minimum',
      'ar': 'الحد الأدنى',
    },
    'm8utfvti': {
      'en': 'Any',
      'ar': 'أي',
    },
    'bmdkqehb': {
      'en': 'Search...',
      'ar': 'يبحث...',
    },
    'nw0mu29s': {
      'en': '\$0',
      'ar': '0 دولار',
    },
    '3se1fnkh': {
      'en': '\$100',
      'ar': '100 دولار',
    },
    'c5ynv7cd': {
      'en': '\$200',
      'ar': '200 دولار',
    },
    'qocz1vgj': {
      'en': '\$400',
      'ar': '400 دولار',
    },
    '6g4ccex9': {
      'en': '\$600',
      'ar': '600 دولار',
    },
    'pgopwn5s': {
      'en': '\$800',
      'ar': '800 دولار',
    },
    'urz1n4nw': {
      'en': '\$1000',
      'ar': '1000 دولار',
    },
    '4nzhmgmx': {
      'en': 'Maximum',
      'ar': 'الحد الأقصى',
    },
    '5ikgke5x': {
      'en': 'Any',
      'ar': 'أي',
    },
    '1onyqp0a': {
      'en': 'Search...',
      'ar': 'يبحث...',
    },
    'rjetywve': {
      'en': '\$100',
      'ar': '100 دولار',
    },
    'q5nk3m9b': {
      'en': '\$200',
      'ar': '200 دولار',
    },
    '2demle2k': {
      'en': '\$400',
      'ar': '400 دولار',
    },
    'sbwt3qv8': {
      'en': '\$600',
      'ar': '600 دولار',
    },
    'f54sbrdb': {
      'en': '\$800',
      'ar': '800 دولار',
    },
    'vzzbttwv': {
      'en': '\$1,000',
      'ar': '1000 دولار',
    },
    'zvp5y2dy': {
      'en': '\$1,200',
      'ar': '1200 دولار',
    },
    'm35znkck': {
      'en': 'Apply',
      'ar': 'يتقدم',
    },
  },
  // PopularPropertyCard_02
  {
    '14nyz1dd': {
      'en': '5 bad',
      'ar': '',
    },
    'g5hz7f0n': {
      'en': '',
      'ar': '',
    },
  },
  // RecommendationCard
  {
    '6b2ldg8n': {
      'en': 'Price',
      'ar': 'سعر',
    },
  },
  // SearchModal
  {
    '77aaq3qn': {
      'en': 'Recent Search',
      'ar': 'البحث الأخير',
    },
    'gjvmpxty': {
      'en': 'City, zip code,, region or country',
      'ar': 'المدينة، الرمز البريدي، المنطقة أو البلد',
    },
    'jqogcgu2': {
      'en': 'Latest Searches',
      'ar': 'أحدث عمليات البحث',
    },
  },
  // SearchCard
  {
    'p0mysenx': {
      'en': 'Buy',
      'ar': 'يشتري',
    },
    'u89iyxaq': {
      'en': 'Apartment & House',
      'ar': 'شقة ومنزل',
    },
  },
  // AllLocations
  {
    '83yq4k3z': {
      'en': 'Saved locations',
      'ar': 'المواقع المحفوظة',
    },
    'pcxcproc': {
      'en': 'City, zip code,, region or country',
      'ar': 'المدينة، الرمز البريدي، المنطقة أو البلد',
    },
    'emov61eq': {
      'en': 'All Locations',
      'ar': 'جميع المواقع',
    },
  },
  // LocationCard
  {
    's2nisndk': {
      'en': 'zip',
      'ar': 'أَزِيز',
    },
  },
  // MapSearchProperties
  {
    '1lg0ozz6': {
      'en': '0% Down Payment / 0 Years',
      'ar': '0% دفعة أولى / 0 سنوات',
    },
    '9fthbq8j': {
      'en': 'Start Price',
      'ar': 'سعر البداية',
    },
    '3i9nahtl': {
      'en': 'Call Us',
      'ar': 'اتصل بنا',
    },
    '4b8wr3if': {
      'en': 'whatsapp',
      'ar': 'واتساب',
    },
  },
  // RoomsFilter
  {
    '85i6ac8l': {
      'en': 'Number of Rooms',
      'ar': 'عدد الغرف',
    },
    '0ggwunnv': {
      'en': 'Rooms',
      'ar': 'الغرف',
    },
    '4x2vtaob': {
      'en': 'Badrooms',
      'ar': 'غرف الحمام',
    },
    'f465xxpu': {
      'en': 'Bathooms',
      'ar': 'الحمامات',
    },
    'ed199wv1': {
      'en': 'Apply',
      'ar': 'يتقدم',
    },
  },
  // AreaFilter
  {
    'giul6217': {
      'en': 'Area',
      'ar': 'منطقة',
    },
    '85ntx1kb': {
      'en': 'Min m',
      'ar': 'مين م',
    },
    'fc5zrmhj': {
      'en': '2',
      'ar': '2',
    },
    'zoboxdci': {
      'en': '',
      'ar': '',
    },
    'l5mouyza': {
      'en': '0',
      'ar': '0',
    },
    '8xwg3sm7': {
      'en': 'Search...',
      'ar': 'يبحث...',
    },
    'apm9s1d6': {
      'en': '0',
      'ar': '0',
    },
    '45yf4un2': {
      'en': '100',
      'ar': '100',
    },
    'swazvcig': {
      'en': '200',
      'ar': '200',
    },
    '891tqt4h': {
      'en': '400',
      'ar': '400',
    },
    'sangyji6': {
      'en': '600',
      'ar': '600',
    },
    'gujbs937': {
      'en': '800',
      'ar': '800',
    },
    'xkd61t1b': {
      'en': '1000',
      'ar': '1000',
    },
    'mjmjebnj': {
      'en': 'Min m',
      'ar': 'مين م',
    },
    'jdg6d2uv': {
      'en': '2',
      'ar': '2',
    },
    'vipj6ip5': {
      'en': 'No max',
      'ar': 'لا يوجد حد أقصى',
    },
    'm5oczl0h': {
      'en': 'Search...',
      'ar': 'يبحث...',
    },
    'ba21l7yc': {
      'en': '100',
      'ar': '100',
    },
    'v2927j71': {
      'en': '200',
      'ar': '200',
    },
    'bv967dd1': {
      'en': '400',
      'ar': '400',
    },
    'bwfmrvyz': {
      'en': '600',
      'ar': '600',
    },
    'mcydj9h3': {
      'en': '800',
      'ar': '800',
    },
    '8y1eowsu': {
      'en': '1,000',
      'ar': '1000',
    },
    'py0h9sit': {
      'en': '1,200',
      'ar': '1200',
    },
    'qa8yqcjs': {
      'en': 'Apply',
      'ar': 'يتقدم',
    },
  },
  // AreaViewFilter
  {
    '2oevd2tf': {
      'en': 'Area Views',
      'ar': 'مناظر المنطقة',
    },
    'er068qqt': {
      'en': 'Outstanding view',
      'ar': 'منظر رائع',
    },
    'h9d1gsrj': {
      'en': 'Sea',
      'ar': 'بحر',
    },
    'kii6ckm3': {
      'en': 'Courtyard',
      'ar': 'فناء',
    },
    'pta9i783': {
      'en': 'Mountains',
      'ar': 'الجبال',
    },
    'tnczdjcz': {
      'en': 'City',
      'ar': 'مدينة',
    },
    '91in0lom': {
      'en': 'Hills',
      'ar': 'التلال',
    },
    'fkzedvr7': {
      'en': 'Garden',
      'ar': 'حديقة',
    },
    'dzl59c2e': {
      'en': 'Forest',
      'ar': 'غابة',
    },
    '79fd88d2': {
      'en': 'Park',
      'ar': 'حديقة',
    },
    '93cufk7q': {
      'en': 'Lake',
      'ar': 'بحيرة',
    },
    'h8qvonss': {
      'en': 'Apply',
      'ar': 'يتقدم',
    },
  },
  // AmenetiesFilter
  {
    'wblv9tvi': {
      'en': 'Ameneties',
      'ar': 'وسائل الراحة',
    },
    '66fo4i88': {
      'en': 'Garden',
      'ar': 'حديقة',
    },
    'cnju5mek': {
      'en': 'Has roof',
      'ar': 'لديه سقف',
    },
    'ze1jsviv': {
      'en': 'Bicycles lanes',
      'ar': 'مسارات الدراجات',
    },
    'eo0s4ma9': {
      'en': 'Disablity suppor',
      'ar': 'دعم ذوي الإعاقة',
    },
    '0t22s8f2': {
      'en': 'Jogging trail',
      'ar': 'مسار الركض',
    },
    'y62oi64s': {
      'en': 'Outdoor pools',
      'ar': 'حمامات سباحة خارجية',
    },
    'kbxbsujs': {
      'en': 'Mosqe',
      'ar': 'المسجد',
    },
    'fqq496xt': {
      'en': 'Spoer clubs',
      'ar': 'نوادي سبور',
    },
    'm5mgv29y': {
      'en': 'Busines hub',
      'ar': 'مركز الأعمال',
    },
    'uokz694s': {
      'en': 'Commercial strip',
      'ar': 'شريط تجاري',
    },
    'rhasqfk8': {
      'en': 'Medical senter',
      'ar': 'مركز طبي',
    },
    'zdleeao4': {
      'en': 'Schools',
      'ar': 'المدارس',
    },
    '1xj8g124': {
      'en': 'Apply',
      'ar': 'يتقدم',
    },
  },
  // OrientationFilter
  {
    'cdhnirtl': {
      'en': 'Ameneties',
      'ar': 'وسائل الراحة',
    },
    '3c9jlb09': {
      'en': 'South',
      'ar': 'جنوب',
    },
    '4pmlf7ex': {
      'en': 'East',
      'ar': 'شرق',
    },
    'tq0rbbjc': {
      'en': 'North',
      'ar': 'شمال',
    },
    '0bd6ja18': {
      'en': 'West',
      'ar': 'الغرب',
    },
    'gj1g3ede': {
      'en': 'Apply',
      'ar': 'يتقدم',
    },
  },
  // ChartCard
  {
    'c4j50yc4': {
      'en': 'Yonker',
      'ar': 'يونكر',
    },
    'gkgfpy0p': {
      'en': 'Last 1 Year',
      'ar': 'السنة الماضية',
    },
    'b1jcw73s': {
      'en': '\$6K',
      'ar': '6 آلاف دولار',
    },
    '691fk2ss': {
      'en': '\$5K',
      'ar': '5 آلاف دولار',
    },
    'm6vv5xyj': {
      'en': '\$4K',
      'ar': '4 آلاف دولار',
    },
    '6gfash65': {
      'en': '\$3K',
      'ar': '3 آلاف دولار',
    },
    'gvucimog': {
      'en': '\$2K',
      'ar': '2 ألف دولار',
    },
    'mxdg9epu': {
      'en': '\$1K',
      'ar': '1000 دولار',
    },
    'bi7uc6jm': {
      'en': 'Jan',
      'ar': 'يناير',
    },
    '6o8lm80s': {
      'en': 'Feb',
      'ar': 'فبراير',
    },
    'kls8eu3s': {
      'en': 'Mar',
      'ar': 'مارس',
    },
    '7gau3gr8': {
      'en': 'Apr',
      'ar': 'أبريل',
    },
    '7en9hgo3': {
      'en': 'May',
      'ar': 'يمكن',
    },
    'a9vlvjca': {
      'en': 'Jun',
      'ar': 'يونيو',
    },
    '68p3z2nc': {
      'en': 'Jul',
      'ar': 'يوليو',
    },
  },
  // SimilarProperties
  {
    'agg9usgw': {
      'en': '0% Down Payment / 0 Years',
      'ar': '0% دفعة أولى / 0 سنوات',
    },
    'x603exyn': {
      'en': 'Start Price',
      'ar': 'سعر البداية',
    },
    'g340pl1c': {
      'en': 'Call Us',
      'ar': 'اتصل بنا',
    },
  },
  // PropertiesDetailsModal
  {
    'sdffpg0o': {
      'en': 'Add to Favourites',
      'ar': 'أضف إلى المفضلة',
    },
    'jq4zr35u': {
      'en': 'Share',
      'ar': 'يشارك',
    },
    '4ociwljd': {
      'en': 'Hide',
      'ar': 'يخفي',
    },
    'pswhkbay': {
      'en': 'Report',
      'ar': 'تقرير',
    },
    '1rdr6oh0': {
      'en': 'Cancel',
      'ar': 'يلغي',
    },
  },
  // PriceBreakdownModal
  {
    'o3sjrgd7': {
      'en': 'Listing Price',
      'ar': 'سعر القائمة',
    },
    'jarg1k5k': {
      'en': '880,000',
      'ar': '880,000',
    },
    'o8wrf6wq': {
      'en': 'USD',
      'ar': 'دولار أمريكي',
    },
    'ycs52jdv': {
      'en': '30% off',
      'ar': 'خصم 30%',
    },
    'f4vk89o6': {
      'en': 'Max Price:  1.1M USD',
      'ar': 'السعر الأقصى: 1.1 مليون دولار أمريكي',
    },
    'cuhte79l': {
      'en': 'Property Cost:',
      'ar': 'تكلفة العقار:',
    },
    '1iknvphs': {
      'en': 'Base Home Price:',
      'ar': 'سعر المنزل الأساسي:',
    },
    'q758s6ur': {
      'en': '\$325,000',
      'ar': '325,000 دولار',
    },
    'avc2c6e1': {
      'en': 'Premium Lot Charges:',
      'ar': 'رسوم القطعة المميزة:',
    },
    'aj1a84lt': {
      'en': '\$8,000',
      'ar': '8000 دولار',
    },
    '3sbmd3zk': {
      'en': 'Home Upgrades',
      'ar': 'ترقيات المنزل',
    },
    'oedvu8ww': {
      'en': '\$10,000',
      'ar': '10,000 دولار',
    },
    'evhoo3pb': {
      'en': 'Garage / Parking Add-on:',
      'ar': 'جراج / موقف سيارات إضافي:',
    },
    'zn847p4r': {
      'en': '\$5,000',
      'ar': '5000 دولار',
    },
    '8bv5sfs0': {
      'en': 'HOA Initiation Fee:',
      'ar': 'رسوم تأسيس جمعية أصحاب العقارات:',
    },
    '7w2mlz11': {
      'en': '\$500',
      'ar': '500 دولار',
    },
    'c2cm11kr': {
      'en': 'Additional Charges:',
      'ar': 'رسوم إضافية:',
    },
    'nqyswq95': {
      'en': 'Title & Escrow Fees: ',
      'ar': 'رسوم الملكية والضمان:',
    },
    'asjqkavs': {
      'en': '\$1,500',
      'ar': '1500 دولار',
    },
    '96touzhz': {
      'en': 'Property Taxes',
      'ar': 'ضرائب العقارات',
    },
    'od3adhd5': {
      'en': '\$4,200',
      'ar': '4200 دولار',
    },
    'isy4f9ho': {
      'en': 'Home Insurance ',
      'ar': 'تأمين المنزل',
    },
    '771krxx2': {
      'en': '\$1,200',
      'ar': '1200 دولار',
    },
    'yv39pzu6': {
      'en': 'Closing Costs',
      'ar': 'تكاليف الإغلاق',
    },
    'yx60mhtu': {
      'en': '\$4,500',
      'ar': '4500 دولار',
    },
    'glep7ru2': {
      'en': 'Total Estimated Price:',
      'ar': 'السعر الإجمالي المقدر:',
    },
    '3yfghwl7': {
      'en': '\$359,900',
      'ar': '359,900 دولارًا',
    },
    '0u4zjpr2': {
      'en': 'OK',
      'ar': 'نعم',
    },
    'ulb9sqp6': {
      'en': 'Price Breakdown',
      'ar': 'تفاصيل الأسعار',
    },
  },
  // OfferPriceCard
  {
    'nijvanov': {
      'en': 'Succesfully sent!',
      'ar': 'تم الإرسال بنجاح!',
    },
    '3kuaa240': {
      'en': 'Your price offer has been \nsuccessfully submited',
      'ar': 'تم تقديم عرض السعر الخاص بك بنجاح',
    },
    'h6vbzkol': {
      'en': 'OK',
      'ar': 'نعم',
    },
  },
  // ViewAllAboutProperties
  {
    '65tmm2h4': {
      'en': '🏡 About This Property',
      'ar': '🏡 حول هذا العقار',
    },
    'ih1drxfj': {
      'en':
          'Welcome to your dream home! This beautifully designed 3 BHK apartment is located in one of the most desirable neighborhoods, offering a perfect blend of modern architecture, comfort, and convenience. Spread across 1,750 sq.ft, the property features spacious bedrooms with ample natural light, a large living room perfect for entertaining, and a fully modular kitchen equipped with premium fittings and storage space. The master bedroom comes with an attached bathroom and walk-in closet.\n\nStep out onto the private balcony and enjoy serene views of the landscaped garden and city skyline. The home is thoughtfully designed with contemporary interiors, marble flooring, and energy-efficient lighting. Whether you\'re a growing family or a couple looking for a comfortable and stylish space, this home fits all lifestyles.\n\nLocated just minutes from top-rated schools, hospitals, shopping malls, and metro connectivity, this property ensures everything you need is within reach. Additional amenities include a swimming pool, gym, children\'s play area, 24/7 security, and dedicated parking. Situated in a gated community with excellent neighbors, it\'s not just a house—it\'s a lifestyle upgrade.\n\nDon\'t miss this opportunity to own a piece of premium real estate. Schedule your visit today!',
      'ar':
          'أهلاً بكم في منزل أحلامكم! تقع هذه الشقة الرائعة المكونة من ثلاث غرف نوم في أحد أرقى الأحياء، وتتميز بمزيج مثالي من الهندسة المعمارية العصرية والراحة والرفاهية. تمتد الشقة على مساحة 1750 قدماً مربعاً، وتتميز بغرف نوم واسعة بإضاءة طبيعية غامرة، وغرفة معيشة واسعة مثالية للضيافة، ومطبخ مجهز بالكامل بتجهيزات فاخرة ومساحة تخزين. تحتوي غرفة النوم الرئيسية على حمام ملحق وخزانة ملابس واسعة.\n\nاخرج إلى الشرفة الخاصة واستمتع بإطلالات هادئة على الحديقة المنسقة وأفق المدينة. صُمم المنزل بعناية فائقة مع ديكورات داخلية عصرية وأرضيات رخامية وإضاءة موفرة للطاقة. سواء كنتم عائلة متنامية أو زوجين تبحثون عن مساحة مريحة وأنيقة، فإن هذا المنزل يناسب جميع أنماط الحياة.\n\nيقع هذا العقار على بُعد دقائق فقط من أفضل المدارس والمستشفيات ومراكز التسوق وشبكة المترو، مما يضمن لك سهولة الوصول إلى كل ما تحتاجه. تشمل المرافق الإضافية مسبحاً وصالة ألعاب رياضية ومنطقة لعب للأطفال وأمناً على مدار الساعة ومواقف سيارات مخصصة. يقع في مجمع سكني مسوّر مع جيران ممتازين، إنه ليس مجرد منزل، بل هو نقلة نوعية في نمط الحياة.\n\nلا تفوت هذه الفرصة لامتلاك عقار فاخر. احجز زيارتك اليوم!',
    },
    'baqg1q59': {
      'en': 'View Phone',
      'ar': 'عرض الهاتف',
    },
    'tk6078fo': {
      'en': 'Contact Developer',
      'ar': 'اتصل بالمطور',
    },
    'uhfcd4tn': {
      'en': 'by Unique Dreame Builders',
      'ar': 'من قبل بناة الأحلام الفريدة',
    },
    '1j01pp44': {
      'en': '880,000  USD',
      'ar': '880,000 دولار أمريكي',
    },
  },
  // ContractionDetailsModal
  {
    '5imjbckf': {
      'en': 'Construction details',
      'ar': 'تفاصيل البناء',
    },
    '5roxm5yv': {
      'en': 'Flore & Counter',
      'ar': 'فلور آند كاونتر',
    },
    '2g3gkckf': {
      'en': 'Living or dining',
      'ar': 'المعيشة أو تناول الطعام',
    },
    'cl5p7knd': {
      'en': 'Vitrified tiels',
      'ar': 'تيلز زجاجية',
    },
    '6qaph8ya': {
      'en': 'Master bedroom',
      'ar': 'غرفة النوم الرئيسية',
    },
    '95icbno2': {
      'en': 'Wooden Flooring',
      'ar': 'الأرضيات الخشبية',
    },
    'zl58pibr': {
      'en': 'Other bedroom',
      'ar': 'غرفة نوم أخرى',
    },
    'ib5zb7gn': {
      'en': 'Vitrified tiles',
      'ar': 'البلاط المزجج',
    },
    'tv76w4rw': {
      'en': 'Kitchin',
      'ar': 'كيتشن',
    },
    'gvada8cb': {
      'en': 'Vitrified Tiles',
      'ar': 'البلاط المزجج',
    },
    '9ow9mh4y': {
      'en': 'Tsilets',
      'ar': 'تسيليتس',
    },
    'x39tcmgc': {
      'en': 'Anti Skid Ceramic Tiles',
      'ar': 'بلاط سيراميك مضاد للانزلاق',
    },
    'hg4v9hu4': {
      'en': 'Balcony',
      'ar': 'شرفة',
    },
    'eado87j4': {
      'en': 'Anti skid ceramic tiles',
      'ar': 'بلاط سيراميك مضاد للانزلاق',
    },
    '38vu0s8l': {
      'en': 'Walls',
      'ar': 'الجدران',
    },
    '1x49v5f6': {
      'en': 'Interior',
      'ar': 'الداخلية',
    },
    '0ww57kc3': {
      'en': 'Plastic Paint',
      'ar': 'طلاء بلاستيكي',
    },
    '6qlk0iho': {
      'en': 'Kitchen',
      'ar': 'مطبخ',
    },
    'h8gesq8v': {
      'en': 'Ceramic Tiles Dado Working Platform',
      'ar': 'منصة عمل بلاط السيراميك دادو',
    },
    'jxmkpffn': {
      'en': 'Toilets',
      'ar': 'مراحيض',
    },
    'z86os9zu': {
      'en': 'Ceramic Tiles Dado up to Lintel Level',
      'ar': 'بلاط سيراميك دادو حتى مستوى العتب',
    },
    '9o66tr2i': {
      'en': 'Flore & Counter',
      'ar': 'فلور آند كاونتر',
    },
    'zh5vk2nz': {
      'en': 'Toilets',
      'ar': 'مراحيض',
    },
    'os903u02': {
      'en': 'GI/CPVC/PPR Pipes',
      'ar': 'أنابيب GI/CPVC/PPR',
    },
    'plfq36xg': {
      'en': 'Kitchen',
      'ar': 'مطبخ',
    },
    'l4536xi4': {
      'en': 'Stainless Steel Sink',
      'ar': 'حوض من الفولاذ المقاوم للصدأ',
    },
    'nbpfh5ny': {
      'en': 'Doors',
      'ar': 'الأبواب',
    },
    'p1ss5ure': {
      'en': 'Elegant Door',
      'ar': 'باب أنيق',
    },
    'w4idc3yn': {
      'en': 'Windows',
      'ar': 'ويندوز',
    },
    'ihkkw8xk': {
      'en': 'UPVC windows',
      'ar': 'نوافذ UPVC',
    },
    'bu8wx1i1': {
      'en': 'OK',
      'ar': 'نعم',
    },
  },
  // AllAmenities
  {
    '1pe1ky2i': {
      'en': 'Amenities',
      'ar': 'وسائل الراحة',
    },
    '497j0nkr': {
      'en': 'View Phone',
      'ar': 'عرض الهاتف',
    },
    '28fpofjs': {
      'en': 'Contact Developer',
      'ar': 'اتصل بالمطور',
    },
    'vrntup6y': {
      'en': 'by Unique Dreame Builders',
      'ar': 'من قبل بناة الأحلام الفريدة',
    },
    'yt2bhvcs': {
      'en': '880,000  USD',
      'ar': '880,000 دولار أمريكي',
    },
  },
  // ContactSendCard
  {
    't8nj4wug': {
      'en': 'Successfully sent!',
      'ar': 'تم الإرسال بنجاح!',
    },
    'gg3d4020': {
      'en':
          'Your message has been successfully submitted. Our agent will contact you.',
      'ar': 'تم إرسال رسالتك بنجاح. سيتواصل معك أحد موظفينا.',
    },
    'b09vcki5': {
      'en': 'Continue Exploring',
      'ar': 'متابعة الاستكشاف',
    },
  },
  // RequestSendModall
  {
    'i7fcos5n': {
      'en': 'Successfully sent!',
      'ar': 'تم الإرسال بنجاح!',
    },
    'jxd7fxld': {
      'en':
          'Your request has been successfully submitted. Our agent will contact you.',
      'ar': 'تم تقديم طلبك بنجاح. سيتواصل معك أحد موظفينا.',
    },
    'r22z9a24': {
      'en': 'OK',
      'ar': 'نعم',
    },
  },
  // Chartcard_02
  {
    'j4h8gmsd': {
      'en': '2',
      'ar': '2',
    },
    'dxta7xpe': {
      'en': '/',
      'ar': '/',
    },
    'rrcw6eyx': {
      'en': '3',
      'ar': '3',
    },
    's0n1tsa8': {
      'en': '2',
      'ar': '2',
    },
    'i0baq6qk': {
      'en': 'Paid',
      'ar': 'مدفوع',
    },
    '6oddinqz': {
      'en': '97%',
      'ar': '97%',
    },
    'pcffb8hf': {
      'en': 'Remaining',
      'ar': 'متبقي',
    },
    'bhcnjmzx': {
      'en': 'USD',
      'ar': 'دولار أمريكي',
    },
    '1exzf0sk': {
      'en': '852,555,987',
      'ar': '852,555,987',
    },
    'w2li67ci': {
      'en': 'USD',
      'ar': 'دولار أمريكي',
    },
    'jufpep20': {
      'en': '852,555,987',
      'ar': '852,555,987',
    },
  },
  // LeavePublicationModal
  {
    'kcj7jsjy': {
      'en': 'Leave the publication',
      'ar': 'اترك النشر',
    },
    '36mmfcjk': {
      'en':
          'Prop Are you sure you want to leave?\nYour entered data will not be\nsaved',
      'ar': 'هل أنت متأكد من رغبتك في المغادرة؟\n\nلن تُحفظ بياناتك المدخلة',
    },
    'r0xfh66e': {
      'en': 'Cancel',
      'ar': 'إلغاء',
    },
    'hrpa03dy': {
      'en': 'Leave',
      'ar': 'اترك',
    },
  },
  // AddPropertyMoreOption
  {
    'mm8jjkye': {
      'en': 'Save & Exit',
      'ar': 'حفظ وخروج',
    },
    'mivi57ck': {
      'en': 'Delete and start over',
      'ar': 'احذف وابدأ من جديد',
    },
    'zeej9c1i': {
      'en': 'HelpCenter',
      'ar': 'مركز المساعدة',
    },
    '6njugfdi': {
      'en': 'Cancel',
      'ar': 'إلغاء',
    },
  },
  // PublishModal
  {
    '31aulh87': {
      'en': 'Publish',
      'ar': 'نشر',
    },
    'agthtajw': {
      'en': 'Are you sure you want to publish this Apartment?',
      'ar': 'هل أنت متأكد أنك تريد نشر هذه الشقة؟',
    },
    'moqbkkmm': {
      'en': 'Cancel',
      'ar': 'إلغاء',
    },
    '3hge8gkl': {
      'en': 'Leave',
      'ar': 'اترك',
    },
  },
  // FavoriteMoreOption
  {
    'm0bo770x': {
      'en': 'Clear favourite list',
      'ar': 'مسح قائمة المفضلة',
    },
    'e9ie9ywg': {
      'en': 'Help Center',
      'ar': 'مركز المساعدة',
    },
    'hbv1216l': {
      'en': 'Cancel',
      'ar': 'إلغاء',
    },
  },
  // AboutMoreAgentModal
  {
    '1ybs219l': {
      'en': 'About This Agent',
      'ar': 'حول هذا الوكيل',
    },
    '7kifl0av': {
      'en':
          'Welcome to your dream home! This beautifully designed 3 BHK apartment is located in one of the most desirable neighborhoods, offering a perfect blend of modern architecture, comfort, and convenience. Spread across 1,750 sq.ft, the property features spacious bedrooms with ample natural light, a large living room perfect for entertaining, and a fully modular kitchen equipped with premium fittings and storage space. The master bedroom comes with an attached bathroom and walk-in closet.\n\nStep out onto the private balcony and enjoy serene views of the landscaped garden and city skyline. The home is thoughtfully designed with contemporary interiors, marble flooring, and energy-efficient lighting. Whether you\'re a growing family or a couple looking for a comfortable and stylish space, this home fits all lifestyles.\n\nLocated just minutes from top-rated schools, hospitals, shopping malls, and metro connectivity, this property ensures everything you need is within reach. Additional amenities include a swimming pool, gym, children\'s play area, 24/7 security, and dedicated parking. Situated in a gated community with excellent neighbors, it\'s not just a house—it\'s a lifestyle upgrade.\n\nDon\'t miss this opportunity to own a piece of premium real estate. Schedule your visit today!',
      'ar':
          'أهلاً بكم في منزل أحلامكم! تقع هذه الشقة الرائعة المكونة من ثلاث غرف نوم في أحد أرقى الأحياء، وتتميز بمزيج مثالي من الهندسة المعمارية العصرية والراحة والرفاهية. تمتد الشقة على مساحة 1750 قدماً مربعاً، وتتميز بغرف نوم واسعة بإضاءة طبيعية غامرة، وغرفة معيشة واسعة مثالية للضيافة، ومطبخ مجهز بالكامل بتجهيزات فاخرة ومساحة تخزين. تحتوي غرفة النوم الرئيسية على حمام ملحق وخزانة ملابس واسعة.\n\nاخرج إلى الشرفة الخاصة واستمتع بإطلالات هادئة على الحديقة المنسقة وأفق المدينة. صُمم المنزل بعناية فائقة مع ديكورات داخلية عصرية وأرضيات رخامية وإضاءة موفرة للطاقة. سواء كنتم عائلة متنامية أو زوجين تبحثون عن مساحة مريحة وأنيقة، فإن هذا المنزل يناسب جميع أنماط الحياة.\n\nيقع هذا العقار على بُعد دقائق فقط من أفضل المدارس والمستشفيات ومراكز التسوق وشبكة المترو، مما يضمن لك سهولة الوصول إلى كل ما تحتاجه. تشمل المرافق الإضافية مسبحاً وصالة ألعاب رياضية ومنطقة لعب للأطفال وأمناً على مدار الساعة ومواقف سيارات مخصصة. يقع في مجمع سكني مسوّر مع جيران ممتازين، إنه ليس مجرد منزل، بل هو نقلة نوعية في نمط الحياة.\n\nلا تفوت هذه الفرصة لامتلاك عقار فاخر. احجز زيارتك اليوم!',
    },
    '0cmct9i9': {
      'en': 'View Phone',
      'ar': 'عرض الهاتف',
    },
    'yhxle2a0': {
      'en': 'Contact Developer',
      'ar': 'اتصل بالمطور',
    },
    'nfsc9hgt': {
      'en': 'by Unique Dreame Builders',
      'ar': 'من قبل بناة الأحلام الفريدة',
    },
  },
  // Speciality
  {
    '19d6rife': {
      'en': 'Speciality',
      'ar': 'التخصص',
    },
    'v0b6r5q8': {
      'en': 'Apply',
      'ar': 'تقديم',
    },
  },
  // Language
  {
    'plbo18vh': {
      'en': 'Speciality',
      'ar': 'التخصص',
    },
    '3t625l30': {
      'en': 'Apply',
      'ar': 'تقديم',
    },
  },
  // ProfileMoreOption
  {
    '572fzxzu': {
      'en': 'Share my profile',
      'ar': 'شارك ملف التعريف الخاص بي',
    },
    '931bb2dd': {
      'en': 'Edit Profile',
      'ar': 'تعديل الملف الشخصي',
    },
    'l2e9zdwg': {
      'en': 'Logout',
      'ar': 'تسجيل الخروج',
    },
    'jl7bm4k0': {
      'en': 'Cancel',
      'ar': 'إلغاء',
    },
  },
  // Miscellaneous
  {
    '2bp3dey7': {
      'en': 'Continue',
      'ar': 'يكمل',
    },
    'udalucql': {
      'en': 'TextField',
      'ar': 'حقل النص',
    },
    'bbcp4bj0': {
      'en': 'Hello World',
      'ar': 'مرحبا بالعالم',
    },
    'x19hcynq': {
      'en': 'Hello World',
      'ar': 'مرحبا بالعالم',
    },
    'svlyk6rq': {
      'en': 'Name',
      'ar': 'اسم',
    },
    'h6ym6eo0': {
      'en': 'Name',
      'ar': 'اسم',
    },
    'q0sjdan6': {
      'en': '',
      'ar': '',
    },
    'je6yh7mq': {
      'en': '',
      'ar': '',
    },
    '00cho0b3': {
      'en': '',
      'ar': '',
    },
    '842md2kb': {
      'en': '',
      'ar': '',
    },
    '603uqqcf': {
      'en': '',
      'ar': '',
    },
    '3k74w3w3': {
      'en': '',
      'ar': '',
    },
    '7aabvwo3': {
      'en': '',
      'ar': '',
    },
    'dn3885g0': {
      'en': '',
      'ar': '',
    },
    'g35sy67s': {
      'en': '',
      'ar': '',
    },
    'yc93dn8t': {
      'en': '',
      'ar': '',
    },
    'v04jwsis': {
      'en': '',
      'ar': '',
    },
    'ne51w0kq': {
      'en': '',
      'ar': '',
    },
    'p5qvy8s7': {
      'en': '',
      'ar': '',
    },
    's16a8l3s': {
      'en': '',
      'ar': '',
    },
    'w3rafgv6': {
      'en': '',
      'ar': '',
    },
    'flqs9k7c': {
      'en': '',
      'ar': '',
    },
    '11xk2tq2': {
      'en': '',
      'ar': '',
    },
    '0k159le7': {
      'en': '',
      'ar': '',
    },
    'yloz2lrc': {
      'en': '',
      'ar': '',
    },
    'wdtl5vlo': {
      'en': '',
      'ar': '',
    },
    '5qkswydp': {
      'en': '',
      'ar': '',
    },
    'iiyth7st': {
      'en': '',
      'ar': '',
    },
    'a4v9swm0': {
      'en': '',
      'ar': '',
    },
    'c8b3upvl': {
      'en': '',
      'ar': '',
    },
    'guc1vglj': {
      'en': '',
      'ar': '',
    },
    '115pdgt1': {
      'en': '',
      'ar': '',
    },
    'f072ukef': {
      'en': '',
      'ar': '',
    },
    'onorflnt': {
      'en': '',
      'ar': '',
    },
  },
].reduce((a, b) => a..addAll(b));
