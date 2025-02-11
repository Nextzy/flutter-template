import 'package:widgetbook_app/widgetbook.dart';

class UnderlineHorizontalTabWidgetCase extends WidgetbookScrollableUseCase {
  UnderlineHorizontalTabWidgetCase({super.name = 'Underline'})
      : super(
          builder: (context) => SectionH1Widgetbook(
            title: 'Underline Horizontal Tab',
            children: [
              SectionH2Widgetbook(
                children: [
                  WrapLayout(
                    gap: 20,
                    children: [
                      AppHorizontalTab(
                          style: AppTabStyle.underline,
                          size: WidgetSize.sm,
                          children: [
                            AppTab(text: 'Tab text'),
                            AppTab(text: 'Tab text'),
                            AppTab(
                              text: 'Tab text',
                            ),
                          ]),
                    ],
                  ),
                  WrapLayout(children: [
                    AppHorizontalTab(
                        style: AppTabStyle.underline,
                        size: WidgetSize.md,
                        children: [
                          AppTab(text: 'Tab text'),
                          AppTab(text: 'Tab text'),
                          AppTab(text: 'Tab text'),
                        ]),
                  ]),
                  WrapLayout(children: [
                    AppHorizontalTab(
                        style: AppTabStyle.underline,
                        size: WidgetSize.lg,
                        children: [
                          AppTab(
                            text: 'Tab text',
                          ),
                          AppTab(
                            text: 'Tab text',
                          ),
                          AppTab(text: 'Tab text'),
                        ]),
                  ]),
                  WrapLayout(
                    gap: 20,
                    children: [
                      AppHorizontalTab(
                          style: AppTabStyle.underline,
                          size: WidgetSize.sm,
                          children: [
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
                    AppHorizontalTab(
                        style: AppTabStyle.underline,
                        size: WidgetSize.md,
                        children: [
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
                    AppHorizontalTab(
                        style: AppTabStyle.underline,
                        size: WidgetSize.lg,
                        children: [
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
