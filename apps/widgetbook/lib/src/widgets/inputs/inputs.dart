import 'package:widgetbook_app/widgetbook.dart';

export 'bottom_navigation_book.dart';
export 'buttons/buttons.dart';
export 'buttons/icons/icon_buttons.dart';
export 'buttons/dropdowns/dropdown_book.dart';
export 'checkbox/checkbox_book.dart';
export 'list_item/list_item_book.dart';
export 'menus/menu_item_book.dart';
export 'text_fields/text_field_book.dart';
export 'toggle/toggle_book.dart';
export 'text_area/text_area_book.dart';
export 'stepper/stepper_book.dart';

class InputCategories extends WidgetbookCategory {
  InputCategories({
    super.name = 'Inputs',
    super.isInitiallyExpanded = true,
  }) : super(children: [
          ButtonComponents(),
          IconButtonComponents(),
          // ToggleComponentBook(),
          // CheckboxComponentBook(),
          // MenuButtonBook(),
          // ButtonGroupComponentBook(),
          // DropdownButtonComponentBook(),
          TextFieldComponentBook(),
          MenuItemComponentBook(),
          // ListItemComponentBook(),
          // BottomNavigationBook(),
          TextAreaComponentBook(),
          StepperComponentBook(),
        ]);
}
