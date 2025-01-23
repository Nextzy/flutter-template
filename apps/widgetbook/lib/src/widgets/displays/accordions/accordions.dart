export 'accordion_overview_case.dart';

import 'package:widgetbook_app/widgetbook.dart';

class AccordionWidgetBook extends WidgetbookComponent {
  AccordionWidgetBook({
    super.name = 'Accordion',
    super.isInitiallyExpanded = false,
  }) : super(
          useCases: [
            OverviewAccordionWidgetCase(),
          ],
        );
}
