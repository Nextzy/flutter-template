export 'status_dot_case.dart';
export 'status_ring_case.dart';

import 'package:widgetbook_app/widgetbook.dart';

class StatusWidgetBook extends WidgetbookComponent {
  StatusWidgetBook({
    super.name = 'Status',
    super.isInitiallyExpanded = false,
  }) : super(
          useCases: [
            DotStatusWidgetCase(),
            RingStatusWidgetCase(),
          ],
        );
}
