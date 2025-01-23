import 'package:widgetbook_app/widgetbook.dart';

class GroupAccordionWidgetCase extends WidgetbookScrollableUseCase {
  GroupAccordionWidgetCase({super.name = 'Group'})
      : super(
          builder: (context) => SectionH1Widgetbook(
            title: 'Accordion Group',
            children: [
              SectionH2Widgetbook(
                children: [
                  WrapLayout(
                    gap: 20,
                    children: [
                      AppAccordionGroup(
                        children: [
                          AppAccordion(
                              label: 'Accordion label',
                              helperText: 'Helper text',
                              text: 'Text content inside accordion'),
                          AppAccordion(
                              label: 'Accordion label',
                              helperText: 'Helper text',
                              text: 'Text content inside accordion'),
                          AppAccordion(
                              label: 'Accordion label',
                              helperText: 'Helper text',
                              text: 'Text content inside accordion'),
                        ],
                      ),
                      AppAccordionGroup(
                        style: WidgetStyle.outlined,
                        children: [
                          AppAccordion(
                              label: 'Accordion label',
                              helperText: 'Helper text',
                              text: 'Text content inside accordion'),
                          AppAccordion(
                              label: 'Accordion label',
                              helperText: 'Helper text',
                              text: 'Text content inside accordion'),
                          AppAccordion(
                              label: 'Accordion label',
                              helperText: 'Helper text',
                              text: 'Text content inside accordion'),
                        ],
                      ),
                      AppAccordionGroup(
                        style: WidgetStyle.shade,
                        children: [
                          AppAccordion(
                            label: 'Accordion label',
                            helperText: 'Helper text',
                            text: 'Text content inside accordion',
                          ),
                          AppAccordion(
                              label: 'Accordion label',
                              helperText: 'Helper text',
                              text: 'Text content inside accordion'),
                          AppAccordion(
                              label: 'Accordion label',
                              helperText: 'Helper text',
                              text: 'Text content inside accordion'),
                        ],
                      ),
                    ],
                  ),
                ],
              ),
            ],
          ),
        );
}
