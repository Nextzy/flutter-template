// ignore_for_file: prefer_const_constructors

import 'package:widgetbook_app/widgetbook.dart';

class CustomTopNavigationBarWidgetCase extends WidgetbookScrollableUseCase {
  CustomTopNavigationBarWidgetCase({super.name = 'Custom'})
      : super(
          builder: (context) => SectionH1Widgetbook(
            title: 'Top Navigation Bar',
            children: [
              AppTopNavigationBar(
                type: AppNavigationType.brand,
                backgroundColor: context.theme.color.bgSurface1,
                title: 'Title',
                leadWidgets: [
                  AppShadedIconButton(
                    size: WidgetSize.lg,
                    icon: Assets.icon.circle.keyName,
                  ),
                ],
                actionWidgets: [
                  AppShadedIconButton(
                    size: WidgetSize.lg,
                    icon: Assets.icon.circle.keyName,
                  ),
                  Gap(8.0),
                  AppShadedIconButton(
                    size: WidgetSize.lg,
                    icon: Assets.icon.circle.keyName,
                  ),
                  Gap(8.0),
                ],
              ),
              AppTopNavigationBar(
                type: AppNavigationType.back,
                backgroundColor: context.theme.color.bgSurface1,
                title: 'Long Title Long Title Long Title',
                actionWidgets: [
                  AppShadedIconButton(
                    size: WidgetSize.lg,
                    icon: Assets.icon.circle.keyName,
                  ),
                  Gap(8.0),
                  AppShadedIconButton(
                    size: WidgetSize.lg,
                    icon: Assets.icon.circle.keyName,
                  ),
                  Gap(8.0),
                ],
              ),
              AppTopNavigationBar(
                type: AppNavigationType.inverse,
                backgroundColor: Colors.black,
                title: 'Title',
                actionWidgets: [
                  AppOnlyIconButton(
                    size: WidgetSize.lg,
                    icon: Assets.icon.circle.keyName,
                    color: Colors.white,
                  ),
                  Gap(4.0),
                  AppOnlyIconButton(
                    size: WidgetSize.lg,
                    icon: Assets.icon.circle.keyName,
                    color: Colors.white,
                  ),
                  Gap(8.0),
                ],
              ),
            ],
          ),
        );
}
