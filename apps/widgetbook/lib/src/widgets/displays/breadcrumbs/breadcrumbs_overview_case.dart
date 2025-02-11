import 'package:widgetbook_app/widgetbook.dart';

class OverviewBreadcrumbsWidgetCase extends WidgetbookScrollableUseCase {
  OverviewBreadcrumbsWidgetCase({super.name = 'Overview'})
      : super(
            builder: (context) =>
                SectionH1Widgetbook(title: 'Breadcrumbs', children: [
                  SectionH2Widgetbook(
                    children: [
                      WrapLayout(
                        gap: 20,
                        children: [
                          AppBreadcrumbs(size: WidgetSize.sm, children: [
                            AppBreadcrumbSection(label: 'Section'),
                            AppBreadcrumbSection(label: 'Section'),
                          ]),
                          AppBreadcrumbs(children: [
                            AppBreadcrumbSection(
                              label: 'Section',
                            ),
                            AppBreadcrumbSection(label: 'Section'),
                            AppBreadcrumbSection(label: 'Section'),
                          ]),
                          AppBreadcrumbs(size: WidgetSize.lg, children: [
                            AppBreadcrumbSection(
                              label: 'Section',
                            ),
                            AppBreadcrumbSection(
                              label: 'Section',
                            ),
                            AppBreadcrumbSection(
                              label: 'Section',
                            ),
                            AppBreadcrumbSection(
                              label: 'Section',
                            ),
                          ]),
                        ],
                      ),
                    ],
                  )
                ]));
}
