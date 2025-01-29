export 'pagination_number_case.dart';
export 'pagination_text_case.dart';
export 'pagination_input_case.dart';

import 'package:widgetbook_app/widgetbook.dart';

class PaginationWidgetBook extends WidgetbookComponent {
  PaginationWidgetBook({
    super.name = 'Simple Pagination',
    super.isInitiallyExpanded = false,
  }) : super(
          useCases: [
            NumberPaginationWidgetCase(),
            TextPaginationWidgetCase(),
            InputPaginationWidgetCase(),
          ],
        );
}
