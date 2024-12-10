import 'package:widgetbook_app/widgetbook.dart';

export 'toggle_cases.dart';

class ToggleComponentBook extends WidgetbookComponent {
  ToggleComponentBook({
    super.name = 'Toggle',
  }) : super(useCases: [
          ...ToggleCases.createCases(),
        ]);

  ///========================= OPTIONS =========================///
  static String createTextTitleOption(BuildContext context) =>
      context.knobs.string(label: 'Title', initialValue: 'Toggle Title');

  static String createTextOption(BuildContext context) =>
      context.knobs.string(label: 'Text', initialValue: 'Remember me');

  static String createSupportingTextOption(BuildContext context) =>
      context.knobs.string(
          label: 'Supporting Text',
          initialValue: 'Save my login details for next time.');
}
