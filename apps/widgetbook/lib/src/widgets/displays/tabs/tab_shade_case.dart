import 'package:widgetbook_app/widgetbook.dart';

class ShadedHorizontalTabWidgetCase extends WidgetbookScrollableUseCase {
  ShadedHorizontalTabWidgetCase({super.name = 'Shaded'})
      : super(
          builder: (context) => SectionH1Widgetbook(
            title: 'Shaded Horizontal Tab',
            children: [
              SectionH2Widgetbook(
                children: [
                  WrapLayout(
                    gap: 20,
                    children: [
                      AppHorizontalTab(
                          style: AppTabStyle.shade,
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
                        style: AppTabStyle.shade,
                        size: WidgetSize.md,
                        children: [
                          AppTab(text: 'Tab text'),
                          AppTab(text: 'Tab text'),
                          AppTab(text: 'Tab text'),
                        ]),
                  ]),
                  WrapLayout(children: [
                    AppHorizontalTab(
                        style: AppTabStyle.shade,
                        size: WidgetSize.lg,
                        children: [
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
                      AppHorizontalTab(
                          style: AppTabStyle.shade,
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
                        style: AppTabStyle.shade,
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
                        style: AppTabStyle.shade,
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
