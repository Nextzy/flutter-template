export 'checkbox_overview_case.dart';
export 'checkbox_card_case.dart';
export 'checkbox_tile_case.dart';

import 'package:widgetbook_app/widgetbook.dart';

class CheckboxComponentBook extends WidgetbookComponent {
  CheckboxComponentBook({
    super.name = 'Checkbox',
    super.isInitiallyExpanded = false,
  }) : super(
          useCases: [
            OverviewCheckboxWidgetCase(),
            CardCheckboxWidgetCase(),
            TileCheckboxWidgetCase(),
          ],
        );
}
