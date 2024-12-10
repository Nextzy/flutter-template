// ignore_for_file: prefer_const_constructors

import 'package:widgetbook_app/widgetbook.dart';

class OverviewAvatarWidgetCase extends WidgetbookScrollableUseCase {
  OverviewAvatarWidgetCase({super.name = 'Overview'})
      : super(
          builder: (context) => SectionH1Widgetbook(
            title: 'Avatar',
            children: [
              SectionH2Widgetbook(
                children: [
                  WrapLayout(
                    gap: 20,
                    children: [
                      AppCircleAvatar(
                        style: WidgetStyle.subtle,
                        size: WidgetSize.lg,
                        path:Assets.mock.avatarSquared.keyName,
                        badge: null,
                        title: 'Nonthawit Doungsodsri Text',
                      ),
                      AppCircleAvatar(
                        style: WidgetStyle.subtle,
                        size: WidgetSize.lg,
                        title: 'Nonthawit Doungsodsri Text',
                        statusDot: null,
                        path:Assets.mock.avatarSquared1.keyName,
                      ),
                      AppCircleAvatar(
                        style: WidgetStyle.filled,
                        size: WidgetSize.lg,
                        title: 'Nonthawit Doungsodsri Text',
                      ),
                      AppCircleAvatar(
                        style: WidgetStyle.subtle,
                        size: WidgetSize.lg,
                        title: 'Nonthawit Doungsodsri Text',
                      ),
                      AppCircleAvatar(
                        style: WidgetStyle.subtle,
                        size: WidgetSize.lg,
                        title: 'Nonthawit Doungsodsri Text',
                        statusRing: null,
                        path:Assets.mock.avatarSquared2.keyName,
                      ),
                    ],
                  ),
                  WrapLayout(
                    gap: 20,
                    children: [
                      AppSquareAvatar(
                        style: WidgetStyle.subtle,
                        size: WidgetSize.lg,
                        path:Assets.mock.avatarSquared.keyName,
                        badge: null,
                        title: 'Nonthawit Doungsodsri Text',
                      ),
                      AppSquareAvatar(
                        style: WidgetStyle.subtle,
                        size: WidgetSize.lg,
                        title: 'Nonthawit Doungsodsri Text',
                        statusDot: null,
                        path:Assets.mock.avatarSquared1.keyName,
                      ),
                      AppSquareAvatar(
                        style: WidgetStyle.filled,
                        size: WidgetSize.lg,
                        title: 'Nonthawit Doungsodsri Text',
                      ),
                      AppSquareAvatar(
                        style: WidgetStyle.subtle,
                        size: WidgetSize.lg,
                        title: 'Nonthawit Doungsodsri Text',
                      ),
                      AppSquareAvatar(
                        style: WidgetStyle.subtle,
                        size: WidgetSize.lg,
                        title: 'Nonthawit Doungsodsri Text',
                        statusRing: null,
                        path:Assets.mock.avatarSquared2.keyName,
                      ),
                    ],
                  ),
                ],
              ),
            ],
          ),
        );
}
