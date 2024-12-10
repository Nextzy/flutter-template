// ignore_for_file: prefer_const_constructors
export 'navbar_custom_cases.dart';

import 'package:widgetbook_app/widgetbook.dart';

class NavigationBarWidgetBook extends WidgetbookComponent {
  NavigationBarWidgetBook({
    super.name = 'Navigation',
    super.isInitiallyExpanded = false,
  }) : super(
          useCases: [
            CustomTopNavigationBarWidgetCase(),
          ],
        );

}
