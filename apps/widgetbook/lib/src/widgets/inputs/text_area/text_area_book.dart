export 'text_area_overview_case.dart';

import 'package:widgetbook_app/widgetbook.dart';

class TextAreaComponentBook extends WidgetbookComponent {
  TextAreaComponentBook({
    super.name = 'Text Area',
    super.isInitiallyExpanded = false,
  }) : super(
          useCases: [OverviewTextAreaWidgetCase()],
        );
}
