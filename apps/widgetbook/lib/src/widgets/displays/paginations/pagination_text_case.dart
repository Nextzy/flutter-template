import 'package:widgetbook_app/widgetbook.dart';

class TextPaginationWidgetCase extends WidgetbookScrollableUseCase {
  TextPaginationWidgetCase({super.name = 'Text'})
      : super(
          builder: (context) => SectionH1Widgetbook(
            title: 'Text Pagination',
            children: [
              AppSimplePagination(
                  size: WidgetSize.sm,
                  type: AppPaginationType.text,
                  totalPage: 10),
              AppSimplePagination(
                style: AppPaginationStyle.shaded,
                type: AppPaginationType.text,
                totalPage: 10,
              ),
              AppSimplePagination(
                size: WidgetSize.lg,
                style: AppPaginationStyle.text,
                type: AppPaginationType.text,
                totalPage: 10,
              ),
            ],
          ),
        );
}
