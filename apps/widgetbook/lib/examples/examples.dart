import '../widgetbook.dart';

class YourCategoryBooks extends WidgetbookCategory {
  YourCategoryBooks({
    super.name = 'Your categories',
  }) : super(children: [
          YourComponentBooks(),
          YourComponentBooks(),
        ]);
}

class YourComponentBooks extends WidgetbookComponent {
  YourComponentBooks({
    super.name = 'Your component',
  }) : super(useCases: [
          YourComponentCases(),
          YourComponentCases(),
          YourComponentCases(),
        ]);
}

class YourComponentCases extends WidgetbookUseCase {
  YourComponentCases({super.name = 'Your Cases'})
      : super(
          builder: (context) => ColumnLayout(
            gap: 20,
            crossAxisAlignment: CrossAxisAlignment.start,
            padding: Space.insetAll16,
            children: [],
          ),
        );
}
