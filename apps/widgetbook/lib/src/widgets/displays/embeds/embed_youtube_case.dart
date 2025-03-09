import 'package:widgetbook_app/widgetbook.dart';

class YoutubeEmbedWidgetCase extends WidgetbookScrollableUseCase {
  YoutubeEmbedWidgetCase({super.name = 'Youtube'})
      : super(
          builder: (context) => SectionH1Widgetbook(
            title: 'Youtube Embed',
            children: [
              EmbedYoutube(
                url:
                    'https://www.youtube.com/embed/ukW-l_sRefg?si=15ro4BfNsSagTXiO',
              ),
            ],
          ),
        );
}
