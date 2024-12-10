// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

export 'pages/normal_case.dart';

import 'package:widgetbook_app/widgetbook.dart';

class HomeFeatureBook extends WidgetbookFolder {
  HomeFeatureBook({
    super.name = 'Home Feature',
    super.isInitiallyExpanded = false,
  }) : super(
          children: [
            PageCategory(
              children: [
                WidgetbookComponent(
                  name: 'Home Screen',
                  useCases: [
                    HomePageNormalCase(),
                  ],
                ),
              ],
            ),
            WidgetCategory(
              children: [
                WidgetbookComponent(
                  name: 'Home Widget',
                  useCases: [],
                ),
              ],
            ),
          ],
        );
}
