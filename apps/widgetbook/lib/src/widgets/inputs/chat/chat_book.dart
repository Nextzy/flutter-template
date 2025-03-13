export 'chat_overview_case.dart';

import 'package:widgetbook_app/widgetbook.dart';

class ChatWidgetBook extends WidgetbookComponent {
  ChatWidgetBook({
    super.name = 'Chat',
    super.isInitiallyExpanded = false,
  }) : super(
          useCases: [
            OverviewChatWidgetCase(),
          ],
        );
}
