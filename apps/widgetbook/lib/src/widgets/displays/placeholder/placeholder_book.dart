export 'placeholder_overview_case.dart';

import 'package:widgetbook_app/widgetbook.dart';

class PlaceholderWidgetBook extends WidgetbookComponent {
  PlaceholderWidgetBook({
    super.name = 'Placeholder',
    super.isInitiallyExpanded = false,
  }) : super(
          useCases: [
            OverviewPlaceholderWidgetCase(),
          ],
        );
}
