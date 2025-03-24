export 'tree_view_overview_case.dart';

import 'package:widgetbook_app/widgetbook.dart';

class TreeViewWidgetBook extends WidgetbookComponent {
  TreeViewWidgetBook({
    super.name = 'Tree View',
    super.isInitiallyExpanded = false,
  }) : super(
          useCases: [
            OverviewTreeViewWidgetCase(),
          ],
        );
}
