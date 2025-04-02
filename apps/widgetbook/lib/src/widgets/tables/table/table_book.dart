export 'table_overview_case.dart';

import 'package:widgetbook_app/widgetbook.dart';

class TableComponentBook extends WidgetbookComponent {
  TableComponentBook({
    super.name = 'Table',
    super.isInitiallyExpanded = false,
  }) : super(useCases: [
          OverviewTableWidgetCase(),
        ]);

  static bool createHasCheckboxOption(BuildContext context) =>
      context.knobs.boolean(label: 'Has Checkbox', initialValue: false);

  static int createRowsPerPageOption(BuildContext context) =>
      context.knobs.list(
        label: 'Rows Per Page',
        options: List.generate(11, (index) => index),
        initialOption: 4,
      );

  static int createFilteredColumnOption(BuildContext context) =>
      context.knobs.list(
        label: 'Filtered Column',
        options: List.generate(3, (index) => index),
        initialOption: 0,
      );
}
