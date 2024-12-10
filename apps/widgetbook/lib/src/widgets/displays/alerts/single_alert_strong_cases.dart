// ignore_for_file: prefer_const_constructors

import 'package:widgetbook_app/widgetbook.dart';

class SingleInlineAlertStrongWidgetCase extends WidgetbookUseCase {
  SingleInlineAlertStrongWidgetCase({super.name = 'Strong'})
      : super(
          builder: (context) => SectionH1Widgetbook(
            title: 'Single Inline Alert Strong',
            children: [
              AppSingleInlineAlert(
                size: WidgetSize.md,
                feedbackState: FeedbackState.info,
                accent: AppAlertAccent.strong,
                title: 'Short descriptive message',
                description:
                    'In a perfect world, content stays brief. Yet, when more words are essential, it unfolds like this.',
                buttonPrimaryText: 'OK',
                buttonSecondaryText: 'Cancel',
                onPrimaryPress: () {
                  Log.i('Tap');
                },
              ),
              AppSingleInlineAlert(
                size: WidgetSize.md,
                feedbackState: FeedbackState.warning,
                accent: AppAlertAccent.strong,
                title: 'Short descriptive message',
                description:
                    'In a perfect world, content stays brief. Yet, when more words are essential, it unfolds like this.',
                buttonPrimaryText: 'OK',
                buttonSecondaryText: 'Cancel',
                onPrimaryPress: () {
                  Log.i('Tap');
                },
              ),
              AppSingleInlineAlert(
                size: WidgetSize.md,
                feedbackState: FeedbackState.negative,
                accent: AppAlertAccent.strong,
                title: 'Short descriptive message',
                description:
                    'In a perfect world, content stays brief. Yet, when more words are essential, it unfolds like this.',
                buttonPrimaryText: 'OK',
                buttonSecondaryText: 'Cancel',
                onPrimaryPress: () {
                  Log.i('Tap');
                },
              ),
              AppSingleInlineAlert(
                size: WidgetSize.md,
                feedbackState: FeedbackState.positive,
                accent: AppAlertAccent.strong,
                title: 'Short descriptive message',
                description:
                    'In a perfect world, content stays brief. Yet, when more words are essential, it unfolds like this.',
                buttonPrimaryText: 'OK',
                buttonSecondaryText: 'Cancel',
                onPrimaryPress: () {
                  Log.i('Tap');
                },
              ),
              //======= SM =======//
              AppSingleInlineAlert(
                size: WidgetSize.sm,
                feedbackState: FeedbackState.info,
                accent: AppAlertAccent.strong,
                title: 'Short descriptive message',
                description:
                    'In a perfect world, content stays brief. Yet, when more words are essential, it unfolds like this.',
                buttonPrimaryText: 'OK',
                buttonSecondaryText: 'Cancel',
                onPrimaryPress: () {
                  Log.i('Tap');
                },
              ),
              AppSingleInlineAlert(
                size: WidgetSize.sm,
                feedbackState: FeedbackState.warning,
                accent: AppAlertAccent.strong,
                title: 'Short descriptive message',
                description:
                    'In a perfect world, content stays brief. Yet, when more words are essential, it unfolds like this.',
                buttonPrimaryText: 'OK',
                buttonSecondaryText: 'Cancel',
                onPrimaryPress: () {
                  Log.i('Tap');
                },
              ),
              AppSingleInlineAlert(
                size: WidgetSize.sm,
                feedbackState: FeedbackState.negative,
                accent: AppAlertAccent.strong,
                title: 'Short descriptive message',
                description:
                    'In a perfect world, content stays brief. Yet, when more words are essential, it unfolds like this.',
                buttonPrimaryText: 'OK',
                buttonSecondaryText: 'Cancel',
                onPrimaryPress: () {
                  Log.i('Tap');
                },
              ),
              AppSingleInlineAlert(
                size: WidgetSize.sm,
                feedbackState: FeedbackState.positive,
                accent: AppAlertAccent.strong,
                title: 'Short descriptive message',
                description:
                    'In a perfect world, content stays brief. Yet, when more words are essential, it unfolds like this.',
                buttonPrimaryText: 'OK',
                buttonSecondaryText: 'Cancel',
                onPrimaryPress: () {
                  Log.i('Tap');
                },
              ),
            ],
          ),
        );
}
