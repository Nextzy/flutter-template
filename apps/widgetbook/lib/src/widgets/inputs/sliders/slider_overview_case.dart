import 'package:widgetbook_app/widgetbook.dart';

class OverviewHorizontalSliderWidgetCase extends WidgetbookScrollableUseCase {
  OverviewHorizontalSliderWidgetCase({super.name = 'Overview'})
      : super(
          builder: (context) => SectionH1Widgetbook(
            title: 'Horizontal Slider',
            children: [
              AppHorizontalSlider(
                size: WidgetSize.sm,
                label: 'Label',
                min: 0,
                max: 100,
                divisions: 10,
                helperText: 'Hint is a helpful description',
              ),
              AppHorizontalSlider(
                label: 'Label',
                min: 0,
                max: 100,
                divisions: 10,
                helperText: 'Hint is a helpful description',
                minMaxPosition: HorizontalSliderMinMaxPosition.top,
              ),
              AppHorizontalSlider(
                size: WidgetSize.lg,
                label: 'Label',
                min: 0,
                max: 100,
                divisions: 10,
                helperText: 'Hint is a helpful description',
                minMaxPosition: HorizontalSliderMinMaxPosition.side,
              ),
              AppHorizontalSlider(
                size: WidgetSize.sm,
                label: 'Label',
                min: 0,
                max: 100,
                divisions: 10,
                helperText: 'Hint is a helpful description',
                minMaxPosition: HorizontalSliderMinMaxPosition.bottom,
              ),
              AppHorizontalSlider(
                defaultValue: 50,
                label: 'Label',
                min: 0,
                max: 100,
                divisions: 10,
                helperText: 'Hint is a helpful description',
                disabled: true,
              ),
            ],
          ),
        );
}
