import 'package:widgetbook_app/widgetbook.dart';

class OverviewRichTextEditorWidgetCase extends WidgetbookScrollableUseCase {
  OverviewRichTextEditorWidgetCase({super.name = 'Overview'})
      : super(
          builder: (context) => SectionH1Widgetbook(
            title: 'Rich Text Editor',
            children: [
              SectionH2Widgetbook(
                children: [AppRichTextEditor()],
              ),
            ],
          ),
        );
}
