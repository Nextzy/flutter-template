import 'package:widgetbook_app/widgetbook.dart';

class DotStatusWidgetCase extends WidgetbookScrollableUseCase {
  DotStatusWidgetCase({super.name = 'Dot'})
      : super(
          builder: (context) => SectionH1Widgetbook(
            title: 'Status Dot',
            children: [
              StatusDot(
                color: context.theme.color.bgPositive,
              ),
              StatusDot(
                color: context.theme.color.bgNegative,
              ),
              StatusDot(
                color: context.theme.color.bgBlue,
              ),
              StatusDot(
                color: context.theme.color.bgWarning,
              ),
              StatusDot(
                color: context.theme.color.bgViolet,
              ),
              StatusDot(
                color: context.theme.color.bgTeal,
              ),
              StatusDot(
                color: context.theme.color.bgGray,
              ),
            ],
          ),
        );
}
