import '../widgetbook.dart';

class PageCategory extends WidgetbookCategory {
  PageCategory({
    super.name = 'Pages',
    super.isInitiallyExpanded = true,
    required super.children,
  });
}
