export 'toggle_overview_case.dart';

import 'package:widgetbook_app/widgetbook.dart';

class ToggleComponentBook extends WidgetbookComponent {
  ToggleComponentBook({
    super.name = 'Toggle',
    super.isInitiallyExpanded = false,
  }) : super(
          useCases: [
            OverviewToggleWidgetCase(),
          ],
        );
}
