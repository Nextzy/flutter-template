import 'package:widgetbook_app/widgetbook.dart';

class FilledHorizontalTabWidgetCase extends WidgetbookScrollableUseCase {
  FilledHorizontalTabWidgetCase({super.name = 'Filled'})
      : super(
          builder: (context) => SectionH1Widgetbook(
            title: 'Filled Horizontal Tab',
            children: [
              SectionH2Widgetbook(
                children: [
                  WrapLayout(
                    gap: 20,
                    children: [
                      AppHorizontalTab(size: WidgetSize.sm, children: [
                        AppTab(text: 'Tab text'),
                        AppTab(text: 'Tab text'),
                        AppTab(
                          text: 'Tab text',
                        ),
                      ]),
                    ],
                  ),
                  WrapLayout(children: [
                    AppHorizontalTab(size: WidgetSize.md, children: [
                      AppTab(text: 'Tab text'),
                      AppTab(text: 'Tab text'),
                      AppTab(text: 'Tab text'),
                    ]),
                  ]),
                  WrapLayout(children: [
                    AppHorizontalTab(size: WidgetSize.lg, children: [
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
                      AppHorizontalTab(size: WidgetSize.sm, children: [
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
                    AppHorizontalTab(size: WidgetSize.md, children: [
                      AppTab(
                          text: 'Tab text',
                          icon: Assets.icon.infoRegular.keyName),
                      AppTab(
                          text: 'Tab text',
                          icon: Assets.icon.infoRegular.keyName),
                      AppTab(
                        text: 'Tab text',
                        icon: Assets.icon.infoRegular.keyName,
                      ),
                    ]),
                  ]),
                  WrapLayout(children: [
                    AppHorizontalTab(size: WidgetSize.lg, children: [
                      AppTab(
                          text: 'Tab text',
                          icon: Assets.icon.infoRegular.keyName),
                      AppTab(
                          text: 'Tab text',
                          icon: Assets.icon.infoRegular.keyName),
                      AppTab(
                        text: 'Tab text',
                        icon: Assets.icon.infoRegular.keyName,
                      ),
                    ]),
                  ]),
                ],
              ),
            ],
          ),
        );
}
