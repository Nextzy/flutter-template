// ignore_for_file: prefer_const_constructors

import 'package:widgetbook_app/widgetbook.dart';

class InlineAlertStrongWidgetCase extends WidgetbookUseCase {
  InlineAlertStrongWidgetCase({super.name = 'Strong'})
      : super(
          builder: (context) => SectionH1Widgetbook(
            title: 'Inline Alert Strong',
            children: [
              AppInlineAlert(
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
                onSecondaryPress: () {
                  Log.i('Tap');
                },
              ),
              AppInlineAlert(
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
                onSecondaryPress: () {
                  Log.i('Tap');
                },
              ),
              AppInlineAlert(
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
                onSecondaryPress: () {
                  Log.i('Tap');
                },
              ),
              AppInlineAlert(
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
                onSecondaryPress: () {
                  Log.i('Tap');
                },
              ),
              //======= SM =======//
              AppInlineAlert(
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
                onSecondaryPress: () {
                  Log.i('Tap');
                },
              ),
              AppInlineAlert(
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
                onSecondaryPress: () {
                  Log.i('Tap');
                },
              ),
              AppInlineAlert(
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
                onSecondaryPress: () {
                  Log.i('Tap');
                },
              ),
              AppInlineAlert(
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
                onSecondaryPress: () {
                  Log.i('Tap');
                },
              ),
            ],
          ),
        );
}
