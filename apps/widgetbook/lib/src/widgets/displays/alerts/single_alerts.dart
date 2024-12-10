// ignore_for_file: prefer_const_constructors

export 'single_alert_custom_cases.dart';
export 'single_alert_light_cases.dart';
export 'single_alert_medium_cases.dart';
export 'single_alert_strong_cases.dart';

import 'package:widgetbook_app/widgetbook.dart';

class SingleInlineAlertWidgetBook extends WidgetbookComponent {
  SingleInlineAlertWidgetBook({
    super.name = 'Single Alert',
    super.isInitiallyExpanded = false,
  }) : super(
          useCases: [
            SingleInlineAlertLightWidgetCase(),
            SingleInlineAlertMediumWidgetCase(),
            SingleInlineAlertStrongWidgetCase(),
            CustomSingleInlineAlertWidgetCase(),
          ],
        );
}
