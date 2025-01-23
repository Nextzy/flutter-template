import 'package:widgetbook_app/widgetbook.dart';

class OverviewHorizontalStepsWidgetCase extends WidgetbookScrollableUseCase {
  OverviewHorizontalStepsWidgetCase({super.name = 'Overview'})
      : super(
          builder: (context) => SectionH1Widgetbook(
            title: 'Horizontal Steps',
            children: [
              SectionH2Widgetbook(
                children: [
                  WrapLayout(
                    gap: 20,
                    children: [
                      AppHorizontalSteps(
                        children: [
                          AppStepItem(
                              title: 'Step title',
                              description: 'Step description'),
                          AppStepItem(
                              title: 'Step title',
                              description: 'Step description'),
                        ],
                      ),
                      AppHorizontalSteps(
                        style: AppStepStyle.dot,
                        children: [
                          AppStepItem(
                              title: 'Step title',
                              description: 'Step description'),
                          AppStepItem(
                              title: 'Step title',
                              description: 'Step description'),
                        ],
                      ),
                      AppHorizontalSteps(
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
