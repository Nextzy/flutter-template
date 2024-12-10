// ignore_for_file: prefer_const_constructors

import 'package:widgetbook_app/widgetbook.dart';

class CustomBadgeWidgetCase extends WidgetbookScrollableUseCase {
  CustomBadgeWidgetCase({super.name = 'Custom'})
      : super(
          builder: (context) => SectionH1Widgetbook(
            title: 'Badge',
            children: [
              SectionH2Widgetbook(
                title: 'Size',
                children: [
                  AppBadge(
                    size: WidgetSize.sm,
                    label: 'Badge',
                  ),
                  AppBadge(
                    size: WidgetSize.md,
                    label: 'Badge',
                  ),
                  AppBadge(
                    size: WidgetSize.lg,
                    label: 'Badge',
                  ),
                ],
              ),
              SectionH2Widgetbook(
                title: 'Style',
                children: [
                  AppBadge(
                    style: WidgetStyle.filled,
                    label: 'Badge',
                  ),
                  AppBadge(
                    style: WidgetStyle.subtle,
                    label: 'Badge',
                  ),
                  AppBadge(
                    style: WidgetStyle.outlined,
                    label: 'Badge',
                  ),
                ],
              ),
              SectionH2Widgetbook(
                title: 'Color',
                child: WrapLayout(
                  gap: 10,
                  children: [
                    AppBadge(
                      style: WidgetStyle.filled,
                      label: 'Badge',
                    ),
                    AppBadge(
                      style: WidgetStyle.subtle,
                      label: 'Badge',
                    ),
                    AppBadge(
                      style: WidgetStyle.outlined,
                      label: 'Badge',
                    ),
                    AppBadge(
                      style: WidgetStyle.filled,
                      color: StratumBlueColor().c500,
                      label: 'Badge',
                    ),
                    AppBadge(
                      style: WidgetStyle.subtle,
                      color: StratumBlueColor().c500,
                      label: 'Badge',
                    ),
                    AppBadge(
                      style: WidgetStyle.outlined,
                      color: StratumBlueColor().c500,
                      label: 'Badge',
                    ),
                  ],
                ),
              ),
            ],
          ),
        );
}
