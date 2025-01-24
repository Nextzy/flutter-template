export 'number_input_overview_case.dart';

import 'package:widgetbook_app/widgetbook.dart';

class NumberInputComponentBook extends WidgetbookComponent {
  NumberInputComponentBook({
    super.name = 'Number Input',
    super.isInitiallyExpanded = false,
  }) : super(useCases: [
          OverviewNumberInputWidgetCase(),
        ]);
}
