import 'package:widgetbook_app/widgetbook.dart';

class InstagramPostEmbedWidgetCase extends WidgetbookScrollableUseCase {
  InstagramPostEmbedWidgetCase({super.name = 'Instagram Post'})
      : super(
          builder: (context) => SectionH1Widgetbook(
            title: 'Instagram Post Embed',
            children: [
              EmbedInstagramPost(
                url: 'https://www.instagram.com/p/CoZOiOXrqXF/',
              ),
            ],
          ),
        );
}
