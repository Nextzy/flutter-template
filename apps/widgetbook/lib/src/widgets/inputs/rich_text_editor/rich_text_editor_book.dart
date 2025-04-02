export 'rich_text_editor_overview_case.dart';

import 'package:widgetbook_app/widgetbook.dart';

class RichTextEditorWidgetBook extends WidgetbookComponent {
  RichTextEditorWidgetBook({
    super.name = 'Rich Text Editor',
    super.isInitiallyExpanded = false,
  }) : super(
          useCases: [
            OverviewRichTextEditorWidgetCase(),
          ],
        );
}
