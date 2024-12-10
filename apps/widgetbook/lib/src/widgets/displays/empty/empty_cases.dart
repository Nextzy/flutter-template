import 'package:widgetbook_app/widgetbook.dart';

class EmptyWidgetCase extends WidgetbookScrollableUseCase {
  EmptyWidgetCase({super.name = 'Custom'})
      : super(
          builder: (context) => SectionH1Widgetbook(
            title: 'Empty',
            children: [
              AppEmpty(
                size: WidgetSize.sm,
                title: EmptyWidgetBook.createTextTitleOption(context),
                accent: AppEmptyAccent.light,
                center: true,
                icon: Assets.icon.circle.keyName,
                buttonPrimaryText: 'Button',
                buttonSecondaryText: 'Button',
                description:
                    'In a perfect world, content stays brief. Yet, when more words are essential, it unfolds like this.',
                onPrimaryPress: () {
                  Log.i('Tap');
                },
                onSecondaryPress: () {
                  Log.i('Tap');
                },
              ),
              AppEmpty(
                size: WidgetSize.sm,
                title: EmptyWidgetBook.createTextTitleOption(context),
                accent: AppEmptyAccent.medium,
                center: true,
                icon: Assets.icon.circle.keyName,
                buttonPrimaryText: 'Button',
                buttonSecondaryText: 'Button',
                description:
                    'In a perfect world, content stays brief. Yet, when more words are essential, it unfolds like this.',
                onPrimaryPress: () {
                  Log.i('Tap');
                },
                onSecondaryPress: () {
                  Log.i('Tap');
                },
              ),
              AppEmpty(
                size: WidgetSize.sm,
                title: EmptyWidgetBook.createTextTitleOption(context),
                accent: AppEmptyAccent.medium,
                center: false,
                icon: Assets.icon.circle.keyName,
                buttonPrimaryText: 'Button',
                buttonSecondaryText: 'Button',
                description:
                    'In a perfect world, content stays brief. Yet, when more words are essential, it unfolds like this.',
                onPrimaryPress: () {
                  Log.i('Tap');
                },
                onSecondaryPress: () {
                  Log.i('Tap');
                },
              ),
              AppEmpty(
                size: WidgetSize.md,
                title: EmptyWidgetBook.createTextTitleOption(context),
                accent: AppEmptyAccent.medium,
                center: false,
                icon: Assets.icon.circle.keyName,
                buttonPrimaryText: 'Button',
                buttonSecondaryText: 'Button',
                description:
                    'In a perfect world, content stays brief. Yet, when more words are essential, it unfolds like this.',
                onPrimaryPress: () {
                  Log.i('Tap');
                },
                onSecondaryPress: () {
                  Log.i('Tap');
                },
              ),
              AppEmpty(
                size: WidgetSize.md,
                title: EmptyWidgetBook.createTextTitleOption(context),
                accent: AppEmptyAccent.strong,
                image: Container(
                  child: Assets.icon.watchRegular.svgIcon(
                    size: 100,
                  ),
                ),
                center: false,
                icon: Assets.icon.circle.keyName,
                buttonPrimaryText: 'Button',
                buttonSecondaryText: 'Button',
                description:
                    'In a perfect world, content stays brief. Yet, when more words are essential, it unfolds like this.',
                onPrimaryPress: () {
                  Log.i('Tap');
                },
                onSecondaryPress: () {
                  Log.i('Tap');
                },
              ),
              AppEmpty(
                size: WidgetSize.md,
                title: EmptyWidgetBook.createTextTitleOption(context),
                accent: AppEmptyAccent.strong,
                image: Assets.illustration.empty.svg(),
                center: true,
                icon: Assets.icon.circle.keyName,
                buttonPrimaryText: 'Button',
                buttonSecondaryText: 'Button',
                description:
                    'In a perfect world, content stays brief. Yet, when more words are essential, it unfolds like this.',
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
