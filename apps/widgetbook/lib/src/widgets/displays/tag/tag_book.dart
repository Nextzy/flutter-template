export 'tag_overview_case.dart';

import 'package:widgetbook_app/widgetbook.dart';

class TagWidgetBook extends WidgetbookComponent {
  TagWidgetBook({
    super.name = 'Tag',
    super.isInitiallyExpanded = false,
  }) : super(
          useCases: [
            OverviewTagWidgetCase(),
          ],
        );
}
