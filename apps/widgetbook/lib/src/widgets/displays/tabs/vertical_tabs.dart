export 'vertical_tab_filled_case.dart';
export 'vertical_tab_shade_case.dart';
export 'vertical_tab_outline_case.dart';

import 'package:widgetbook_app/widgetbook.dart';

class VerticalTabWidgetBook extends WidgetbookComponent {
  VerticalTabWidgetBook({
    super.name = 'Vertical Tab',
    super.isInitiallyExpanded = false,
  }) : super(
          useCases: [
            FilledVerticalTabWidgetCase(),
            ShadedVerticalTabWidgetCase(),
            OutlineVerticalTabWidgetCase(),
          ],
        );
}
