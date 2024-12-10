// ignore_for_file: prefer_const_constructors

export 'widget_normal_case.dart';

import 'package:widgetbook_app/widgetbook.dart';

class YourWidgetBook extends WidgetbookComponent {
  YourWidgetBook({
    super.name = 'Your Widget',
    super.isInitiallyExpanded = false,
  }) : super(
          useCases: [
            YourWidgetNormalCase(),
          ],
        );

  static String createTextTitleOption(BuildContext context) =>
      context.knobs.string(label: 'Title', initialValue: 'Toolbar Title');

  static String createCustomOption(BuildContext context) =>
      context.knobs.list(label: 'Custom Option', options: [
        '',
      ]);
}
