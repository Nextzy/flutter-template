export 'combobox_overview_case.dart';

import 'package:widgetbook_app/widgetbook.dart';

class ComboBoxComponentBook extends WidgetbookComponent {
  ComboBoxComponentBook({
    super.name = 'ComboBox',
    super.isInitiallyExpanded = false,
  }) : super(useCases: [
          OverviewComboBoxWidgetCase(),
        ]);
}
