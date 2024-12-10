// ignore_for_file: prefer_const_constructors

export 'alert_custom_cases.dart';
export 'alert_light_cases.dart';
export 'alert_medium_cases.dart';
export 'alert_strong_cases.dart';

import 'package:widgetbook_app/widgetbook.dart';

class InlineAlertWidgetBook extends WidgetbookComponent {
  InlineAlertWidgetBook({
    super.name = 'Inline Alert',
    super.isInitiallyExpanded = false,
  }) : super(
          useCases: [
            InlineAlertLightWidgetCase(),
            InlineAlertMediumWidgetCase(),
            InlineAlertStrongWidgetCase(),
            CustomInlineAlertWidgetCase(),
          ],
        );
}
