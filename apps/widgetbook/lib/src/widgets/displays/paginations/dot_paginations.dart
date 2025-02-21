export 'dot_pagination_overview_case.dart';

import 'package:widgetbook_app/widgetbook.dart';

class DotPaginationWidgetBook extends WidgetbookComponent {
  DotPaginationWidgetBook({
    super.name = 'Dot Pagination',
    super.isInitiallyExpanded = false,
  }) : super(
          useCases: [
            OverviewDotPaginationWidgetCase(),
          ],
        );
}
