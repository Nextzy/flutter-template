export 'frame_layouts/frame_layouts.dart';

import 'package:widgetbook_app/widgetbook.dart';

class CommonCategories extends WidgetbookCategory {
  CommonCategories({
    super.name = 'Commons',
    super.isInitiallyExpanded = false,
  }) : super(
          children: [
            FrameLayoutWidgetCase(),
          ],
        );
}
