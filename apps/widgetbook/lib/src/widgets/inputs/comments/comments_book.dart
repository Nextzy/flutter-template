export 'comments_overview_case.dart';

import 'package:widgetbook_app/widgetbook.dart';

class CommentsWidgetBook extends WidgetbookComponent {
  CommentsWidgetBook({
    super.name = 'Comments',
    super.isInitiallyExpanded = false,
  }) : super(
          useCases: [
            OverviewCommentsWidgetCase(),
          ],
        );
}
