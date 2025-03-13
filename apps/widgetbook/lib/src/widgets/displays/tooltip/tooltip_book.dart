export 'tooltip_overview_case.dart';

import 'package:widgetbook_app/widgetbook.dart';

class TooltipWidgetBook extends WidgetbookComponent {
  TooltipWidgetBook({
    super.name = 'Tooltip',
    super.isInitiallyExpanded = false,
  }) : super(
          useCases: [
            OverviewTooltipWidgetCase(),
          ],
        );
}
