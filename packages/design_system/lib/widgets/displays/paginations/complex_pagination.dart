import 'package:design_system/lib.dart';

class AppComplexPagination extends AppStatefulWidget {
  const AppComplexPagination({
    super.key,
    super.size,
    this.style = AppPaginationStyle.outline,
    required this.totalItems,
    this.itemsPerPage = 10,
    this.itemsPerPageOptions = const [10, 25, 50, 100],
    this.onChanged,
  });

  final AppPaginationStyle style;
  final int totalItems;
  final int itemsPerPage;
  final List<int> itemsPerPageOptions;

  final ValueChanged<int>? onChanged;

  @override
  State<AppComplexPagination> createState() => _AppComplexPaginationState();
}

class _AppComplexPaginationState extends AppState<AppComplexPagination> {
  late int _itemsPerPage;
  int _currentPage = 1;

  @override
  void initState() {
    super.initState();
    _itemsPerPage = widget.itemsPerPage;
  }

  void _onItemsPerPageChanged(int? value) {
    if (value != null) {
      setState(() {
        _itemsPerPage = value;
        _currentPage = 1;
      });
    }
  }

  void _previous() {
    _onPageChanged(_currentPage - 1);
  }

  void _next() {
    _onPageChanged(_currentPage + 1);
  }

  void _onPageChanged(int? page) {
    if (page != null) {
      setState(() {
        _currentPage = page;
      });

      if (widget.onChanged != null) {
        widget.onChanged!(_currentPage);
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    int totalPage = (widget.totalItems / _itemsPerPage).ceil();
    int startItem = ((_currentPage - 1) * _itemsPerPage) + 1;
    int endItem = (startItem + _itemsPerPage - 1).clamp(1, widget.totalItems);

    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        RowLayout(
          gap: 8,
          children: [
            Container(
              height: height,
              decoration: BoxDecoration(
                color: widget.style == AppPaginationStyle.shaded
                    ? context.theme.color.bgInputShaded
                    : null,
                border: Border.all(
                    color: widget.style == AppPaginationStyle.shaded
                        ? Colors.transparent
                        : context.theme.color.border),
                borderRadius: BorderRadius.circular(6),
              ),
              padding: padding,
              child: DropdownButton(
                value: _itemsPerPage,
                onChanged: _onItemsPerPageChanged,
                items: widget.itemsPerPageOptions.map((value) {
                  return DropdownMenuItem(
                    value: value,
                    child: AppText(value.toString(),
                        style: TextStyle(
                            color: context.theme.color.textPrimary,
                            fontSize: widgetSize == WidgetSize.sm ? 12 : 14,
                            fontWeight: FontWeight.w400)),
                  );
                }).toList(),
                underline: Container(),
                isDense: true,
              ),
            ),
            AppText('items per page',
                style: TextStyle(
                    color: context.theme.color.textPrimary,
                    fontSize: widgetSize == WidgetSize.sm ? 12 : 14,
                    fontWeight: FontWeight.w400)),
          ],
        ),
        AppText('$startItem-$endItem of ${widget.totalItems} items',
            style: TextStyle(
                color: context.theme.color.textPrimary,
                fontSize: widgetSize == WidgetSize.sm ? 12 : 14,
                fontWeight: FontWeight.w600)),
        RowLayout(
          gap: 24,
          children: [
            RowLayout(
              gap: 8,
              children: [
                Container(
                  height: height,
                  decoration: BoxDecoration(
                    color: widget.style == AppPaginationStyle.shaded
                        ? context.theme.color.bgInputShaded
                        : null,
                    border: Border.all(
                        color: widget.style == AppPaginationStyle.shaded
                            ? Colors.transparent
                            : context.theme.color.border),
                    borderRadius: BorderRadius.circular(6),
                  ),
                  padding: padding,
                  child: DropdownButton(
                    value: _currentPage,
                    onChanged: _onPageChanged,
                    items: List.generate(totalPage, (index) => index + 1)
                        .map((value) {
                      return DropdownMenuItem(
                        value: value,
                        child: AppText(value.toString(),
                            style: TextStyle(
                                color: context.theme.color.textPrimary,
                                fontSize:
                                    widgetSize == WidgetSize.sm ? 12 : 14,
                                fontWeight: FontWeight.w400)),
                      );
                    }).toList(),
                    underline: Container(),
                    isDense: true,
                  ),
                ),
                AppText('of $totalPage pages',
                    style: TextStyle(
                        color: context.theme.color.textPrimary,
                        fontSize: widgetSize == WidgetSize.sm ? 12 : 14,
                        fontWeight: FontWeight.w400)),
              ],
            ),
            RowLayout(gap: 8, children: [
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
                    child: AppText('←',
                        style: TextStyle(
                            color: _getTextColor(context, _currentPage <= 1),
                            fontSize: widgetSize == WidgetSize.sm ? 12 : 14,
                            fontWeight: FontWeight.w600))),
              ),
              Container(
                height: height,
                decoration: BoxDecoration(
                  color: backgroundColor,
                  border: _getBorder(context, _currentPage >= totalPage),
                  borderRadius: BorderRadius.circular(6),
                ),
                child: TextButton(
                    onPressed: _currentPage >= totalPage ? null : _next,
                    style: TextButton.styleFrom(
                      overlayColor: Colors.transparent,
                      padding: padding,
                    ),
                    child: AppText('→',
                        style: TextStyle(
                            color: _getTextColor(
                                context, _currentPage >= totalPage),
                            fontSize: widgetSize == WidgetSize.sm ? 12 : 14,
                            fontWeight: FontWeight.w600))),
              )
            ])
          ],
        )
      ],
    );
  }

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
        WidgetSize.xxs => const EdgeInsets.symmetric(horizontal: 4),
        WidgetSize.xs => const EdgeInsets.symmetric(horizontal: 4),
        WidgetSize.sm => const EdgeInsets.symmetric(horizontal: 4),
        WidgetSize.md => const EdgeInsets.symmetric(horizontal: 8, vertical: 4),
        WidgetSize.lg =>
          const EdgeInsets.symmetric(horizontal: 12, vertical: 8),
        WidgetSize.xl =>
          const EdgeInsets.symmetric(horizontal: 12, vertical: 8),
        WidgetSize.xxl =>
          const EdgeInsets.symmetric(horizontal: 12, vertical: 8),
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
}
