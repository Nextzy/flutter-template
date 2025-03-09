export 'audio_player_overview_case.dart';

import 'package:widgetbook_app/widgetbook.dart';

class AudioPlayerWidgetBook extends WidgetbookComponent {
  AudioPlayerWidgetBook({
    super.name = 'Audio Player',
    super.isInitiallyExpanded = false,
  }) : super(
          useCases: [
            OverviewAudioPlayerWidgetCase(),
          ],
        );
}
