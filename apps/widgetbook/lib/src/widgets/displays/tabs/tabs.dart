export 'tab_filled_case.dart';
export 'tab_shade_case.dart';
export 'tab_outline_case.dart';
export 'tab_underline_case.dart';

import 'package:widgetbook_app/widgetbook.dart';

class HorizontalTabWidgetBook extends WidgetbookComponent {
  HorizontalTabWidgetBook({
    super.name = 'Horizontal Tab',
    super.isInitiallyExpanded = false,
  }) : super(
          useCases: [
            FilledHorizontalTabWidgetCase(),
            ShadedHorizontalTabWidgetCase(),
            OutlineHorizontalTabWidgetCase(),
            UnderlineHorizontalTabWidgetCase(),
          ],
        );
}
