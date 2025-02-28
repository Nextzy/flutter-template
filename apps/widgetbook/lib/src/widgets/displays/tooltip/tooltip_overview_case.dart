import 'package:widgetbook_app/widgetbook.dart';

class OverviewTooltipWidgetCase extends WidgetbookScrollableUseCase {
  OverviewTooltipWidgetCase({super.name = 'Overview'})
      : super(
          builder: (context) => SectionH1Widgetbook(
            title: 'Tooltip',
            children: [
              SectionH2Widgetbook(
                children: [
                  AppTooltip(
                    message: 'Tooltip',
                    child: AppText('Tooltip'),
                  ),
                  AppTooltip(
                    message: 'Tooltip',
                    child: AppText('Tooltip'),
                  ),
                  AppTooltip(
                    message: 'Tooltip',
                    child: AppText('Tooltip'),
                  ),
                  AppTooltip(
                    message: 'Tooltip',
                    child: AppText('Tooltip'),
                  ),
                ],
              ),
            ],
          ),
        );
}
