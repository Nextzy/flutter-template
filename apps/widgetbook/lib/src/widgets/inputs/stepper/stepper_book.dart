export 'stepper_overview_case.dart';

import 'package:widgetbook_app/widgetbook.dart';

class StepperComponentBook extends WidgetbookComponent {
  StepperComponentBook({
    super.name = 'Stepper',
    super.isInitiallyExpanded = false,
  }) : super(
          useCases: [
            OverviewStepperWidgetCase(),
          ],
        );
}
