export 'embed_google_map_case.dart';
export 'embed_facebook_post_case.dart';
export 'embed_instagram_post_case.dart';
export 'embed_twitter_post_case.dart';
export 'embed_youtube_case.dart';

import 'package:widgetbook_app/widgetbook.dart';

class EmbedWidgetBook extends WidgetbookComponent {
  EmbedWidgetBook({
    super.name = 'Embed',
    super.isInitiallyExpanded = false,
  }) : super(
          useCases: [
            GoogleMapEmbedWidgetCase(),
            FacebookPostEmbedWidgetCase(),
            InstagramPostEmbedWidgetCase(),
            TwitterPostEmbedWidgetCase(),
            YoutubeEmbedWidgetCase(),
          ],
        );
}
