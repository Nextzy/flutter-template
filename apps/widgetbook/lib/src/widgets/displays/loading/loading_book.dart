import 'package:widgetbook_app/widgetbook.dart';
import 'loading_dialog_cases.dart';

class LoadingBook extends WidgetbookComponent {
  LoadingBook({
    super.name = 'Loading Modal',
    super.isInitiallyExpanded = false,
  }) : super(
          useCases: [
            LoadingDialogCases(),
          ],
        );

  static String createTextTitleOption(BuildContext context) =>
      context.knobs.string(label: 'Title', initialValue: 'Toolbar Title');
}
