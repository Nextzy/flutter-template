export 'popover_overview_case.dart';

import 'package:widgetbook_app/widgetbook.dart';

class PopoverWidgetBook extends WidgetbookComponent {
  PopoverWidgetBook({
    super.name = 'Popover',
    super.isInitiallyExpanded = false,
  }) : super(
          useCases: [
            OverviewPopoverWidgetCase(),
          ],
        );
}
