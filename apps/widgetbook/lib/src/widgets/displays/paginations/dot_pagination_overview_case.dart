import 'package:widgetbook_app/widgetbook.dart';

class OverviewDotPaginationWidgetCase extends WidgetbookScrollableUseCase {
  OverviewDotPaginationWidgetCase({super.name = 'Overview'})
      : super(
          builder: (context) => SectionH1Widgetbook(
            title: 'Dot Pagination',
            children: [
              AppDotPagination(
                size: WidgetSize.sm,
                totalPage: 10,
              ),
              AppDotPagination(
                totalPage: 10,
              ),
              AppDotPagination(
                size: WidgetSize.lg,
                totalPage: 10,
              ),
            ],
          ),
        );
}
