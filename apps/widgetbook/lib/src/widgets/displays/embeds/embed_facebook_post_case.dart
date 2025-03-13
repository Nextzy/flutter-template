import 'package:widgetbook_app/widgetbook.dart';

class FacebookPostEmbedWidgetCase extends WidgetbookScrollableUseCase {
  FacebookPostEmbedWidgetCase({super.name = 'Facebook Post'})
      : super(
          builder: (context) => SectionH1Widgetbook(
            title: 'Facebook Post Embed',
            children: [
              EmbedFacebookPost(
                url:
                    'https://www.facebook.com/FlutterCommunity/posts/pfbid0rs5a5c9vixPaLLHZfsE41RnxAhf6hP8p8iEdDLfCQu2wyMzmE1Ppr7745hCrfV2pl',
              )
            ],
          ),
        );
}
