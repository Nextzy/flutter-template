export 'list_item_cases.dart';

import 'package:widgetbook_app/widgetbook.dart';


class ListItemComponentBook extends WidgetbookComponent {
  ListItemComponentBook({
    super.name = 'List Item',
  }) : super(useCases: [
    ...ListItemCases.createCases(),
  ]);

  static String? createIconOption(BuildContext context) =>
      context.knobs.list(label: 'Icon', options: [
        Assets.icon.circle.keyName,
        null,
      ]);

  static String createTitleOption(BuildContext context) =>
      context.knobs.string(label: 'Title', initialValue: 'Title');

  static String createSupportTextOption(BuildContext context) =>
      context.knobs.string(label: 'Support Text', initialValue: 'Support');

  static String createLabelTextOption(BuildContext context) =>
      context.knobs.string(label: 'Label Text', initialValue: 'Label');


}