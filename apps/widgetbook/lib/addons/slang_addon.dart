import 'package:widgetbook_app/widgetbook.dart';

class SlangAddon extends WidgetbookAddon<AppLocale> {
  SlangAddon({
    required this.locales,
    required this.localizationsDelegates,
    this.initialLocale,
  })  : assert(
          locales.isNotEmpty,
          'locales cannot be empty',
        ),
        assert(
          initialLocale == null || locales.contains(initialLocale),
          'initialLocale must be in locales',
        ),
        super(
          name: 'Locale',
        );

  final AppLocale? initialLocale;
  final List<AppLocale> locales;
  final List<LocalizationsDelegate<dynamic>> localizationsDelegates;

  @override
  List<Field> get fields {
    return [
      ListField<AppLocale>(
        name: 'name',
        values: locales,
        initialValue: initialLocale ?? locales.first,
        labelBuilder: (locale) => locale.underscoreTag,
      ),
    ];
  }

  @override
  AppLocale valueFromQueryGroup(Map<String, String> group) {
    return valueOf('name', group)!;
  }

  @override
  Widget buildUseCase(
    BuildContext context,
    Widget child,
    AppLocale setting,
  ) {
    return Localizations(
      locale: setting.flutterLocale,
      delegates: localizationsDelegates,
      child: child,
    );
  }
}
