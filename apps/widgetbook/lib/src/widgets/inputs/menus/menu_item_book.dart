export 'menu_item_custom_case.dart';
import 'package:widgetbook_app/widgetbook.dart';

class MenuItemComponentBook extends WidgetbookComponent {
  MenuItemComponentBook({
    super.name = 'Menu Item',
    super.isInitiallyExpanded = false,
  }) : super(
          useCases: [
            CustomMenuItemWidgetCase(),
          ],
        );
}
