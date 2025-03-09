import 'package:widgetbook_app/widgetbook.dart';

class OverviewVideoPlayerWidgetCase extends WidgetbookScrollableUseCase {
  OverviewVideoPlayerWidgetCase({super.name = 'Overview'})
      : super(
          builder: (context) => SectionH1Widgetbook(
            title: 'Video Player',
            children: [
              SectionH2Widgetbook(
                children: [
                  AppVideoPlayer(
                      url:
                          'https://flutter.github.io/assets-for-api-docs/assets/videos/butterfly.mp4')
                ],
              ),
            ],
          ),
        );
}
