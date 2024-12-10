export 'empty_cases.dart';
import 'package:widgetbook_app/widgetbook.dart';

class EmptyWidgetBook extends WidgetbookComponent {
  EmptyWidgetBook({
    super.name = 'Empty State',
    super.isInitiallyExpanded = true,
  }) : super(
          useCases: [
            EmptyWidgetCase(),
          ],
        );

  static String createTextTitleOption(BuildContext context) =>
      context.knobs.string(label: 'Title', initialValue: 'Nothing found');
}
