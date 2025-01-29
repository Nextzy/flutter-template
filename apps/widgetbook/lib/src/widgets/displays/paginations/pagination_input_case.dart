import 'package:widgetbook_app/widgetbook.dart';

class InputPaginationWidgetCase extends WidgetbookScrollableUseCase {
  InputPaginationWidgetCase({super.name = 'Input'})
      : super(
          builder: (context) => SectionH1Widgetbook(
            title: 'Input Pagination',
            children: [
              AppSimplePagination(
                  size: WidgetSize.sm,
                  type: AppPaginationType.input,
                  totalPage: 10),
              AppSimplePagination(
                style: AppPaginationStyle.shaded,
                type: AppPaginationType.input,
                totalPage: 10,
              ),
              AppSimplePagination(
                size: WidgetSize.lg,
                style: AppPaginationStyle.text,
                type: AppPaginationType.input,
                totalPage: 10,
              )
            ],
          ),
        );
}
