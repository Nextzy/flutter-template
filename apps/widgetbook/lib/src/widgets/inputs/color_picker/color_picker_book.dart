export 'color_picker_overview_case.dart';

import 'package:widgetbook_app/widgetbook.dart';

class ColorPickerComponentBook extends WidgetbookComponent {
  ColorPickerComponentBook({
    super.name = 'Color Picker',
    super.isInitiallyExpanded = false,
  }) : super(
          useCases: [
            OverviewColorPickerWidgetCase(),
          ],
        );
}
