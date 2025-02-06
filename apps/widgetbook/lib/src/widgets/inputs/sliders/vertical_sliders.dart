export 'vertical_slider_overview_case.dart';

import 'package:widgetbook_app/widgetbook.dart';

class VerticalSliderComponentBook extends WidgetbookComponent {
  VerticalSliderComponentBook({
    super.name = 'Vertical Slider',
    super.isInitiallyExpanded = false,
  }) : super(
          useCases: [
            OverviewVerticalSliderWidgetCase(),
          ],
        );
}
