export 'vertical_steps_overview_case.dart';

import 'package:widgetbook_app/widgetbook.dart';

class VerticalStepWidgetBook extends WidgetbookComponent {
  VerticalStepWidgetBook({
    super.name = 'Vertical Steps',
    super.isInitiallyExpanded = false,
  }) : super(
          useCases: [
            OverviewVerticalStepsWidgetCase(),
          ],
        );
}
