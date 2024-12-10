// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:widgetbook_app/widgetbook.dart';

class YourWidgetNormalCase extends WidgetbookUseCase {
  YourWidgetNormalCase({super.name = 'Normal'})
      : super(
          builder: (context) =>  ColumnLayout(
            gap: 20,
            crossAxisAlignment: CrossAxisAlignment.start,
            padding: Space.insetAll16,
            children: [],
          ),
        );
}
