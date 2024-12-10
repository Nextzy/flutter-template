import '../widgetbook.dart';

class WidgetCategory extends WidgetbookCategory {
  WidgetCategory({
    super.name = 'Widgets',
    super.isInitiallyExpanded = false,
    required super.children,
  });
}
