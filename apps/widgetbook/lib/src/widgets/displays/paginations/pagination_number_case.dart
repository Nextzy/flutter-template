import 'package:widgetbook_app/widgetbook.dart';

class NumberPaginationWidgetCase extends WidgetbookScrollableUseCase {
  NumberPaginationWidgetCase({super.name = 'Number'})
      : super(
          builder: (context) => SectionH1Widgetbook(
            title: 'Number Pagination',
            children: [
              AppSimplePagination(size: WidgetSize.sm, totalPage: 10),
              AppSimplePagination(
                style: AppPaginationStyle.shaded,
                totalPage: 10,
              ),
              AppSimplePagination(
                style: AppPaginationStyle.text,
                size: WidgetSize.lg,
                totalPage: 10,
              ),
            ],
          ),
        );
}
