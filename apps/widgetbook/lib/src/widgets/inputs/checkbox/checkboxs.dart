export 'checkbox_overview_case.dart';

import 'package:widgetbook_app/widgetbook.dart';

class CheckboxComponentBook extends WidgetbookComponent {
  CheckboxComponentBook({
    super.name = 'Checkbox',
    super.isInitiallyExpanded = false,
  }) : super(
          useCases: [
            OverviewCheckboxWidgetCase(),
          ],
        );
}
