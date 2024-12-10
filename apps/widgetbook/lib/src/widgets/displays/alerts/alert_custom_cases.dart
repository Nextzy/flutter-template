// ignore_for_file: prefer_const_constructors

import 'package:widgetbook_app/widgetbook.dart';

class CustomInlineAlertWidgetCase extends WidgetbookUseCase {
  CustomInlineAlertWidgetCase({super.name = 'Custom'})
      : super(
          builder: (context) => SectionH1Widgetbook(
            title: 'Inline Alert Light',
            children: [
              AppInfoInlineAlert(
                showIcon: false,
                size: WidgetSize.sm,
                accent: AppAlertAccent.light,
                title: 'Short descriptive message',
              ),
              AppInfoInlineAlert(
                showIcon: false,
                size: WidgetSize.sm,
                accent: AppAlertAccent.light,
                description:
                    'In a perfect world, content stays brief. Yet, when more words are essential, it unfolds like this.',
              ),
              AppInfoInlineAlert(
                size: WidgetSize.sm,
                accent: AppAlertAccent.light,
                title: 'Short descriptive message',
              ),
              AppInfoInlineAlert(
                accent: AppAlertAccent.light,
                title: 'Short descriptive message',
              ),
              AppInfoInlineAlert(
                accent: AppAlertAccent.light,
                description:
                    'In a perfect world, content stays brief. Yet, when more words are essential, it unfolds like this.',
              ),
              AppInfoInlineAlert(
                showIcon: false,
                size: WidgetSize.sm,
                accent: AppAlertAccent.strong,
                title: 'Short descriptive message',
              ),
              AppInfoInlineAlert(
                size: WidgetSize.sm,
                accent: AppAlertAccent.strong,
                title: 'Short descriptive message',
              ),
              AppInfoInlineAlert(
                accent: AppAlertAccent.strong,
                title: 'Short descriptive message',
              ),
              AppInfoInlineAlert(
                showIcon: false,
                accent: AppAlertAccent.strong,
                description:
                    'In a perfect world, content stays brief. Yet, when more words are essential, it unfolds like this.',
              ),
            ],
          ),
        );
}
