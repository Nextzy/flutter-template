  

import '../widgetbook.dart';

class WidgetbookScrollableUseCase extends WidgetbookUseCase {
  WidgetbookScrollableUseCase({
    required super.name,
    required WidgetBuilder builder,
    super.designLink,
  }) : super(
          builder: (context) => AppScrollView(child: builder.call(context)),
        );
}
