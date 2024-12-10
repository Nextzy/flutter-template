export 'radio_case.dart';
export 'multi_selected_case.dart';
import 'package:widgetbook_app/widgetbook.dart';

class ButtonGroupComponentBook extends WidgetbookComponent {
  ButtonGroupComponentBook({
    super.name = 'Button Group',
  }) : super(useCases: [
          ...ButtonGroupRadioCases.createCases(),
          ButtonGroupMultiSelectedCases(),
        ]);
}
