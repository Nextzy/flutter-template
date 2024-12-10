// ignore_for_file: prefer_const_constructors
export 'badge_custom_cases.dart';

import 'package:widgetbook_app/widgetbook.dart';

class BadgeWidgetBook extends WidgetbookComponent {
  BadgeWidgetBook({
    super.name = 'Badge',
    super.isInitiallyExpanded = true,
  }) : super(
          useCases: [
            CustomBadgeWidgetCase(),
          ],
        );
}
