export 'tutorial_overview_case.dart';

import 'package:widgetbook_app/widgetbook.dart';

class TutorialWidgetBook extends WidgetbookComponent {
  TutorialWidgetBook({
    super.name = 'Tutorial',
    super.isInitiallyExpanded = false,
  }) : super(
          useCases: [
            OverviewTutorialWidgetCase(),
          ],
        );
}
