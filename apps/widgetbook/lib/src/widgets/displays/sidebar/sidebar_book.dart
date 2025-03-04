export 'sidebar_overview_case.dart';

import 'package:widgetbook_app/widgetbook.dart';

class SidebarWidgetBook extends WidgetbookComponent {
  SidebarWidgetBook({
    super.name = 'Sidebar',
    super.isInitiallyExpanded = false,
  }) : super(
          useCases: [
            OverviewSidebarWidgetCase(),
          ],
        );
}
