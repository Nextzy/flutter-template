import 'package:widgetbook_app/widgetbook.dart';

class RingStatusWidgetCase extends WidgetbookScrollableUseCase {
  RingStatusWidgetCase({super.name = 'Ring'})
      : super(
          builder: (context) => SectionH1Widgetbook(
            title: 'Status Ring',
            children: [
              StatusRing(
                  color: context.theme.color.bgPositive,
                  child: AppCircleAvatar(
                    size: WidgetSize.lg,
                    path: Assets.mock.avatarSquared2.keyName,
                  )),
              StatusRing(
                  color: context.theme.color.bgNegative,
                  child: AppCircleAvatar(
                    size: WidgetSize.lg,
                    path: Assets.mock.avatarSquared2.keyName,
                  )),
              StatusRing(
                  color: context.theme.color.bgBlue,
                  child: AppCircleAvatar(
                    size: WidgetSize.lg,
                    path: Assets.mock.avatarSquared2.keyName,
                  )),
              StatusRing(
                  color: context.theme.color.bgWarning,
                  child: AppCircleAvatar(
                    size: WidgetSize.lg,
                    path: Assets.mock.avatarSquared2.keyName,
                  )),
              StatusRing(
                  color: context.theme.color.bgViolet,
                  child: AppCircleAvatar(
                    size: WidgetSize.lg,
                    path: Assets.mock.avatarSquared2.keyName,
                  )),
              StatusRing(
                  color: context.theme.color.bgTeal,
                  child: AppCircleAvatar(
                    size: WidgetSize.lg,
                    path: Assets.mock.avatarSquared2.keyName,
                  )),
              StatusRing(
                  color: context.theme.color.bgGray,
                  child: AppCircleAvatar(
                    size: WidgetSize.lg,
                    path: Assets.mock.avatarSquared2.keyName,
                  )),
            ],
          ),
        );
}
