export 'time_input_overview_case.dart';

import 'package:widgetbook_app/widgetbook.dart';

class TimeInputComponentBook extends WidgetbookComponent {
  TimeInputComponentBook({
    super.name = 'Time Input',
    super.isInitiallyExpanded = false,
  }) : super(useCases: [
          OverviewTimeInputWidgetCase(),
        ]);
}
