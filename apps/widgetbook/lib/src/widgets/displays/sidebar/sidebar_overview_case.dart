import 'package:widgetbook_app/widgetbook.dart';

class OverviewSidebarWidgetCase extends WidgetbookScrollableUseCase {
  OverviewSidebarWidgetCase({super.name = 'Overview'})
      : super(
          builder: (context) => SectionH1Widgetbook(
            title: 'Sidebar',
            children: [
              SectionH2Widgetbook(
                children: [
                  AppSidebar(
                    logo: Assets.logo.iconText.keyName,
                    items: [
                      AppSidebarSection(
                        icon: Assets.icon.infoRegular.keyName,
                        title: 'Section',
                      ),
                      AppSidebarSection(
                        icon: Assets.icon.infoRegular.keyName,
                        title: 'Section',
                      ),
                      AppSidebarSection(
                        icon: Assets.icon.infoRegular.keyName,
                        title: 'Section',
                      ),
                      AppSidebarSection(
                        icon: Assets.icon.infoRegular.keyName,
                        title: 'Section',
                        active: true,
                      ),
                      AppSidebarSection(
                        icon: Assets.icon.infoRegular.keyName,
                        title: 'Section',
                        disabled: true,
                      ),
                    ],
                    bottoms: [
                      AppSidebarSection(
                        icon: Assets.icon.infoRegular.keyName,
                        title: 'Section',
                      ),
                      AppSidebarSection(
                        icon: Assets.icon.infoRegular.keyName,
                        title: 'Section',
                      ),
                      AppSidebarSection(
                        icon: Assets.icon.infoRegular.keyName,
                        title: 'Section',
                      ),
                      AppSidebarSection(
                        icon: Assets.icon.infoRegular.keyName,
                        title: 'Section',
                      ),
                      AppSidebarSection(
                        icon: Assets.icon.infoRegular.keyName,
                        title: 'Section',
                      ),
                    ],
                  )
                ],
              ),
            ],
          ),
        );
}
