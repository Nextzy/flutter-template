import 'package:widgetbook_app/widgetbook.dart';

class HorizontalDividerWidgetCase extends WidgetbookScrollableUseCase {
  HorizontalDividerWidgetCase({super.name = 'Horizontal'})
      : super(
          builder: (context) => SectionH1Widgetbook(
            title: 'Horizontal Divider',
            children: [
              SectionH2Widgetbook(
                children: [
                  WrapLayout(
                    gap: 20,
                    children: [
                      AppDivider(),
                      AppDivider(
                        text: 'Text',
                        textPosition: DividerTextPosition.left,
                      ),
                      AppDivider(
                        text: 'Text',
                      ),
                      AppDivider(
                        text: 'Text',
                        textPosition: DividerTextPosition.right,
                      ),
                    ],
                  ),
                ],
              ),
            ],
          ),
        );
}
