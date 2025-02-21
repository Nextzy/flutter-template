export 'line_pagination_overview_case.dart';

import 'package:widgetbook_app/widgetbook.dart';

class LinePaginationWidgetBook extends WidgetbookComponent {
  LinePaginationWidgetBook({
    super.name = 'Line Pagination',
    super.isInitiallyExpanded = false,
  }) : super(
          useCases: [
            OverviewLinePaginationWidgetCase(),
          ],
        );
}
