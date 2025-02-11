import 'package:widgetbook_app/widgetbook.dart';

class ShadedVerticalTabWidgetCase extends WidgetbookScrollableUseCase {
  ShadedVerticalTabWidgetCase({super.name = 'Shaded'})
      : super(
          builder: (context) => SectionH1Widgetbook(
            title: 'Shaded Vertical Tab',
            children: [
              SectionH2Widgetbook(
                children: [
                  WrapLayout(
                    gap: 20,
                    children: [
                      AppVerticalTab(
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
                    AppVerticalTab(
                        style: AppTabStyle.shade,
                        size: WidgetSize.md,
                        children: [
                          AppTab(text: 'Tab text'),
                          AppTab(text: 'Tab text'),
                          AppTab(text: 'Tab text'),
                        ]),
                  ]),
                  WrapLayout(children: [
                    AppVerticalTab(
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
                      AppVerticalTab(
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
                    AppVerticalTab(
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
                    AppVerticalTab(
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
