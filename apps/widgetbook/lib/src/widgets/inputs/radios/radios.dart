export 'radio_overview_case.dart';
export 'radio_group_case.dart';
export 'radio_card_case.dart';
export 'radio_tile_case.dart';

import 'package:widgetbook_app/widgetbook.dart';

class RadioComponentBook extends WidgetbookComponent {
  RadioComponentBook({
    super.name = 'Radio',
    super.isInitiallyExpanded = false,
  }) : super(
          useCases: [
            OverviewRadioWidgetCase(),
            GroupRadioWidgetCase(),
            CardRadioWidgetCase(),
            TileRadioWidgetCase(),
          ],
        );
}
