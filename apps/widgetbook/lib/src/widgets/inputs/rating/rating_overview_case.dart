import 'package:widgetbook_app/widgetbook.dart';

class OverviewRatingWidgetCase extends WidgetbookScrollableUseCase {
  OverviewRatingWidgetCase({super.name = 'Overview'})
      : super(
          builder: (context) => SectionH1Widgetbook(
            title: 'Rating',
            children: [
              AppRating(
                size: WidgetSize.sm,
                defaultValue: 5,
                showText: true,
              ),
              AppRating(
                style: AppRatingStyle.heart,
                defaultValue: 4,
                showText: true,
              ),
              AppRating(
                size: WidgetSize.lg,
                style: AppRatingStyle.dot,
                defaultValue: 3,
                showText: true,
              ),
              AppRating(
                size: WidgetSize.sm,
                defaultValue: 2,
                showText: true,
              ),
              AppRating(
                style: AppRatingStyle.heart,
                defaultValue: 1,
                showText: true,
              ),
              AppRating(
                size: WidgetSize.lg,
                style: AppRatingStyle.dot,
                defaultValue: 0,
                showText: true,
              ),
              AppRating(
                style: AppRatingStyle.emoji,
                defaultValue: 4.1,
              ),
            ],
          ),
        );
}
