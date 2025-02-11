import 'package:widgetbook_app/widgetbook.dart';

class OverviewAccordionWidgetCase extends WidgetbookScrollableUseCase {
  OverviewAccordionWidgetCase({super.name = 'Overview'})
      : super(
          builder: (context) => SectionH1Widgetbook(
            title: 'Accordion',
            children: [
              SectionH2Widgetbook(
                children: [
                  WrapLayout(
                    gap: 20,
                    children: [
                      AppAccordion(
                        label: 'Accordion label',
                        text: 'Text content inside accordion',
                        size: WidgetSize.sm,
                      ),
                      AppAccordion(
                          style: WidgetStyle.outlined,
                          label: 'Accordion label',
                          helperText: 'Helper text',
                          text: 'Text content inside accordion'),
                      AppAccordion(
                          style: WidgetStyle.shade,
                          label: 'Accordion label',
                          helperText: 'Helper text',
                          text: 'Text content inside accordion',
                          size: WidgetSize.lg,
                          arrowPosition: AppAccordionArrowPosition.right),
                      AppAccordion(
                          size: WidgetSize.sm,
                          iconLabel: Assets.icon.checkCircleRegular.keyName,
                          label: 'Accordion label',
                          helperText: 'Helper text',
                          text: 'Text content inside accordion',
                          style: WidgetStyle.outlined,
                          helperPosition: AppAccordionHelpPosition.right),
                      AppAccordion(
                          label: 'Accordion label',
                          helperText: 'Helper text',
                          text: 'Text content inside accordion',
                          style: WidgetStyle.outlined,
                          helperPosition: AppAccordionHelpPosition.right),
                      AppAccordion(
                        size: WidgetSize.lg,
                        iconLabel: Assets.icon.checkCircleRegular.keyName,
                        label: 'Accordion label',
                        helperText: 'Helper text',
                        text: 'Text content inside accordion',
                        style: WidgetStyle.outlined,
                        disabled: true,
                      ),
                      AppAccordion(
                        label: 'Accordion label',
                        helperText: 'Helper text',
                        text: 'Text content inside accordion',
                        style: WidgetStyle.shade,
                        isExpanded: true,
                      )
                    ],
                  ),
                ],
              ),
            ],
          ),
        );
}
