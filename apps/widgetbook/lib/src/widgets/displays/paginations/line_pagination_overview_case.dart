import 'package:widgetbook_app/widgetbook.dart';

class OverviewLinePaginationWidgetCase extends WidgetbookScrollableUseCase {
  OverviewLinePaginationWidgetCase({super.name = 'Overview'})
      : super(
          builder: (context) => SectionH1Widgetbook(
            title: 'Line Pagination',
            children: [
              AppLinePagination(
                size: WidgetSize.sm,
                totalPage: 5,
              ),
              AppLinePagination(
                totalPage: 5,
              ),
              AppLinePagination(
                size: WidgetSize.lg,
                totalPage: 5,
              ),
            ],
          ),
        );
}
