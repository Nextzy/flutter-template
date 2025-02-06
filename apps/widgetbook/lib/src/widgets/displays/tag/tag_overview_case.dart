import 'package:widgetbook_app/widgetbook.dart';

class OverviewTagWidgetCase extends WidgetbookScrollableUseCase {
  OverviewTagWidgetCase({super.name = 'Overview'})
      : super(
          builder: (context) => SectionH1Widgetbook(
            title: 'Tag',
            children: [
              SectionH2Widgetbook(
                children: [
                  AppTag(
                    size: WidgetSize.sm,
                    avatar: AppCircleAvatar(
                      path: Assets.mock.avatarSquared2.keyName,
                      customSize: 16,
                    ),
                    text: 'Tag',
                    onRemove: () {},
                  ),
                  AppTag(
                    avatar: AppCircleAvatar(
                      path: Assets.mock.avatarSquared2.keyName,
                      customSize: 16,
                    ),
                    text: 'Tag',
                    onRemove: () {},
                  ),
                  AppTag(
                    size: WidgetSize.lg,
                    avatar: AppCircleAvatar(
                      path: Assets.mock.avatarSquared2.keyName,
                      customSize: 24,
                    ),
                    text: 'Tag',
                    onRemove: () {},
                  ),
                  AppTag(
                    size: WidgetSize.sm,
                    style: WidgetStyle.outlined,
                    avatar: AppCircleAvatar(
                      path: Assets.mock.avatarSquared2.keyName,
                      customSize: 16,
                    ),
                    text: 'Tag',
                    onRemove: () {},
                  ),
                  AppTag(
                    style: WidgetStyle.outlined,
                    avatar: AppCircleAvatar(
                      path: Assets.mock.avatarSquared2.keyName,
                      customSize: 16,
                    ),
                    text: 'Tag',
                    onRemove: () {},
                  ),
                  AppTag(
                    size: WidgetSize.lg,
                    style: WidgetStyle.outlined,
                    avatar: AppCircleAvatar(
                      path: Assets.mock.avatarSquared2.keyName,
                      customSize: 24,
                    ),
                    text: 'Tag',
                    onRemove: () {},
                  ),
                  AppTag(
                    size: WidgetSize.sm,
                    style: WidgetStyle.text,
                    avatar: AppCircleAvatar(
                      path: Assets.mock.avatarSquared2.keyName,
                      customSize: 16,
                    ),
                    text: 'Tag',
                    onRemove: () {},
                  ),
                  AppTag(
                    style: WidgetStyle.text,
                    avatar: AppCircleAvatar(
                      path: Assets.mock.avatarSquared2.keyName,
                      customSize: 16,
                    ),
                    text: 'Tag',
                    onRemove: () {},
                  ),
                  AppTag(
                    size: WidgetSize.lg,
                    style: WidgetStyle.text,
                    avatar: AppCircleAvatar(
                      path: Assets.mock.avatarSquared2.keyName,
                      customSize: 24,
                    ),
                    text: 'Tag',
                    onRemove: () {},
                  )
                ],
              ),
            ],
          ),
        );
}
