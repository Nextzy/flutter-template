import 'package:widgetbook_app/widgetbook.dart';

class OverviewTutorialWidgetCase extends WidgetbookScrollableUseCase {
  OverviewTutorialWidgetCase({super.name = 'Overview'})
      : super(
          builder: (context) => SectionH1Widgetbook(
            title: 'Tutorial',
            children: [
              SectionH2Widgetbook(
                children: [AppTutorial()],
              ),
            ],
          ),
        );
}
