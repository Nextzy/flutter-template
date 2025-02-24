import 'package:design_system/lib.dart';

enum AppPaginationStyle { outline, shaded, text }

enum AppPaginationType { number, text, input }

class AppSimplePagination extends AppStatefulWidget {
  const AppSimplePagination(
      {super.key,
      super.size,
      this.style = AppPaginationStyle.outline,
      this.type = AppPaginationType.number,
      required this.totalPage,
      this.onChanged});

  final AppPaginationStyle style;
  final AppPaginationType type;
  final int totalPage;

  final ValueChanged<int>? onChanged;

  @override
  State<AppSimplePagination> createState() => _AppSimplePaginationState();
}

class _AppSimplePaginationState extends AppState<AppSimplePagination> {
  int _currentPage = 1;

  void _previous() {
    _onPageChanged(_currentPage - 1);
  }

  void _next() {
    _onPageChanged(_currentPage + 1);
  }

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
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Container(
          height: height,
          decoration: BoxDecoration(
            color: backgroundColor,
            border: _getBorder(context, _currentPage <= 1),
            borderRadius: BorderRadius.circular(6),
          ),
          child: TextButton(
              onPressed: _currentPage <= 1 ? null : _previous,
              style: TextButton.styleFrom(
                overlayColor: Colors.transparent,
                padding: padding,
              ),
              child: AppText('← Previous',
                  style: TextStyle(
                      color: _getTextColor(context, _currentPage <= 1),
                      fontSize: widgetSize == WidgetSize.sm ? 12 : 14,
                      fontWeight: FontWeight.w600))),
        ),
        paginateContent,
        Container(
          height: height,
          decoration: BoxDecoration(
            color: backgroundColor,
            border: _getBorder(context, _currentPage >= widget.totalPage),
            borderRadius: BorderRadius.circular(6),
          ),
          child: TextButton(
              onPressed: _currentPage >= widget.totalPage ? null : _next,
              style: TextButton.styleFrom(
                overlayColor: Colors.transparent,
                padding: padding,
              ),
              child: AppText('Next →',
                  style: TextStyle(
                      color: _getTextColor(
                          context, _currentPage >= widget.totalPage),
                      fontSize: widgetSize == WidgetSize.sm ? 12 : 14,
                      fontWeight: FontWeight.w600))),
        ),
      ],
    );
  }

  AppTextFieldStyle get inputStyle => switch (widget.style) {
        AppPaginationStyle.outline => AppTextFieldStyle.outline,
        AppPaginationStyle.shaded => AppTextFieldStyle.shaded,
        AppPaginationStyle.text => AppTextFieldStyle.outline,
      };

  double get width => switch (widgetSize) {
        WidgetSize.xxs => 22,
        WidgetSize.xs => 22,
        WidgetSize.sm => 22,
        WidgetSize.md => 26,
        WidgetSize.lg => 34,
        WidgetSize.xl => 34,
        WidgetSize.xxl => 34,
      };

  double get inputWidth => switch (widgetSize) {
        WidgetSize.xxs => 56,
        WidgetSize.xs => 56,
        WidgetSize.sm => 56,
        WidgetSize.md => 72,
        WidgetSize.lg => 88,
        WidgetSize.xl => 88,
        WidgetSize.xxl => 88,
      };

  double get height => switch (widgetSize) {
        WidgetSize.xxs => 24,
        WidgetSize.xs => 24,
        WidgetSize.sm => 24,
        WidgetSize.md => 32,
        WidgetSize.lg => 40,
        WidgetSize.xl => 40,
        WidgetSize.xxl => 40,
      };

  EdgeInsets get padding => switch (widgetSize) {
        WidgetSize.xxs =>
          const EdgeInsets.symmetric(horizontal: 8, vertical: 4),
        WidgetSize.xs => const EdgeInsets.symmetric(horizontal: 8, vertical: 4),
        WidgetSize.sm => const EdgeInsets.symmetric(horizontal: 8, vertical: 4),
        WidgetSize.md =>
          const EdgeInsets.symmetric(horizontal: 12, vertical: 4),
        WidgetSize.lg =>
          const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
        WidgetSize.xl =>
          const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
        WidgetSize.xxl =>
          const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
      };

  Color? get backgroundColor => switch (widget.style) {
        AppPaginationStyle.outline => null,
        AppPaginationStyle.shaded => context.theme.color.buttonShade,
        AppPaginationStyle.text => null,
      };

  Border? _getBorder(BuildContext context, bool disabled) =>
      switch (widget.style) {
        AppPaginationStyle.outline => Border.all(
            color: disabled
                ? context.theme.color.border
                : context.theme.color.border
                    .withValues(alpha: 0.08, red: 0, green: 0, blue: 0)),
        AppPaginationStyle.shaded => null,
        AppPaginationStyle.text => null,
      };

  Color _getTextColor(BuildContext context, bool disabled) => disabled
      ? context.theme.color.textPrimary
          .withValues(alpha: 0.08, red: 0, green: 0, blue: 0)
      : context.theme.color.textPrimary;

  Widget get paginateContent => switch (widget.type) {
        AppPaginationType.number => Row(
            children: _buildPageNumber(),
          ),
        AppPaginationType.text =>
          AppText('Page $_currentPage of ${widget.totalPage}'),
        AppPaginationType.input => RowLayout(
            gap: 8,
            children: [
              AppNumberInput(
                  size: widgetSize,
                  style: inputStyle,
                  width: inputWidth,
                  defaultValue: _currentPage,
                  onChanged: _onPageChanged,
                  readOnly: true),
              AppText('of ${widget.totalPage}'),
            ],
          ),
      };

  List<Widget> _buildPageNumber() {
    List<Widget> list = [];

    if (widget.totalPage <= 5) {
      for (int i = 1; i <= widget.totalPage; i++) {
        list.add(_pageButton(i));
      }
    } else {
      if (_currentPage <= 3) {
        for (int i = 1; i <= 3; i++) {
          list.add(_pageButton(i));
        }
        list.add(_ellipsis());
        list.add(_pageButton(widget.totalPage));
      } else if (_currentPage >= widget.totalPage - 2) {
        list.add(_pageButton(1));
        list.add(_ellipsis());
        for (int i = widget.totalPage - 2; i <= widget.totalPage; i++) {
          list.add(_pageButton(i));
        }
      } else {
        list.add(_pageButton(1));
        list.add(_ellipsis());
        list.add(_pageButton(_currentPage));
        list.add(_ellipsis());
        list.add(_pageButton(widget.totalPage));
      }
    }

    return list;
  }

  Widget _pageButton(int page) {
    return GestureDetector(
        onTap: () => _onPageChanged(page),
        child: Container(
            width: width,
            height: height,
            decoration: BoxDecoration(
              color: _currentPage == page
                  ? context.theme.color.buttonSecondaryHover
                  : Colors.transparent,
              borderRadius: BorderRadius.circular(6),
            ),
            child: Center(
                child: AppText(page.toString(),
                    style: TextStyle(
                        color: context.theme.color.textPrimary,
                        fontSize: widgetSize == WidgetSize.sm ? 12 : 14,
                        fontWeight: FontWeight.w600)))));
  }

  Widget _ellipsis() {
    return Padding(
        padding: const EdgeInsets.symmetric(horizontal: 4),
        child: AppText('...',
            style: TextStyle(
                color: context.theme.color.textPrimary,
                fontSize: widgetSize == WidgetSize.sm ? 12 : 14,
                fontWeight: FontWeight.w600)));
  }
}
