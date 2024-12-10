// ignore_for_file: prefer_const_constructors

import 'package:widgetbook_app/widgetbook.dart';

class CustomIconButtonWidgetCase extends WidgetbookScrollableUseCase {
  CustomIconButtonWidgetCase({super.name = 'Custom'})
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
                      AppIconButton(
                        style: AppButtonStyle.filledBand,
                        size: WidgetSize.sm,
                        icon: Assets.icon.circle.keyName,
                        onPress: () {
                          Log.i('Tap');
                        },
                      ),
                      AppIconButton(
                        style: AppButtonStyle.filledBand,
                        size: WidgetSize.md,
                        icon: Assets.icon.circle.keyName,
                        onPress: () {
                          Log.i('Tap');
                        },
                      ),
                      AppIconButton(
                        style: AppButtonStyle.filledBand,
                        size: WidgetSize.lg,
                        icon: Assets.icon.circle.keyName,
                        onPress: () {
                          Log.i('Tap');
                        },
                      ),
                      AppIconButton(
                        style: AppButtonStyle.filledBand,
                        size: WidgetSize.lg,
                        loading: true,
                        icon: Assets.icon.circle.keyName,
                        onPress: () {
                          Log.i('Tap');
                        },
                      ),
                      AppIconButton(
                        style: AppButtonStyle.filledBand,
                        size: WidgetSize.lg,
                        disabled: true,
                        icon: Assets.icon.circle.keyName,
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
                    child: AppIconButton(
                      style: AppButtonStyle.filledBand,
                      size: WidgetSize.lg,
                      icon: Assets.icon.circle.keyName,
                      onPress: () {
                        Log.i('Tap');
                      },
                    ),
                  ),
                  SectionH3Widgetbook(
                    title: 'Custom size',
                    children: [
                      AppIconButton(
                        customIconSize: 40,
                        style: AppButtonStyle.filledBand,
                        size: WidgetSize.lg,
                        icon: Assets.icon.circle.keyName,
                        onPress: () {
                          Log.i('Tap');
                        },
                      ),
                      AppIconButton(
                        customIconSize: 40,
                        padding: EdgeInsets.all(20),
                        style: AppButtonStyle.filledBand,
                        size: WidgetSize.lg,
                        icon: Assets.icon.circle.keyName,
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
                      AppIconButton(
                        style: AppButtonStyle.filled,
                        size: WidgetSize.sm,
                        icon: Assets.icon.circle.keyName,
                        onPress: () {
                          Log.i('Tap');
                        },
                      ),
                      AppIconButton(
                        style: AppButtonStyle.filled,
                        size: WidgetSize.md,
                        icon: Assets.icon.circle.keyName,
                        onPress: () {
                          Log.i('Tap');
                        },
                      ),
                      AppIconButton(
                        style: AppButtonStyle.filled,
                        size: WidgetSize.lg,
                        icon: Assets.icon.circle.keyName,
                        onPress: () {
                          Log.i('Tap');
                        },
                      ),
                      AppIconButton(
                        style: AppButtonStyle.filled,
                        size: WidgetSize.lg,
                        loading: true,
                        icon: Assets.icon.circle.keyName,
                        onPress: () {
                          Log.i('Tap');
                        },
                      ),
                      AppIconButton(
                        style: AppButtonStyle.filled,
                        size: WidgetSize.lg,
                        disabled: true,
                        icon: Assets.icon.circle.keyName,
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
                      AppIconButton(
                        style: AppButtonStyle.outline,
                        size: WidgetSize.sm,
                        icon: Assets.icon.circle.keyName,
                        onPress: () {
                          Log.i('Tap');
                        },
                      ),
                      AppIconButton(
                        style: AppButtonStyle.outline,
                        size: WidgetSize.md,
                        icon: Assets.icon.circle.keyName,
                        onPress: () {
                          Log.i('Tap');
                        },
                      ),
                      AppIconButton(
                        style: AppButtonStyle.outline,
                        size: WidgetSize.lg,
                        icon: Assets.icon.circle.keyName,
                        onPress: () {
                          Log.i('Tap');
                        },
                      ),
                      AppIconButton(
                        style: AppButtonStyle.outline,
                        size: WidgetSize.lg,
                        loading: true,
                        icon: Assets.icon.circle.keyName,
                        onPress: () {
                          Log.i('Tap');
                        },
                      ),
                      AppIconButton(
                        style: AppButtonStyle.outline,
                        size: WidgetSize.lg,
                        disabled: true,
                        icon: Assets.icon.circle.keyName,
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
                      AppIconButton(
                        style: AppButtonStyle.text,
                        size: WidgetSize.sm,
                        icon: Assets.icon.circle.keyName,
                        onPress: () {
                          Log.i('Tap');
                        },
                      ),
                      AppIconButton(
                        style: AppButtonStyle.text,
                        size: WidgetSize.md,
                        icon: Assets.icon.circle.keyName,
                        onPress: () {
                          Log.i('Tap');
                        },
                      ),
                      AppIconButton(
                        style: AppButtonStyle.text,
                        size: WidgetSize.lg,
                        icon: Assets.icon.circle.keyName,
                        onPress: () {
                          Log.i('Tap');
                        },
                      ),
                      AppIconButton(
                        style: AppButtonStyle.text,
                        size: WidgetSize.lg,
                        loading: true,
                        icon: Assets.icon.circle.keyName,
                        onPress: () {
                          Log.i('Tap');
                        },
                      ),
                      AppIconButton(
                        style: AppButtonStyle.text,
                        size: WidgetSize.lg,
                        disabled: true,
                        icon: Assets.icon.circle.keyName,
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
                      AppIconButton(
                        style: AppButtonStyle.destructive,
                        size: WidgetSize.sm,
                        icon: Assets.icon.circle.keyName,
                        onPress: () {
                          Log.i('Tap');
                        },
                      ),
                      AppIconButton(
                        style: AppButtonStyle.destructive,
                        size: WidgetSize.md,
                        icon: Assets.icon.circle.keyName,
                        onPress: () {
                          Log.i('Tap');
                        },
                      ),
                      AppIconButton(
                        style: AppButtonStyle.destructive,
                        size: WidgetSize.lg,
                        icon: Assets.icon.circle.keyName,
                        onPress: () {
                          Log.i('Tap');
                        },
                      ),
                      AppIconButton(
                        style: AppButtonStyle.destructive,
                        size: WidgetSize.lg,
                        loading: true,
                        icon: Assets.icon.circle.keyName,
                        onPress: () {
                          Log.i('Tap');
                        },
                      ),
                      AppIconButton(
                        style: AppButtonStyle.destructive,
                        size: WidgetSize.lg,
                        disabled: true,
                        icon: Assets.icon.circle.keyName,
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
                      AppIconButton(
                        style: AppButtonStyle.shaded,
                        size: WidgetSize.sm,
                        icon: Assets.icon.circle.keyName,
                        onPress: () {
                          Log.i('Tap');
                        },
                      ),
                      AppIconButton(
                        style: AppButtonStyle.shaded,
                        size: WidgetSize.md,
                        icon: Assets.icon.circle.keyName,
                        onPress: () {
                          Log.i('Tap');
                        },
                      ),
                      AppIconButton(
                        style: AppButtonStyle.shaded,
                        size: WidgetSize.lg,
                        icon: Assets.icon.circle.keyName,
                        onPress: () {
                          Log.i('Tap');
                        },
                      ),
                      AppIconButton(
                        style: AppButtonStyle.shaded,
                        size: WidgetSize.lg,
                        loading: true,
                        icon: Assets.icon.circle.keyName,
                        onPress: () {
                          Log.i('Tap');
                        },
                      ),
                      AppIconButton(
                        style: AppButtonStyle.shaded,
                        size: WidgetSize.lg,
                        disabled: true,
                        icon: Assets.icon.circle.keyName,
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
