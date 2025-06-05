import 'package:localization/lib.dart';

class AppLocalization {
  static const _localeKey = 'locale_key';

  static Future<AppLocale> init() async {
    final locale = await loadLocale();

    final prefs = await SharedPreferences.getInstance();
    await prefs.setString(_localeKey, locale.languageCode);

    return locale;
  }

  static Future<AppLocale> loadLocale() async {
    final prefs = await SharedPreferences.getInstance();
    final langCode = prefs.getString(_localeKey);

    if (langCode != null && langCode.isNotEmpty) {
      try {
        return AppLocaleUtils.parseLocaleParts(languageCode: langCode);
      } catch (_) {
        debugPrint('Error parsing locale: $langCode');
        return LocaleSettings.useDeviceLocale();
      }
    } else {
      return LocaleSettings.useDeviceLocale();
    }
  }

  static Future<AppLocale> changeLocale(AppLocale locale) async {
    final prefs = await SharedPreferences.getInstance();
    await prefs.setString(_localeKey, locale.languageCode);

    return LocaleSettings.setLocale(locale);
  }
}
