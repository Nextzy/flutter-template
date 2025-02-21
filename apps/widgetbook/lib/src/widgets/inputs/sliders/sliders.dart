export 'slider_overview_case.dart';

import 'package:widgetbook_app/widgetbook.dart';

class HorizontalSliderComponentBook extends WidgetbookComponent {
  HorizontalSliderComponentBook({
    super.name = 'Horizontal Slider',
    super.isInitiallyExpanded = false,
  }) : super(
          useCases: [
            OverviewHorizontalSliderWidgetCase(),
          ],
        );
}
