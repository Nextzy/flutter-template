import 'package:widgetbook_app/widgetbook.dart';

class OverviewLinkWidgetCase extends WidgetbookScrollableUseCase {
  OverviewLinkWidgetCase({super.name = 'Overview'})
      : super(
          builder: (context) => SectionH1Widgetbook(
            title: 'Link',
            children: [
              SectionH2Widgetbook(
                children: [
                  WrapLayout(
                    gap: 20,
                    children: [
                      AppLink(text: "Text link", url: "http://example.com"),
                      AppLink(
                        text: "Text link",
                        url: "http://example.com",
                        disabled: true,
                      )
                    ],
                  ),
                  WrapLayout(
                    gap: 20,
                    children: [
                      AppLink(
                          text: "Text link",
                          url: "http://example.com",
                          fontSize: 12),
                      AppLink(
                          text: "Text link",
                          url: "http://example.com",
                          fontSize: 12,
                          disabled: true)
                    ],
                  ),
                ],
              ),
            ],
          ),
        );
}
