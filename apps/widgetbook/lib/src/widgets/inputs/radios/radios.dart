export 'radio_overview_case.dart';

import 'package:widgetbook_app/widgetbook.dart';

class RadioComponentBook extends WidgetbookComponent {
  RadioComponentBook({
    super.name = 'Radio',
    super.isInitiallyExpanded = false,
  }) : super(
          useCases: [
            OverviewRadioWidgetCase(),
          ],
        );
}
