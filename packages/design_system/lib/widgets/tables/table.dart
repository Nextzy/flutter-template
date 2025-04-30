import 'package:design_system/lib.dart';

class AppTable extends StatefulWidget {
  const AppTable({
    super.key,
    required this.width,
    required this.height,
    required this.headerNames,
    required this.source,
    this.rowsPerPage = 0,
    this.filteredColumn = 0,
    this.hasCheckbox = false,
    this.showSearch = false,
    this.hasBorder = true,
    this.sortColumn = false,
  });

  final double width;
  final double height;
  final List<String> headerNames;
  final AppTableSource source;
  final int rowsPerPage;
  final int filteredColumn;
  final bool hasCheckbox;
  final bool showSearch;
  final bool hasBorder;
  final bool sortColumn;

  @override
  State<AppTable> createState() => _AppTableState();
}

class _AppTableState extends State<AppTable> {
  int _totalPages = 1;
  int _currentPage = 1;
  List<AppTableCellContainer> _cellContainers = [];
  List<AppTableCellContainer> _filteredContainers = [];
  List<AppTableCellContainer> _visibleCellContainers = [];
  String _filteredText = '';
  bool _isSortAscending = true;
  int? _sortColumn;
  bool _isSelectAllActive = false;

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();

    // TODO: Refactor context for a better way.
    _cellContainers = widget.source.getCellContainers(context);
    _filteredContainers = _cellContainers.toList();

    _updatePaging();
  }

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: SizedBox(
        width: widget.width,
        height: widget.height,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            if (widget.showSearch) _buildSearchTextField(),
            _buildHeaderRow(),
            Divider(),
            _buildBodyRows(),
            if (widget.rowsPerPage > 0)
              AppSimplePagination(
                totalPage: _totalPages,
                size: WidgetSize.sm,
                onChanged: (page) {
                  setState(() {
                    _currentPage = page;

                    _updatePaging();
                  });
                },
              ),
          ],
        ),
      ),
    );
  }

  Widget _buildSearchTextField() {
    return Padding(
      padding: const EdgeInsets.only(bottom: 20),
      child: SizedBox(
        width: 150,
        child: AppTextField(
          placeholderText: 'Search..',
          onTextChange: (filteredText) {
            setState(() {
              _filteredText = filteredText;

              _filteredAndSortedCellContainers();
              // _currentPage = 1;
              _updatePaging();
            });
          },
        ),
      ),
    );
  }

  Widget _buildHeaderRow() {
    return RowLayout(
      padding: widget.hasBorder ? const EdgeInsets.only(bottom: 8) : null,
      decoration: BoxDecoration(
          border: widget.hasBorder
              ? Border(bottom: BorderSide(color: context.theme.color.border))
              : null),
      children: [
        if (widget.hasCheckbox)
          Checkbox(
            value: _isSelectAllActive,
            // tristate: true,
            onChanged: (value) {
              setState(() {
                _isSelectAllActive = value!;
                for (final cellContainer in _filteredContainers) {
                  cellContainer.isSelected = _isSelectAllActive;
                }
              });
            },
          ),
        for (var i = 0; i < widget.headerNames.length; i++)
          Expanded(
            child: InkWell(
              onTap: widget.sortColumn
                  ? () {
                      setState(() {
                        _isSortAscending =
                            _sortColumn != i ? true : !_isSortAscending;
                        _sortColumn = i;

                        _filteredAndSortedCellContainers();
                        _updatePaging();
                      });
                    }
                  : null,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Flexible(
                    child: AppText(
                      widget.headerNames[i],
                      textAlign: TextAlign.center,
                      overflow: TextOverflow.ellipsis,
                      maxLines: 2,
                      style: TextStyle(color: context.theme.color.textPrimary),
                    ),
                  ),
                  if (i == _sortColumn)
                    Icon(
                      _isSortAscending
                          ? Icons.arrow_downward
                          : Icons.arrow_upward,
                      size: 12.0,
                      color: context.theme.color.iconPrimary,
                    ),
                ],
              ),
            ),
          ),
      ],
    );
  }

  Widget _buildBodyRows() {
    return Expanded(
      child: ListView.separated(
        itemCount: _visibleCellContainers.length,
        itemBuilder: (context, index) {
          final cellContainer = _visibleCellContainers[index];

          return Row(
            children: [
              if (widget.hasCheckbox)
                Checkbox(
                  value: cellContainer.isSelected,
                  onChanged: (value) {
                    setState(() {
                      cellContainer.isSelected = value!;

                      _isSelectAllActive = _filteredContainers
                          .all((cellContainer) => cellContainer.isSelected);
                    });
                  },
                ),
              for (var i = 0; i < cellContainer.cells.length; i++)
                Expanded(child: cellContainer.cells[i].widget)
            ],
          );
        },
        separatorBuilder: (context, index) {
          return AppDivider(
              color: widget.hasBorder
                  ? context.theme.color.border
                  : Colors.transparent); // Horizontal line separator
        },
      ),
    );
  }

  void _filteredAndSortedCellContainers() {
    // Filter
    _filteredContainers = _cellContainers
        .where((cellContainer) => cellContainer
            .cells[widget.filteredColumn].value
            .toString()
            .toLowerCase()
            .contains(_filteredText.toLowerCase()))
        .toList();

    // Sort
    if (_sortColumn != null) {
      if (_isSortAscending) {
        _filteredContainers.sort((a, b) =>
            a.cells[_sortColumn!].value.compareTo(b.cells[_sortColumn!].value));
      } else {
        _filteredContainers.sort((a, b) =>
            b.cells[_sortColumn!].value.compareTo(a.cells[_sortColumn!].value));
      }
    }
  }

  void _updatePaging() {
    _visibleCellContainers = widget.rowsPerPage > 0
        ? _filteredContainers
            .skip(widget.rowsPerPage * (_currentPage - 1))
            .take(widget.rowsPerPage)
            .toList()
        : _filteredContainers.toList();

    _totalPages = widget.rowsPerPage > 0
        ? (_filteredContainers.length / widget.rowsPerPage).ceil()
        : 1;
  }
}

abstract interface class AppTableSource {
  List<AppTableCellContainer> getCellContainers(BuildContext context) {
    final List<AppTableCellContainer> cellContainers = [];

    for (int i = 0; i < rowCount; i++) {
      final cellContainer = getCellContainer(context, i);
      cellContainers.add(cellContainer);
    }

    return cellContainers;
  }

  AppTableCellContainer getCellContainer(BuildContext context, int index);

  int get rowCount;
}

class AppTableCellContainer {
  AppTableCellContainer({
    required this.cells,
    this.isSelected = false,
  });

  final List<AppTableCell> cells;
  bool isSelected;
}

class AppTableCell {
  AppTableCell({
    required this.value,
    required this.widget,
  });

  final dynamic value;
  final Widget widget;
}
