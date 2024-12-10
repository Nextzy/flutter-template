// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

export 'pages/normal_case.dart';

import 'package:widgetbook_app/widgetbook.dart';

class ScanFeatureBook extends WidgetbookFolder {
  ScanFeatureBook({
    super.name = 'Scan Feature',
    super.isInitiallyExpanded = true,
  }) : super(
          children: [
            PageCategory(
              children: [
                WidgetbookComponent(
                  name: 'ScanPage',
                  isInitiallyExpanded: true,
                  useCases: [
                    ScanPageNormalCase(),
                  ],
                ),
              ],
            ),
            WidgetCategory(
              children: [
                WidgetbookComponent(
                  name: 'Widgets',
                  useCases: [],
                ),
              ],
            ),
          ],
        );
}
