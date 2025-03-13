import 'package:widgetbook_app/widgetbook.dart';

class TwitterPostEmbedWidgetCase extends WidgetbookScrollableUseCase {
  TwitterPostEmbedWidgetCase({super.name = 'Twitter Post'})
      : super(
          builder: (context) => SectionH1Widgetbook(
            title: 'Twitter Post Embed',
            children: [
              EmbedTwitterPost(
                url:
                    'https://twitter.com/FlutterDev/status/1890476103485001823',
              ),
            ],
          ),
        );
}
