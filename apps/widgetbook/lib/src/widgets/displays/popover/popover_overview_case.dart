import 'package:widgetbook_app/widgetbook.dart';

class OverviewPopoverWidgetCase extends WidgetbookScrollableUseCase {
  OverviewPopoverWidgetCase({super.name = 'Overview'})
      : super(
          builder: (context) => SectionH1Widgetbook(
            title: 'Popover',
            children: [
              SectionH2Widgetbook(
                children: [
                  AppPopover(
                    text: 'Top',
                    direction: PopoverDirection.top,
                    child: Container(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 6, vertical: 6),
                      child: AppText('Popover content',
                          style: TextStyle(
                            color: context.theme.color.textPrimary,
                            fontSize: 14,
                            fontWeight: FontWeight.w400,
                          )),
                    ),
                  ),
                  AppPopover(
                    text: 'Bottom',
                    child: Container(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 6, vertical: 6),
                      child: AppText('Popover content',
                          style: TextStyle(
                            color: context.theme.color.textPrimary,
                            fontSize: 14,
                            fontWeight: FontWeight.w400,
                          )),
                    ),
                  ),
                  AppPopover(
                    text: 'Left',
                    direction: PopoverDirection.left,
                    child: Container(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 6, vertical: 6),
                      child: AppText('Popover content',
                          style: TextStyle(
                            color: context.theme.color.textPrimary,
                            fontSize: 14,
                            fontWeight: FontWeight.w400,
                          )),
                    ),
                  ),
                  AppPopover(
                    text: 'Right',
                    direction: PopoverDirection.right,
                    child: Container(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 6, vertical: 6),
                      child: AppText('Popover content',
                          style: TextStyle(
                            color: context.theme.color.textPrimary,
                            fontSize: 14,
                            fontWeight: FontWeight.w400,
                          )),
                    ),
                  )
                ],
              ),
            ],
          ),
        );
}
