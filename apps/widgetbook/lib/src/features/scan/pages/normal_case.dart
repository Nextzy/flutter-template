
import 'package:widgetbook_app/widgetbook.dart';

class ScanPageNormalCase extends WidgetbookUseCase {
  ScanPageNormalCase({super.name = 'Normal'})
      : super(
          builder: (context) => ScanPage.create(),
        );
}
