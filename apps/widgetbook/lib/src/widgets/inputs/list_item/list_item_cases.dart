import 'package:widgetbook_app/widgetbook.dart';

class ListItemCases {
  static List<WidgetbookUseCase> createCases() {
    return [
      WidgetbookUseCase(
        name: 'List Item',
        builder: (context) =>  ColumnLayout(
          gap: 20,
          crossAxisAlignment: CrossAxisAlignment.start,
          padding: Space.insetAll16,
          children: [
            AppListItem(
              icon: ListItemComponentBook.createIconOption(context),
              titleText: ListItemComponentBook.createTitleOption(context),
              supportText: ListItemComponentBook.createSupportTextOption(context),
            ),
          ],
        ),
      ),
    ];
  }
}
