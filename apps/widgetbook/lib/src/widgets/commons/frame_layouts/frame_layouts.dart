export 'frame_layout_cases.dart';

import 'package:widgetbook_app/widgetbook.dart';

class FrameLayoutWidgetCase extends WidgetbookComponent {
  FrameLayoutWidgetCase({
    super.name = 'FrameLayout',
    super.isInitiallyExpanded = false,
  }) : super(
    useCases: [
      FrameLayoutCase(),
    ],
  );
}
