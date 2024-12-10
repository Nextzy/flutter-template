// ignore_for_file: prefer_const_constructors

import 'package:widgetbook_app/widgetbook.dart';

class CircleAvatarWidgetCase extends WidgetbookScrollableUseCase {
  CircleAvatarWidgetCase({super.name = 'Circle'})
      : super(
          builder: (context) => SectionH1Widgetbook(
            title: 'Circle Avatar',
            children: [
              SectionH2Widgetbook(
                title: 'Subtle',
                children: [
                  WrapLayout(
                    gap: 20,
                    children: [
                      AppCircleAvatar(
                        style: WidgetStyle.subtle,
                        size: WidgetSize.xs,
                        title: 'Nonthawit Doungsodsri Text',
                      ),
                      AppCircleAvatar(
                        style: WidgetStyle.subtle,
                        size: WidgetSize.sm,
                        title: 'Nonthawit Doungsodsri Text',
                        color: AppColor.teal.c500,
                      ),
                      AppCircleAvatar(
                        style: WidgetStyle.subtle,
                        size: WidgetSize.md,
                        title: 'Nonthawit Doungsodsri Text',
                        color: AppColor.amber.c500,
                      ),
                      AppCircleAvatar(
                        style: WidgetStyle.subtle,
                        size: WidgetSize.lg,
                        title: 'Nonthawit Doungsodsri Text',
                        color: AppColor.green.c500,
                      ),
                      AppCircleAvatar(
                        style: WidgetStyle.subtle,
                        size: WidgetSize.xl,
                        title: 'Nonthawit Doungsodsri Text',
                        color: AppColor.red.c500,
                      ),
                      AppCircleAvatar(
                        style: WidgetStyle.subtle,
                        size: WidgetSize.xl,
                        title: 'Nonthawit Doungsodsri Text',
                        color: context.theme.color.bgInverse,
                      ),
                      AppCircleAvatar(
                        style: WidgetStyle.subtle,
                        size: WidgetSize.xxl,
                        title: 'Nonthawit Doungsodsri Text',
                        color: AppColor.violet.c500,
                      ),
                      AppCircleAvatar(
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
                      AppCircleAvatar(
                        style: WidgetStyle.filled,
                        size: WidgetSize.xs,
                        title: 'Nonthawit Doungsodsri Text',
                      ),
                      AppCircleAvatar(
                        style: WidgetStyle.filled,
                        size: WidgetSize.sm,
                        title: 'Nonthawit Doungsodsri Text',
                        color: AppColor.teal.c500,
                      ),
                      AppCircleAvatar(
                        style: WidgetStyle.filled,
                        size: WidgetSize.md,
                        title: 'Nonthawit Doungsodsri Text',
                        color: AppColor.amber.c500,
                      ),
                      AppCircleAvatar(
                        style: WidgetStyle.filled,
                        size: WidgetSize.lg,
                        title: 'Nonthawit Doungsodsri Text',
                        color: AppColor.green.c500,
                      ),
                      AppCircleAvatar(
                        style: WidgetStyle.filled,
                        size: WidgetSize.xl,
                        title: 'Nonthawit Doungsodsri Text',
                        color: AppColor.red.c500,
                      ),
                      AppCircleAvatar(
                        style: WidgetStyle.filled,
                        size: WidgetSize.xl,
                        title: 'Nonthawit Doungsodsri Text',
                        color: context.theme.color.bgInverse,
                      ),
                      AppCircleAvatar(
                        style: WidgetStyle.filled,
                        size: WidgetSize.xxl,
                        title: 'Nonthawit Doungsodsri Text',
                        color: AppColor.violet.c500,
                      ),
                      AppCircleAvatar(
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
                      AppCircleAvatar(
                        style: WidgetStyle.subtle,
                        size: WidgetSize.xs,
                        title: 'Nonthawit Doungsodsri Text',
                        path:Assets.mock.avatarSquared.keyName,
                      ),
                      AppCircleAvatar(
                        style: WidgetStyle.subtle,
                        size: WidgetSize.sm,
                        title: 'Nonthawit Doungsodsri Text',
                        path:Assets.mock.avatarSquared.keyName,
                        color: AppColor.teal.c500,
                      ),
                      AppCircleAvatar(
                        style: WidgetStyle.subtle,
                        size: WidgetSize.md,
                        title: 'Nonthawit Doungsodsri Text',
                        path:Assets.mock.avatarSquared.keyName,
                        color: AppColor.amber.c500,
                      ),
                      AppCircleAvatar(
                        style: WidgetStyle.subtle,
                        size: WidgetSize.lg,
                        title: 'Nonthawit Doungsodsri Text',
                        path:Assets.mock.avatarSquared.keyName,
                        color: AppColor.green.c500,
                      ),
                      AppCircleAvatar(
                        style: WidgetStyle.subtle,
                        size: WidgetSize.xl,
                        title: 'Nonthawit Doungsodsri Text',
                        path:Assets.mock.avatarSquared.keyName,
                        color: AppColor.red.c500,
                      ),
                      AppCircleAvatar(
                        style: WidgetStyle.subtle,
                        size: WidgetSize.xxl,
                        title: 'Nonthawit Doungsodsri Text',
                        path:Assets.mock.avatarSquared.keyName,
                        color: AppColor.violet.c500,
                      ),
                      AppCircleAvatar(
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
