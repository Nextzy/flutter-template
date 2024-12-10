// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

export 'pages/normal_case.dart';
export 'widgets/widget_normal_case.dart';

import 'package:widgetbook_app/widgetbook.dart';

class YourFeatureBook extends WidgetbookFolder {
  YourFeatureBook({
    super.name = 'Your Feature',
    super.isInitiallyExpanded = false,
  }) : super(
          children: [
            PageCategory(
              children: [
                WidgetbookComponent(
                  name: 'Pages',
                  useCases: [
                    YourPageNormalCase(),
                  ],
                ),
              ],
            ),
            WidgetCategory(
              children: [
                WidgetbookComponent(
                  name: 'Widgets',
                  useCases: [
                    YourWidgetNormalCase(),
                  ],
                ),
              ],
            ),
          ],
        );
}
