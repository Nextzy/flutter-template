export 'table_overview_case.dart';

import 'package:widgetbook_app/widgetbook.dart';

class TableCategories extends WidgetbookComponent {
  TableCategories({
    super.name = 'Tables',
    super.isInitiallyExpanded = true,
  }) : super(
          useCases: [
            OverviewTableWidgetCase(),
          ],
        );
}
