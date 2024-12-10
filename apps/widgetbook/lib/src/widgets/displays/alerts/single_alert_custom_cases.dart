// ignore_for_file: prefer_const_constructors

import 'package:widgetbook_app/widgetbook.dart';

class CustomSingleInlineAlertWidgetCase extends WidgetbookUseCase {
  CustomSingleInlineAlertWidgetCase({super.name = 'Custom'})
      : super(
          builder: (context) => SectionH1Widgetbook(
            title: 'Single Inline Alert Light',
            children: [
              AppInfoSingleInlineAlert(
                showIcon: false,
                size: WidgetSize.sm,
                accent: AppAlertAccent.light,
                title: 'Short descriptive message',
              ),
              AppInfoSingleInlineAlert(
                showIcon: false,
                size: WidgetSize.sm,
                accent: AppAlertAccent.light,
                description:
                    'In a perfect world, content stays brief. Yet, when more words are essential, it unfolds like this.',
              ),
              AppInfoSingleInlineAlert(
                size: WidgetSize.sm,
                accent: AppAlertAccent.light,
                title: 'Short descriptive message',
              ),
              AppInfoSingleInlineAlert(
                accent: AppAlertAccent.light,
                title: 'Short descriptive message',
              ),
              AppInfoSingleInlineAlert(
                accent: AppAlertAccent.light,
                description:
                    'In a perfect world, content stays brief. Yet, when more words are essential, it unfolds like this.',
              ),
              AppInfoSingleInlineAlert(
                showIcon: false,
                size: WidgetSize.sm,
                accent: AppAlertAccent.strong,
                title: 'Short descriptive message',
              ),
              AppInfoSingleInlineAlert(
                size: WidgetSize.sm,
                accent: AppAlertAccent.strong,
                title: 'Short descriptive message',
              ),
              AppInfoSingleInlineAlert(
                accent: AppAlertAccent.strong,
                title: 'Short descriptive message',
              ),
              AppInfoSingleInlineAlert(
                showIcon: false,
                accent: AppAlertAccent.strong,
                description:
                    'In a perfect world, content stays brief. Yet, when more words are essential, it unfolds like this.',
              ),
            ],
          ),
        );
}
