// ignore_for_file: prefer_const_constructors

import 'package:widgetbook_app/widgetbook.dart';

class CustomMenuItemWidgetCase extends WidgetbookScrollableUseCase {
  CustomMenuItemWidgetCase({super.name = 'Custom'})
      : super(
          builder: (context) => SectionH1Widgetbook(
            title: 'Custom',
            children: [
              AppMenuItem(
                size: WidgetSize.sm,
                icon: Assets.icon.circle.keyName,
                label: 'Menu item',
                avatar: AppCircleAvatar(
                  style: WidgetStyle.subtle,
                  size: WidgetSize.xs,
                  title: 'Nonthawit Doungsodsri Text',
                  statusDot: null,
                  path: Assets.mock.avatarSquared1.keyName,
                ),
                description: 'Helpful description of the option',
                hasSubMenu: true,
                onPress: () {
                  Log.i('Tap');
                },
              ),
              AppMenuItem(
                size: WidgetSize.md,
                icon: Assets.icon.circle.keyName,
                label: 'Menu item',
                avatar: AppCircleAvatar(
                  style: WidgetStyle.subtle,
                  size: WidgetSize.sm,
                  title: 'Nonthawit Doungsodsri Text',
                  statusDot: null,
                  path: Assets.mock.avatarSquared1.keyName,
                ),
                description: 'Helpful description of the option',
                hasSubMenu: true,
                onPress: () {
                  Log.i('Tap');
                },
              ),
              AppMenuItem(
                size: WidgetSize.lg,
                icon: Assets.icon.circle.keyName,
                label: 'Menu item',
                avatar: AppCircleAvatar(
                  style: WidgetStyle.subtle,
                  size: WidgetSize.sm,
                  title: 'Nonthawit Doungsodsri Text',
                  statusDot: null,
                  path: Assets.mock.avatarSquared1.keyName,
                ),
                description: 'Helpful description of the option',
                hasSubMenu: true,
                onPress: () {
                  Log.i('Tap');
                },
              ),
            ],
          ),
        );
}
