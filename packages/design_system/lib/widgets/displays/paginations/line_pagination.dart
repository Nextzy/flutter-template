import 'package:design_system/lib.dart';

class AppLinePagination extends AppStatefulWidget {
  const AppLinePagination(
      {super.key,
      super.size = WidgetSize.md,
      required this.totalPage,
      this.onChanged});

  final int totalPage;

  final ValueChanged<int>? onChanged;

  @override
  State<AppLinePagination> createState() => _AppLinePaginationState();
}

class _AppLinePaginationState extends AppState<AppLinePagination> {
  int _currentPage = 1;

  void _onPageChanged(int page) {
    setState(() {
      _currentPage = page;
    });

    if (widget.onChanged != null) {
      widget.onChanged!(_currentPage);
    }
  }

  @override
  Widget build(BuildContext context) {
    return RowLayout(
      mainAxisSize: MainAxisSize.min,
      mainAxisAlignment: MainAxisAlignment.center,
      padding: const EdgeInsets.all(4),
      decoration: BoxDecoration(
        color: context.theme.color.bgSurface2,
        borderRadius: BorderRadius.circular(4),
      ),
      children: List.generate(widget.totalPage, (index) {
        return Padding(
          padding: const EdgeInsets.all(4),
          child: GestureDetector(
            onTap: () => _onPageChanged(index + 1),
            child: Container(
              width: width,
              height: height,
              decoration: BoxDecoration(
                shape: BoxShape.rectangle,
                color: _currentPage == index + 1
                    ? context.theme.color.iconPrimary
                    : context.theme.color.iconTertiary,
                borderRadius: BorderRadius.circular(4),
              ),
            ),
          ),
        );
      }),
    );
  }

  double get width => switch (widget.size) {
        WidgetSize.xxs => 32,
        WidgetSize.xs => 32,
        WidgetSize.sm => 32,
        WidgetSize.md => 36,
        WidgetSize.lg => 40,
        WidgetSize.xl => 40,
        WidgetSize.xxl => 40,
      };

  double get height => switch (widget.size) {
        WidgetSize.xxs => 4,
        WidgetSize.xs => 4,
        WidgetSize.sm => 4,
        WidgetSize.md => 6,
        WidgetSize.lg => 8,
        WidgetSize.xl => 8,
        WidgetSize.xxl => 8,
      };
}
