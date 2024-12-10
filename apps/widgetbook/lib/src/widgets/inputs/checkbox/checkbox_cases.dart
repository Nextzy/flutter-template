import 'package:widgetbook_app/widgetbook.dart';

class CheckboxCases {
  static List<WidgetbookUseCase> createCases() {
    return [
      WidgetbookUseCase(
        name: 'Checkbox',
        builder: (context) => ColumnLayout(
          gap: 20,
          crossAxisAlignment: CrossAxisAlignment.start,
          padding: Space.insetAll16,
          children: [
            AppCheckbox(
              tristate: CheckboxComponentBook.createTristateOption(context),
              text: CheckboxComponentBook.createTextOption(context),
              supportingText: CheckboxComponentBook.createSupportingTextOption(context),
              onChanged: (value) {},
            ),
          ],
        ),
      ),
    ];
  }
}
