import 'package:widgetbook_app/widgetbook.dart';

class MenuButtonCases {
  static List<WidgetbookUseCase> createCases() {
    return [
      WidgetbookUseCase(
        name: 'Menu Button',
        builder: (context) => ColumnLayout(
          gap: 20,
          crossAxisAlignment: CrossAxisAlignment.start,
          padding: Space.insetAll16,
          children: [
            // AppMenuButton(
            //   size: WidgetSize.sm,
            //   icon: Assets.icon.circle.keyName,
            //   onPressed: () {},
            // ),
            // AppMenuButton(
            //   size: WidgetSize.md,
            //   icon: Assets.icon.circle.keyName,
            //   onPressed: () {},
            // ),
          ],
        ),
      ),
      WidgetbookUseCase(
        name: 'Back Button',
        builder: (context) => ColumnLayout(
          gap: 20,
          padding: Space.insetAll16,
          children: [
            AppBackButton(
              onPress: () {},
            ),
          ],
        ),
      ),
    ];
  }
}
