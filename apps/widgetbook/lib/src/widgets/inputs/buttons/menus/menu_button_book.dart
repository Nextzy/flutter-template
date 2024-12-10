import 'package:widgetbook_app/widgetbook.dart';
export 'menu_button_cases.dart';


class MenuButtonBook extends WidgetbookComponent {
  MenuButtonBook({
    super.name = 'Menu Button',
  }) : super(useCases: [
    ...MenuButtonCases.createCases(),
  ]);
}
