// ignore_for_file: prefer_const_constructors
export 'modal_custom_cases.dart';
export 'modal_soft_update_cases.dart';

import 'package:widgetbook_app/widgetbook.dart';

class ModalWidgetBook extends WidgetbookComponent {
  ModalWidgetBook({
    super.name = 'Modal',
    super.isInitiallyExpanded = false,
  }) : super(
          useCases: [
            CustomModalWidgetCase(),
            SoftUpdateModalWidgetCase(),
          ],
        );
}
