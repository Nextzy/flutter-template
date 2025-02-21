import 'package:widgetbook_app/widgetbook.dart';

class OverviewVerticalSliderWidgetCase extends WidgetbookScrollableUseCase {
  OverviewVerticalSliderWidgetCase({super.name = 'Overview'})
      : super(
          builder: (context) => SectionH1Widgetbook(
            title: 'Vertical Slider',
            children: [
              AppVerticalSlider(
                size: WidgetSize.sm,
                min: 0,
                max: 100,
                divisions: 10,
              ),
              AppVerticalSlider(
                min: 0,
                max: 100,
                divisions: 10,
              ),
              AppVerticalSlider(
                size: WidgetSize.lg,
                min: 0,
                max: 100,
                divisions: 10,
              ),
              AppVerticalSlider(
                defaultValue: 50,
                size: WidgetSize.sm,
                min: 0,
                max: 100,
                divisions: 10,
                disabled: true,
              ),
            ],
          ),
        );
}
