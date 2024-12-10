import 'package:widgetbook_app/widgetbook.dart';

export 'checkbox_cases.dart';

class CheckboxComponentBook extends WidgetbookComponent {
  CheckboxComponentBook({
    super.name = 'Checkbox',
  }) : super(useCases: [
          ...CheckboxCases.createCases(),
        ]);


  ///========================= OPTIONS =========================///
  static String createTextTitleOption(BuildContext context) =>
      context.knobs.string(label: 'Title', initialValue: 'Toggle Title');

  static bool createTristateOption(BuildContext context) =>
      context.knobs.boolean(label: 'Tristate', initialValue: false);

  static String createTextOption(BuildContext context) =>
      context.knobs.string(label: 'Text', initialValue: 'Remember me');

  static String createSupportingTextOption(BuildContext context) =>
      context.knobs.string(
          label: 'Supporting Text',
          initialValue: 'Save my login details for next time.');
}
