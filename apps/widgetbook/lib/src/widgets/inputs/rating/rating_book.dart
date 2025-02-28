export 'rating_overview_case.dart';

import 'package:widgetbook_app/widgetbook.dart';

class RatingComponentBook extends WidgetbookComponent {
  RatingComponentBook({
    super.name = 'Rating',
    super.isInitiallyExpanded = false,
  }) : super(
          useCases: [
            OverviewRatingWidgetCase(),
          ],
        );
}
