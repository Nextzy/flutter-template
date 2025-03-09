import 'package:widgetbook_app/widgetbook.dart';

class OverviewColorPickerWidgetCase extends WidgetbookScrollableUseCase {
  OverviewColorPickerWidgetCase({super.name = 'Overview'})
      : super(
          builder: (context) => SectionH1Widgetbook(
            title: 'Color Picker',
            children: [
              AppColorPicker(text: 'Select'),
            ],
          ),
        );
}
