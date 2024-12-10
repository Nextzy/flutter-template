
import 'package:widgetbook_app/widgetbook.dart';

class HomePageNormalCase extends WidgetbookUseCase {
  HomePageNormalCase({super.name = 'Normal'})
      : super(
          builder: (context) => HomePage(),
        );
}
