// ignore_for_file: prefer_const_constructors

import 'package:widgetbook_app/widgetbook.dart';

class SoftUpdateModalWidgetCase extends WidgetbookScrollableUseCase {
  SoftUpdateModalWidgetCase({super.name = 'Soft Update'})
      : super(
          builder: (context) => SectionH1Widgetbook(
            title: 'Modal',
            children: [
              AppSoftUpdateModal(
                onPrimaryPress: () {
                  Log.i('Tap');
                },
                onSecondaryPress: () {
                  Log.i('Tap');
                },
              ),
            ],
          ),
        );
}
