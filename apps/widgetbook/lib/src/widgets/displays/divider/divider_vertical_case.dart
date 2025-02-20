import 'package:widgetbook_app/widgetbook.dart';

class VerticalDividerWidgetCase extends WidgetbookScrollableUseCase {
  VerticalDividerWidgetCase({super.name = 'Vertical'})
      : super(
          builder: (context) => SectionH1Widgetbook(
            title: 'Vertical Divider',
            children: [
              SectionH2Widgetbook(
                children: [
                  WrapLayout(
                    gap: 20,
                    children: [
                      AppDivider(
                        direction: DividerDirection.vertical,
                      ),
                      AppDivider(
                        direction: DividerDirection.vertical,
                        text: 'Text',
                        textPosition: DividerTextPosition.left,
                      ),
                      AppDivider(
                        direction: DividerDirection.vertical,
                        text: 'Text',
                      ),
                      AppDivider(
                        direction: DividerDirection.vertical,
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
