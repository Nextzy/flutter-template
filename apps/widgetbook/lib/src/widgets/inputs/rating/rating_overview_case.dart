import 'package:widgetbook_app/widgetbook.dart';

class OverviewRatingWidgetCase extends WidgetbookScrollableUseCase {
  OverviewRatingWidgetCase({super.name = 'Overview'})
      : super(
          builder: (context) => SectionH1Widgetbook(
            title: 'Rating',
            children: [
              AppRating(
                size: WidgetSize.sm,
                value: 5,
                showText: true,
              ),
              AppRating(
                style: AppRatingStyle.heart,
                value: 4,
                showText: true,
              ),
              AppRating(
                size: WidgetSize.lg,
                style: AppRatingStyle.dot,
                value: 3,
                showText: true,
              ),
              AppRating(
                size: WidgetSize.sm,
                value: 2,
                showText: true,
              ),
              AppRating(
                style: AppRatingStyle.heart,
                value: 1,
                showText: true,
              ),
              AppRating(
                size: WidgetSize.lg,
                style: AppRatingStyle.dot,
                value: 0,
                showText: true,
              ),
              AppRating(
                style: AppRatingStyle.emoji,
                value: 4.1,
              ),
            ],
          ),
        );
}
