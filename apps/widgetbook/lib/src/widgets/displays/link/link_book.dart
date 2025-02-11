export 'link_overview_case.dart';

import 'package:widgetbook_app/widgetbook.dart';

class LinkWidgetBook extends WidgetbookComponent {
  LinkWidgetBook({
    super.name = 'Link',
    super.isInitiallyExpanded = false,
  }) : super(
          useCases: [
            OverviewLinkWidgetCase(),
          ],
        );
}
