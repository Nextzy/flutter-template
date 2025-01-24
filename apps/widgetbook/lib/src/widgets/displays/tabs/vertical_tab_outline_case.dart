import 'package:widgetbook_app/widgetbook.dart';

class OutlineVerticalTabWidgetCase extends WidgetbookScrollableUseCase {
  OutlineVerticalTabWidgetCase({super.name = 'Outline'})
      : super(
          builder: (context) => SectionH1Widgetbook(
            title: 'Outline Vertical Tab',
            children: [
              SectionH2Widgetbook(
                children: [
                  WrapLayout(
                    gap: 20,
                    children: [
                      AppVerticalTab(
                          style: AppTabStyle.outlined,
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
                        style: AppTabStyle.outlined,
                        size: WidgetSize.md,
                        children: [
                          AppTab(text: 'Tab text'),
                          AppTab(text: 'Tab text'),
                          AppTab(text: 'Tab text'),
                        ]),
                  ]),
                  WrapLayout(children: [
                    AppVerticalTab(
                        style: AppTabStyle.outlined,
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
                          style: AppTabStyle.outlined,
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
                        style: AppTabStyle.outlined,
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
                        style: AppTabStyle.outlined,
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
