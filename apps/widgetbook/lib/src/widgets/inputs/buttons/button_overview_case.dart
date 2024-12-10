// ignore_for_file: prefer_const_constructors

import 'package:widgetbook_app/widgetbook.dart';

class OverviewButtonWidgetCase extends WidgetbookScrollableUseCase {
  OverviewButtonWidgetCase({super.name = 'Overview'})
      : super(
          builder: (context) => SectionH1Widgetbook(
            title: 'Overview',
            children: [
              AppButton(
                style: AppButtonStyle.filledBand,
                size: WidgetSize.sm,
                text: 'Button',
                startIcon: Assets.icon.circle.keyName,
                badge: null,
                endIcon: Assets.icon.circle.keyName,
                onPress: () {
                  Log.i('Tap');
                },
              ),
              AppButton(
                style: AppButtonStyle.filledBand,
                size: WidgetSize.md,
                text: 'Button',
                startIcon: Assets.icon.circle.keyName,
                badge: null,
                endIcon: Assets.icon.circle.keyName,
                onPress: () {
                  Log.i('Tap');
                },
              ),
              AppButton(
                style: AppButtonStyle.filledBand,
                size: WidgetSize.lg,
                text: 'Button',
                startChild: Container(
                  width: 40,
                  color: AppColor.amber.c500,
                ),
                startIcon: Assets.icon.circle.keyName,
                badge: null,
                endIcon: Assets.icon.circle.keyName,
                endChild: Container(
                  width: 40,
                ),
                onPress: () {
                  Log.i('Tap');
                },
              ),
              AppButton(
                style: AppButtonStyle.filledBand,
                size: WidgetSize.lg,
                text: 'Loading',
                startChild: Container(
                  width: 40,
                  color: AppColor.amber.c500,
                ),
                startIcon: Assets.icon.circle.keyName,
                badge: null,
                endIcon: Assets.icon.circle.keyName,
                endChild: Container(
                  width: 40,
                ),
                onPress: () {
                  Log.i('Tap');
                },
              ),
              AppButton(
                style: AppButtonStyle.filledBand,
                size: WidgetSize.lg,
                disabled: true,
                text: 'Button',
                startChild: Container(
                  width: 40,
                  color: AppColor.amber.c500,
                ),
                startIcon: Assets.icon.circle.keyName,
                badge: null,
                endIcon: Assets.icon.circle.keyName,
                endChild: Container(
                  width: 40,
                ),
                onPress: () {
                  Log.i('Tap');
                },
              ),
            ],
          ),
        );
}
