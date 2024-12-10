export 'text_field_overview_case.dart';
export 'text_field_custom_case.dart';

import 'package:widgetbook_app/widgetbook.dart';

class TextFieldComponentBook extends WidgetbookComponent {
  TextFieldComponentBook({
    super.name = 'Text Field',
    super.isInitiallyExpanded = false,
  }) : super(useCases: [
          OverviewTextFieldWidgetCase(),
          CustomTextFieldWidgetCase(),
        ]);

  static String? createLabelTextOption(BuildContext context) =>
      context.knobs.stringOrNull(label: 'Label', initialValue: 'Label');

  static String? createPlaceholderTextOption(BuildContext context) =>
      context.knobs
          .string(label: 'Placeholder Text', initialValue: 'Placeholder text');

  static String? createErrorTextOption(BuildContext context) =>
      context.knobs.stringOrNull(label: 'Error Text', initialValue: '');

  static String? createHelperTextOption(BuildContext context) =>
      context.knobs.stringOrNull(label: 'Hint Text', initialValue: 'Hint text');
}
