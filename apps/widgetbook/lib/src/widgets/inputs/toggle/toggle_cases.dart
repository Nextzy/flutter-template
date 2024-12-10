import 'package:widgetbook_app/widgetbook.dart';

class ToggleCases {
  static List<WidgetbookUseCase> createCases() {
    return [
      WidgetbookUseCase(
        name: 'Toggle',
        builder: (context) => ColumnLayout(
          gap: 20,
          crossAxisAlignment: CrossAxisAlignment.start,
          padding: Space.insetAll16,
          children: [
            AppToggle(
              text: ToggleComponentBook.createTextOption(context),
              supportingText:
                  ToggleComponentBook.createSupportingTextOption(context),
              onChanged: (value) {},
            ),
          ],
        ),
      ),
    ];
  }
}
