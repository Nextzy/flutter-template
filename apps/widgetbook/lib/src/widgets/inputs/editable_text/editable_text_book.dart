export 'editable_text_overview_case.dart';

import 'package:widgetbook_app/widgetbook.dart';

class InlineEditableTextWidgetBook extends WidgetbookComponent {
  InlineEditableTextWidgetBook({
    super.name = 'Inline Editable Text',
    super.isInitiallyExpanded = false,
  }) : super(
          useCases: [OverviewInlineEditableTextWidgetCase()],
        );
}
