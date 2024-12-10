import 'package:widgetbook_app/widgetbook.dart';
export 'dropdown_button_cases.dart';

class DropdownButtonComponentBook extends WidgetbookComponent {
  DropdownButtonComponentBook({
    super.name = 'Dropdown Button',
  }) : super(useCases: [
          ...DropdownButtonCases.createCases(),
        ]);

  static String createTextButtonOption(BuildContext context) =>
      context.knobs.string(label: 'Button Text', initialValue: 'Button Text');

  static String createTextTitleOption(BuildContext context) =>
      context.knobs.string(label: 'Menu Title Text', initialValue: 'Olivia Rhye');

  static String createTextSupportOption(BuildContext context) =>
      context.knobs.string(label: 'Menu Support Text', initialValue: '@olivia');

  static bool createEnabledMenuItemOption(BuildContext context) =>
      context.knobs.boolean(label: 'Enable Menu', initialValue: true);

  static String? createStartIconMenuItemOption(BuildContext context) =>
      context.knobs.list(label: 'End Icon Menu', options: [
        Assets.icon.circle.keyName,
        null,
      ]);

  static String? createEndIconMenuItemOption(BuildContext context) =>
      context.knobs.list(label: 'Start Icon Menu', options: [
        Assets.icon.circle.keyName,
        null,
      ]);
}
