// ignore_for_file: prefer_const_constructors

import 'package:widgetbook_app/widgetbook.dart';

class SquareAvatarWidgetCase extends WidgetbookScrollableUseCase {
  SquareAvatarWidgetCase({super.name = 'Square'})
      : super(
          builder: (context) => SectionH1Widgetbook(
            title: 'Square Avatar',
            children: [
              SectionH2Widgetbook(
                title: 'Subtle',
                children: [
                  WrapLayout(
                    gap: 20,
                    children: [
                      AppSquareAvatar(
                        style: WidgetStyle.subtle,
                        size: WidgetSize.xs,
                        title: 'Nonthawit Doungsodsri Text',
                      ),
                      AppSquareAvatar(
                        style: WidgetStyle.subtle,
                        size: WidgetSize.sm,
                        title: 'Nonthawit Doungsodsri Text',
                        color: AppColor.teal.c500,
                      ),
                      AppSquareAvatar(
                        style: WidgetStyle.subtle,
                        size: WidgetSize.md,
                        title: 'Nonthawit Doungsodsri Text',
                        color: AppColor.amber.c500,
                      ),
                      AppSquareAvatar(
                        style: WidgetStyle.subtle,
                        size: WidgetSize.lg,
                        title: 'Nonthawit Doungsodsri Text',
                        color: AppColor.green.c500,
                      ),
                      AppSquareAvatar(
                        style: WidgetStyle.subtle,
                        size: WidgetSize.xl,
                        title: 'Nonthawit Doungsodsri Text',
                        color: AppColor.red.c500,
                      ),
                      AppSquareAvatar(
                        style: WidgetStyle.subtle,
                        size: WidgetSize.xl,
                        title: 'Nonthawit Doungsodsri Text',
                        color: context.theme.color.bgInverse,
                      ),
                      AppSquareAvatar(
                        style: WidgetStyle.subtle,
                        size: WidgetSize.xxl,
                        title: 'Nonthawit Doungsodsri Text',
                        color: AppColor.violet.c500,
                      ),
                      AppSquareAvatar(
                        style: WidgetStyle.subtle,
                        size: WidgetSize.xxl,
                        title: 'Nonthawit Doungsodsri Text',
                        color: AppColor.violet.c500,
                        disabled: true,
                      ),
                    ],
                  ),
                ],
              ),
              SectionH2Widgetbook(
                title: 'Filled',
                children: [
                  WrapLayout(
                    gap: 20,
                    children: [
                      AppSquareAvatar(
                        style: WidgetStyle.filled,
                        size: WidgetSize.xs,
                        title: 'Nonthawit Doungsodsri Text',
                      ),
                      AppSquareAvatar(
                        style: WidgetStyle.filled,
                        size: WidgetSize.sm,
                        title: 'Nonthawit Doungsodsri Text',
                        color: AppColor.teal.c500,
                      ),
                      AppSquareAvatar(
                        style: WidgetStyle.filled,
                        size: WidgetSize.md,
                        title: 'Nonthawit Doungsodsri Text',
                        color: AppColor.amber.c500,
                      ),
                      AppSquareAvatar(
                        style: WidgetStyle.filled,
                        size: WidgetSize.lg,
                        title: 'Nonthawit Doungsodsri Text',
                        color: AppColor.green.c500,
                      ),
                      AppSquareAvatar(
                        style: WidgetStyle.filled,
                        size: WidgetSize.xl,
                        title: 'Nonthawit Doungsodsri Text',
                        color: AppColor.red.c500,
                      ),
                      AppSquareAvatar(
                        style: WidgetStyle.filled,
                        size: WidgetSize.xl,
                        title: 'Nonthawit Doungsodsri Text',
                        color: context.theme.color.bgInverse,
                      ),
                      AppSquareAvatar(
                        style: WidgetStyle.filled,
                        size: WidgetSize.xxl,
                        title: 'Nonthawit Doungsodsri Text',
                        color: AppColor.violet.c500,
                      ),
                      AppSquareAvatar(
                        style: WidgetStyle.filled,
                        size: WidgetSize.xxl,
                        title: 'Nonthawit Doungsodsri Text',
                        color: AppColor.violet.c500,
                        disabled: true,
                      ),
                    ],
                  ),
                ],
              ),
              SectionH2Widgetbook(
                title: 'Image',
                children: [
                  WrapLayout(
                    gap: 20,
                    children: [
                      AppSquareAvatar(
                        style: WidgetStyle.subtle,
                        size: WidgetSize.xs,
                        title: 'Nonthawit Doungsodsri Text',
                        path:Assets.mock.avatarSquared.keyName,
                      ),
                      AppSquareAvatar(
                        style: WidgetStyle.subtle,
                        size: WidgetSize.sm,
                        title: 'Nonthawit Doungsodsri Text',
                        path:Assets.mock.avatarSquared.keyName,
                        color: AppColor.teal.c500,
                      ),
                      AppSquareAvatar(
                        style: WidgetStyle.subtle,
                        size: WidgetSize.md,
                        title: 'Nonthawit Doungsodsri Text',
                        path:Assets.mock.avatarSquared.keyName,
                        color: AppColor.amber.c500,
                      ),
                      AppSquareAvatar(
                        style: WidgetStyle.subtle,
                        size: WidgetSize.lg,
                        title: 'Nonthawit Doungsodsri Text',
                        path:Assets.mock.avatarSquared.keyName,
                        color: AppColor.green.c500,
                      ),
                      AppSquareAvatar(
                        style: WidgetStyle.subtle,
                        size: WidgetSize.xl,
                        title: 'Nonthawit Doungsodsri Text',
                        path:Assets.mock.avatarSquared.keyName,
                        color: AppColor.red.c500,
                      ),
                      AppSquareAvatar(
                        style: WidgetStyle.subtle,
                        size: WidgetSize.xxl,
                        title: 'Nonthawit Doungsodsri Text',
                        path:Assets.mock.avatarSquared.keyName,
                        color: AppColor.violet.c500,
                      ),
                      AppSquareAvatar(
                        style: WidgetStyle.subtle,
                        size: WidgetSize.xxl,
                        title: 'Nonthawit Doungsodsri Text',
                        path:Assets.mock.avatarSquared.keyName,
                        color: AppColor.violet.c500,
                        disabled: true,
                      ),
                    ],
                  ),
                ],
              ),
            ],
          ),
        );
}
