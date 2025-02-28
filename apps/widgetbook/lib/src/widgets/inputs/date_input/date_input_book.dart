export 'date_input_overview_case.dart';

import 'package:widgetbook_app/widgetbook.dart';

class DateInputComponentBook extends WidgetbookComponent {
  DateInputComponentBook({
    super.name = 'Date Input',
    super.isInitiallyExpanded = false,
  }) : super(useCases: [
          OverviewDateInputWidgetCase(),
        ]);
}
