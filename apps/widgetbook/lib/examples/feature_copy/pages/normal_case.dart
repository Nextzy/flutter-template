import 'package:change_application_name/examples/presentation_example/pages/page_copy.dart';

import 'package:widgetbook_app/widgetbook.dart';

class YourPageNormalCase extends WidgetbookUseCase {
  YourPageNormalCase({super.name = 'Normal'})
      : super(
          builder: (context) => YourPage(),
        );
}
