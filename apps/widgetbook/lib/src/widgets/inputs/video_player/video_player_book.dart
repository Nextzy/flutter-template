export 'video_player_overview_case.dart';

import 'package:widgetbook_app/widgetbook.dart';

class VideoPlayerWidgetBook extends WidgetbookComponent {
  VideoPlayerWidgetBook({
    super.name = 'Video Player',
    super.isInitiallyExpanded = false,
  }) : super(
          useCases: [
            OverviewVideoPlayerWidgetCase(),
          ],
        );
}
