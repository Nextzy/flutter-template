export 'social_button_overview_case.dart';

import 'package:widgetbook_app/widgetbook.dart';

class SocialButtonComponents extends WidgetbookComponent {
  SocialButtonComponents({
    super.name = 'Social Button',
    super.isInitiallyExpanded = false,
  }) : super(
          useCases: [
            OverviewSocialButtonWidgetCase(),
          ],
        );
}
