// ignore_for_file: prefer_const_constructors

import 'package:widgetbook_app/widgetbook.dart';

class OverviewIconButtonWidgetCase extends WidgetbookScrollableUseCase {
  OverviewIconButtonWidgetCase({super.name = 'Overview'})
      : super(
          builder: (context) => SectionH1Widgetbook(
            title: 'Button',
            children: [
              SectionH2Widgetbook(
                title: 'Brand Filled Button',
                children: [
                  ColumnLayout(
                    gap: 20,
                    crossAxisAlignment: CrossAxisAlignment.start,
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
                ],
              ),
              SectionH2Widgetbook(
                title: 'Custom Size Button',
                children: [
                  SectionH3Widgetbook(
                    title: 'Expanded',
                    child: AppButton(
                      style: AppButtonStyle.filledBand,
                      size: WidgetSize.lg,
                      expanded: true,
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
                  ),
                  SectionH3Widgetbook(
                    title: 'Custom size',
                    children: [
                      AppButton(
                        width: 300,
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
                        width: 300,
                        height: 80,
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
                    ],
                  ),
                ],
              ),
              SectionH2Widgetbook(
                title: 'Filled Button',
                children: [
                  ColumnLayout(
                    gap: 20,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      AppButton(
                        style: AppButtonStyle.filled,
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
                        style: AppButtonStyle.filled,
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
                        style: AppButtonStyle.filled,
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
                        style: AppButtonStyle.filled,
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
                        style: AppButtonStyle.filled,
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
                ],
              ),
              SectionH2Widgetbook(
                title: 'Outline Button',
                children: [
                  ColumnLayout(
                    gap: 20,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      AppButton(
                        style: AppButtonStyle.outline,
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
                        style: AppButtonStyle.outline,
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
                        style: AppButtonStyle.outline,
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
                        style: AppButtonStyle.outline,
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
                        style: AppButtonStyle.outline,
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
                ],
              ),
              SectionH2Widgetbook(
                title: 'Text Button',
                children: [
                  ColumnLayout(
                    gap: 20,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      AppButton(
                        style: AppButtonStyle.text,
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
                        style: AppButtonStyle.text,
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
                        style: AppButtonStyle.text,
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
                        style: AppButtonStyle.text,
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
                        style: AppButtonStyle.text,
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
                ],
              ),
              SectionH2Widgetbook(
                title: 'Destructive Button',
                children: [
                  ColumnLayout(
                    gap: 20,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      AppButton(
                        style: AppButtonStyle.destructive,
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
                        style: AppButtonStyle.destructive,
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
                        style: AppButtonStyle.destructive,
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
                        style: AppButtonStyle.destructive,
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
                        style: AppButtonStyle.destructive,
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
                ],
              ),
              SectionH2Widgetbook(
                title: 'Shaded Button',
                children: [
                  ColumnLayout(
                    gap: 20,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      AppButton(
                        style: AppButtonStyle.shaded,
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
                        style: AppButtonStyle.shaded,
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
                        style: AppButtonStyle.shaded,
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
                        style: AppButtonStyle.shaded,
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
                        style: AppButtonStyle.shaded,
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
                ],
              ),
            ],
          ),
        );
}
