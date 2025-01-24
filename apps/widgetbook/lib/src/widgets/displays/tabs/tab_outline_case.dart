import 'package:widgetbook_app/widgetbook.dart';

class OutlineHorizontalTabWidgetCase extends WidgetbookScrollableUseCase {
  OutlineHorizontalTabWidgetCase({super.name = 'Outline'})
      : super(
          builder: (context) => SectionH1Widgetbook(
            title: 'Outline Horizontal Tab',
            children: [
              SectionH2Widgetbook(
                children: [
                  WrapLayout(
                    gap: 20,
                    children: [
                      AppHorizontalTab(
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
                    AppHorizontalTab(
                        style: AppTabStyle.outlined,
                        size: WidgetSize.md,
                        children: [
                          AppTab(text: 'Tab text'),
                          AppTab(text: 'Tab text'),
                          AppTab(text: 'Tab text'),
                        ]),
                  ]),
                  WrapLayout(children: [
                    AppHorizontalTab(
                        style: AppTabStyle.outlined,
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
                    AppHorizontalTab(
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
                    AppHorizontalTab(
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
