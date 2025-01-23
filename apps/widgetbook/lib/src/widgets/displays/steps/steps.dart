export 'steps_overview_case.dart';

import 'package:widgetbook_app/widgetbook.dart';

class HorizontalStepsWidgetBook extends WidgetbookComponent {
  HorizontalStepsWidgetBook({
    super.name = 'Horizontal Steps',
    super.isInitiallyExpanded = false,
  }) : super(
          useCases: [
            OverviewHorizontalStepsWidgetCase(),
          ],
        );
}
