export 'breadcrumbs_overview_case.dart';

import 'package:widgetbook_app/widgetbook.dart';

class BreadcrumbsWidgetBook extends WidgetbookComponent {
  BreadcrumbsWidgetBook({
    super.name = 'Breadcrumbs',
    super.isInitiallyExpanded = true,
  }) : super(
          useCases: [
            OverviewBreadcrumbsWidgetCase(),
          ],
        );
}
