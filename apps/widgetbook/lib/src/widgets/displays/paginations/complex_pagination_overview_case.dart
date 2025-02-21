import 'package:widgetbook_app/widgetbook.dart';

class OverviewComplexPaginationWidgetCase extends WidgetbookScrollableUseCase {
  OverviewComplexPaginationWidgetCase({super.name = 'Overview'})
      : super(
          builder: (context) => SectionH1Widgetbook(
            title: 'Complex Pagination',
            children: [
              AppComplexPagination(
                size: WidgetSize.sm,
                totalItems: 100,
                itemsPerPage: 10,
              ),
              AppComplexPagination(
                totalItems: 100,
                itemsPerPage: 10,
              ),
              AppComplexPagination(
                size: WidgetSize.lg,
                totalItems: 100,
                itemsPerPage: 10,
              ),
              AppComplexPagination(
                size: WidgetSize.sm,
                style: AppPaginationStyle.shaded,
                totalItems: 100,
                itemsPerPage: 10,
              ),
              AppComplexPagination(
                style: AppPaginationStyle.shaded,
                totalItems: 100,
                itemsPerPage: 10,
              ),
              AppComplexPagination(
                size: WidgetSize.lg,
                style: AppPaginationStyle.shaded,
                totalItems: 100,
                itemsPerPage: 10,
              ),
            ],
          ),
        );
}
