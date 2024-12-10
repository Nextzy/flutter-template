// ignore_for_file: prefer_const_constructors

import 'package:widgetbook_app/widgetbook.dart';

class SingleInlineAlertMediumWidgetCase extends WidgetbookUseCase {
  SingleInlineAlertMediumWidgetCase({super.name = 'Medium'})
      : super(
          builder: (context) => SectionH1Widgetbook(
            title: 'Single Inline Alert Medium',
            children: [
              AppSingleInlineAlert(
                size: WidgetSize.md,
                feedbackState: FeedbackState.info,
                accent: AppAlertAccent.medium,
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
                accent: AppAlertAccent.medium,
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
                accent: AppAlertAccent.medium,
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
                accent: AppAlertAccent.medium,
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
                accent: AppAlertAccent.medium,
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
                accent: AppAlertAccent.medium,
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
                accent: AppAlertAccent.medium,
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
                accent: AppAlertAccent.medium,
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
