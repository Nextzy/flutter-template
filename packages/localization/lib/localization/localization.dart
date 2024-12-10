import 'package:localization/lib.dart';

class AppLocalization {
  static const _localeKey = "local_key";

  static Future<AppLocale> init() async {
    AppLocale locale =
        (await loadLocal()) ?? (await LocaleSettings.useDeviceLocale());

    final SharedPreferences prefs = await SharedPreferences.getInstance();
    await prefs.setString(_localeKey, locale.languageCode);

    return locale;
  }

  static Future<AppLocale?> loadLocal() async {
    final SharedPreferences prefs = await SharedPreferences.getInstance();
    final langCode = prefs.getString(_localeKey);

    if (langCode != null && langCode.isNotEmpty) {
      return AppLocaleUtils.parseLocaleParts(languageCode: langCode);
    } else {
      return Future.value(null);
    }
  }

  static Future<AppLocale> changeLocale(AppLocale locale) async {
    final SharedPreferences prefs = await SharedPreferences.getInstance();
    await prefs.setString(_localeKey, locale.languageCode);

    return LocaleSettings.setLocale(locale);
  }
}
