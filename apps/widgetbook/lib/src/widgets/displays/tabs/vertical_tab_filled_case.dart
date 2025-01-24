import 'package:widgetbook_app/widgetbook.dart';

class FilledVerticalTabWidgetCase extends WidgetbookScrollableUseCase {
  FilledVerticalTabWidgetCase({super.name = 'Filled'})
      : super(
          builder: (context) => SectionH1Widgetbook(
            title: 'Filled Vertical Tab',
            children: [
              SectionH2Widgetbook(
                children: [
                  WrapLayout(
                    gap: 20,
                    children: [
                      AppVerticalTab(size: WidgetSize.sm, children: [
                        AppTab(text: 'Tab text'),
                        AppTab(text: 'Tab text'),
                        AppTab(
                          text: 'Tab text',
                        ),
                      ]),
                    ],
                  ),
                  WrapLayout(children: [
                    AppVerticalTab(size: WidgetSize.md, children: [
                      AppTab(text: 'Tab text'),
                      AppTab(text: 'Tab text'),
                      AppTab(text: 'Tab text'),
                    ]),
                  ]),
                  WrapLayout(children: [
                    AppVerticalTab(size: WidgetSize.lg, children: [
                      AppTab(
                        text: 'Tab text',
                      ),
                      AppTab(
                        text: 'Tab text',
                      ),
                      AppTab(
                        text: 'Tab text',
                      ),
                    ]),
                  ]),
                  WrapLayout(
                    gap: 20,
                    children: [
                      AppVerticalTab(size: WidgetSize.sm, children: [
                        AppTab(
                            text: 'Tab text',
                            icon: Assets.icon.infoRegular.keyName),
                        AppTab(
                            text: 'Tab text',
                            icon: Assets.icon.infoRegular.keyName),
                        AppTab(
                            text: 'Tab text',
                            icon: Assets.icon.infoRegular.keyName),
                      ]),
                    ],
                  ),
                  WrapLayout(children: [
                    AppVerticalTab(size: WidgetSize.md, children: [
                      AppTab(
                          text: 'Tab text',
                          icon: Assets.icon.infoRegular.keyName),
                      AppTab(
                          text: 'Tab text',
                          icon: Assets.icon.infoRegular.keyName),
                      AppTab(
                          text: 'Tab text',
                          icon: Assets.icon.infoRegular.keyName),
                    ]),
                  ]),
                  WrapLayout(children: [
                    AppVerticalTab(size: WidgetSize.lg, children: [
                      AppTab(
                          text: 'Tab text',
                          icon: Assets.icon.infoRegular.keyName),
                      AppTab(
                          text: 'Tab text',
                          icon: Assets.icon.infoRegular.keyName),
                      AppTab(
                          text: 'Tab text',
                          icon: Assets.icon.infoRegular.keyName),
                    ]),
                  ]),
                ],
              ),
            ],
          ),
        );
}
