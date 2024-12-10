export 'bottom_navigation_cases.dart';

import 'package:widgetbook_app/widgetbook.dart';

class BottomNavigationBook extends WidgetbookComponent {
  BottomNavigationBook({
    super.name = 'Bottom Navigation',
  }) : super(useCases: [
          ...BottomNavigationCases.createCases(),
        ]);
}
