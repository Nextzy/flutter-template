export 'divider_horizontal_case.dart';
export 'divider_vertical_case.dart';

import 'package:widgetbook_app/widgetbook.dart';

class DividerWidgetBook extends WidgetbookComponent {
  DividerWidgetBook({
    super.name = 'Divider',
    super.isInitiallyExpanded = false,
  }) : super(
          useCases: [
            HorizontalDividerWidgetCase(),
            VerticalDividerWidgetCase(),
          ],
        );
}
