// ignore_for_file: prefer_const_constructors
export 'iframe_custom_cases.dart';

import 'package:widgetbook_app/widgetbook.dart';

class IframeWidgetBook extends WidgetbookComponent {
  IframeWidgetBook({
    super.name = 'iFrame',
    super.isInitiallyExpanded = false,
  }) : super(
          useCases: [
            CustomIframeWidgetCase(),
          ],
        );
}
