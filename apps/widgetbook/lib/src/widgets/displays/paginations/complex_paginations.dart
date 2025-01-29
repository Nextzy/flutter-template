export 'complex_pagination_overview_case.dart';

import 'package:widgetbook_app/widgetbook.dart';

class ComplexPaginationWidgetBook extends WidgetbookComponent {
  ComplexPaginationWidgetBook({
    super.name = 'Complex Pagination',
    super.isInitiallyExpanded = false,
  }) : super(
          useCases: [
            OverviewComplexPaginationWidgetCase(),
          ],
        );
}
