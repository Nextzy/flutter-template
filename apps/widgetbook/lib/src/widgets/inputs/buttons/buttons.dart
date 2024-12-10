import 'package:widgetbook_app/widgetbook.dart';

export 'groups/groups.dart';
export 'menus/menu_button_book.dart';
export 'button_overview_case.dart';
export 'button_custom_case.dart';

class ButtonComponents extends WidgetbookComponent {
  ButtonComponents({
    super.name = 'Button',
    super.isInitiallyExpanded = false,
  }) : super(
          useCases: [
            OverviewButtonWidgetCase(),
            CustomButtonWidgetCase(),
          ],
        );

  ///========================= OPTIONS =========================///
  static String? createIconButtonOption(BuildContext context, String label) =>
      context.knobs.list(label: label, options: [
        Assets.icon.circle.keyName,
        null,
      ]);

  static String createTextButtonOption(BuildContext context) =>
      context.knobs.string(label: 'Text', initialValue: 'Button Text');

  static bool createEnabledButtonOption(BuildContext context) =>
      context.knobs.boolean(label: 'Enable', initialValue: true);

  static bool createDestructiveButtonOption(BuildContext context) =>
      context.knobs.boolean(label: 'Destructive', initialValue: false);

  static bool createExpandedButtonOption(BuildContext context) =>
      context.knobs.boolean(label: 'Expanded', initialValue: false);
}
