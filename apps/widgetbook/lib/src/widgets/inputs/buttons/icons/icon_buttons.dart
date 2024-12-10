import 'package:widgetbook_app/widgetbook.dart';

export 'icon_button_overview_case.dart';
export 'icon_button_custom_case.dart';

class IconButtonComponents extends WidgetbookComponent {
  IconButtonComponents({
    super.name = 'Icon Button',
    super.isInitiallyExpanded = false,
  }) : super(
          useCases: [
            OverviewIconButtonWidgetCase(),
            CustomIconButtonWidgetCase(),
          ],
        );
}
