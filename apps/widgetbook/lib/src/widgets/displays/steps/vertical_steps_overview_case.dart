import 'package:widgetbook_app/widgetbook.dart';

class OverviewVerticalStepsWidgetCase extends WidgetbookScrollableUseCase {
  OverviewVerticalStepsWidgetCase({super.name = 'Overview'})
      : super(
          builder: (context) => SectionH1Widgetbook(
            title: 'Vertical Steps',
            children: [
              SectionH2Widgetbook(
                children: [
                  WrapLayout(
                    gap: 20,
                    children: [
                      AppVerticalSteps(
                        children: [
                          AppStepItem(
                              title: 'Step title',
                              description: 'Step description'),
                          AppStepItem(
                              title: 'Step title',
                              description: 'Step description'),
                        ],
                      ),
                      AppVerticalSteps(
                        style: AppStepStyle.dot,
                        defaultValue: 2,
                        children: [
                          AppStepItem(
                              title: 'Step title',
                              description: 'Step description'),
                          AppStepItem(
                              title: 'Step title',
                              description: 'Step description'),
                          AppStepItem(
                              title: 'Step title',
                              description: 'Step description'),
                        ],
                      ),
                      AppVerticalSteps(
                        style: AppStepStyle.icon,
                        children: [
                          AppStepItem(
                              title: 'Step title',
                              description: 'Step description',
                              icon: Assets.icon.infoRegular.keyName),
                          AppStepItem(
                              title: 'Step title',
                              description: 'Step description',
                              icon: Assets.icon.infoRegular.keyName),
                        ],
                      )
                    ],
                  )
                ],
              ),
            ],
          ),
        );
}
