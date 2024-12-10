// ignore_for_file: prefer_const_constructors

import 'package:widgetbook_app/widgetbook.dart';

class CustomModalWidgetCase extends WidgetbookScrollableUseCase {
  CustomModalWidgetCase({super.name = 'Custom'})
      : super(
          builder: (context) => SectionH1Widgetbook(
            title: 'Modal',
            children: [
              AppModal(
                title: 'Short descriptive message',
                description:
                    'In a perfect world, content stays brief. Yet, when more words are essential, it unfolds like this.',
                icon: Assets.icon.circle.keyName,
                buttonPrimaryText: 'OK',
                buttonSecondaryText: 'Cancel',
                buttonTertiaryText: 'Third',
                onPrimaryPress: () {
                  Log.i('Tap');
                },
                onSecondaryPress: () {
                  Log.i('Tap');
                },
                onTertiaryPress: () {
                  Log.i('Tap');
                },
              ),
              AppModal(
                title: 'Short descriptive message',
                description:
                    'In a perfect world, content stays brief. Yet, when more words are essential, it unfolds like this.',
                feedbackState: FeedbackState.info,
                contentAlign: AppModalContentAlign.start,
                actionAlign: AppModalActionAlign.start,
                buttonPrimaryText: 'OK',
                buttonSecondaryText: 'Cancel',
                buttonTertiaryText: 'Third',
                onPrimaryPress: () {
                  Log.i('Tap');
                },
                onSecondaryPress: () {
                  Log.i('Tap');
                },
                onTertiaryPress: () {
                  Log.i('Tap');
                },
              ),
              AppModal(
                title: 'Short descriptive message',
                description:
                    'In a perfect world, content stays brief. Yet, when more words are essential, it unfolds like this.',
                feedbackState: FeedbackState.info,
                contentAlign: AppModalContentAlign.center,
                actionAlign: AppModalActionAlign.center,
                buttonPrimaryText: 'OK',
                buttonSecondaryText: 'Cancel',
                buttonTertiaryText: 'Third',
                onPrimaryPress: () {
                  Log.i('Tap');
                },
                onSecondaryPress: () {
                  Log.i('Tap');
                },
                onTertiaryPress: () {
                  Log.i('Tap');
                },
              ),
              AppModal(
                title: 'Short descriptive message',
                description:
                    'In a perfect world, content stays brief. Yet, when more words are essential, it unfolds like this.',
                feedbackState: FeedbackState.info,
                contentAlign: AppModalContentAlign.center,
                actionAlign: AppModalActionAlign.end,
                buttonPrimaryText: 'OK',
                buttonSecondaryText: 'Cancel',
                buttonTertiaryText: 'Third',
                onPrimaryPress: () {
                  Log.i('Tap');
                },
                onSecondaryPress: () {
                  Log.i('Tap');
                },
                onTertiaryPress: () {
                  Log.i('Tap');
                },
              ),
              AppModal(
                title: 'Short descriptive message',
                description:
                    'In a perfect world, content stays brief. Yet, when more words are essential, it unfolds like this.',
                feedbackState: FeedbackState.info,
                contentAlign: AppModalContentAlign.center,
                actionAlign: AppModalActionAlign.end,
                buttonPrimaryText: 'OK',
                buttonSecondaryText: 'Cancel',
                buttonTertiaryText: 'Third',
                onPrimaryPress: () {
                  Log.i('Tap');
                },
                onSecondaryPress: () {
                  Log.i('Tap');
                },
                onTertiaryPress: () {
                  Log.i('Tap');
                },
              ),
              AppModal(
                title: 'Short descriptive message',
                description:
                    'In a perfect world, content stays brief. Yet, when more words are essential, it unfolds like this.',
                feedbackState: FeedbackState.warning,
                contentAlign: AppModalContentAlign.center,
                actionAlign: AppModalActionAlign.fullWidthVertical,
                buttonPrimaryText: 'OK',
                buttonSecondaryText: 'Cancel',
                buttonTertiaryText: 'Third',
                onPrimaryPress: () {
                  Log.i('Tap');
                },
                onSecondaryPress: () {
                  Log.i('Tap');
                },
                onTertiaryPress: () {
                  Log.i('Tap');
                },
              ),
              AppModal(
                title: 'Short descriptive message',
                description:
                    'In a perfect world, content stays brief. Yet, when more words are essential, it unfolds like this.',
                feedbackState: FeedbackState.negative,
                buttonPrimaryText: 'OK',
                buttonSecondaryText: 'Cancel',
                buttonTertiaryText: 'Third',
                onPrimaryPress: () {
                  Log.i('Tap');
                },
                onSecondaryPress: () {
                  Log.i('Tap');
                },
                onTertiaryPress: () {
                  Log.i('Tap');
                },
              ),
            ],
          ),
        );
}
