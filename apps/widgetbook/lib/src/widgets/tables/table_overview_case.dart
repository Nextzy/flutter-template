import 'package:widgetbook_app/widgetbook.dart';

class OverviewTableWidgetCase extends WidgetbookScrollableUseCase {
  OverviewTableWidgetCase({super.name = 'Overview'})
      : super(
          builder: (context) {
            return SectionH1Widgetbook(
              title: 'Table',
              children: [
                // SizedBox(
                //   width: MediaQuery.of(context).size.width,
                //   height: 450,
                //   child: MyPaginatedDataTable(),
                // ),

                SizedBox(
                  width: MediaQuery.of(context).size.width,
                  // height: MediaQuery.of(context).size.height,
                  height: 400,
                  child: AppTable(
                    headerNames: [
                      'Name',
                      'Rating',
                      'Last contact',
                      'More info'
                    ],
                    dataTableSource: MyDataTableSource(
                      items: MyPerson.getPersons().toList(),
                    ),
                    rowsPerPage: 4,
                    filteredColumn: 0,
                  ),
                ),
              ],
            );
          },
        );
}

class AppTable extends StatefulWidget {
  const AppTable({
    super.key,
    required this.headerNames,
    required this.dataTableSource,
    this.rowsPerPage = 0,
    this.filteredColumn = 0,
  });

  final List<String> headerNames;
  final AppDataTableSource dataTableSource;
  final int rowsPerPage;
  final int filteredColumn;

  @override
  State<AppTable> createState() => _AppTableState();
}

class _AppTableState extends State<AppTable> {
  int _totalPages = 1;
  int _currentPage = 1;
  List<MyCellContainer> _rowWidgetsList = [];
  List<MyCellContainer> _activeRowWidgetsList = [];

  @override
  void initState() {
    super.initState();

    _rowWidgetsList = widget.dataTableSource.getCellContainers();

    _updatePaging();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.end,
      children: [
        Padding(
          padding: const EdgeInsets.only(bottom: 20),
          child: SizedBox(
            width: 150,
            child: AppTextField(
              placeholderText: 'Search..',
              onTextChange: (filteredText) {
                setState(() {
                  _rowWidgetsList =
                      widget.dataTableSource.getFilteredCellContainers(
                    filteredColumn: widget.filteredColumn,
                    filteredText: filteredText,
                  );

                  _updatePaging();
                });
              },
            ),
          ),
        ),
        // Space.gap20,
        ...[
          Row(
            children: [
              for (var i = 0; i < widget.headerNames.length; i++)
                Expanded(
                  child: InkWell(
                    child: AppText(
                      widget.headerNames[i],
                      textAlign: TextAlign.center,
                    ),
                    onTap: () {
                      print('tap $i');
                    },
                  ),
                ),
            ],
          )
        ],
        Divider(),
        Expanded(
          child: ListView.separated(
            itemCount: _activeRowWidgetsList.length,
            itemBuilder: (context, index) {
              final rowWidgets = _activeRowWidgetsList[index];

              return Row(
                children: List.generate(rowWidgets.cells.length, (index) {
                  return Expanded(child: rowWidgets.cells[index].widget);
                }),
              );
            },
            separatorBuilder: (context, index) {
              return Divider(); // Horizontal line separator
            },
          ),
        ),
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
    );
  }

  void _updatePaging() {
    _activeRowWidgetsList = widget.rowsPerPage > 0
        ? _rowWidgetsList
            .skip(widget.rowsPerPage * (_currentPage - 1))
            .take(widget.rowsPerPage)
            .toList()
        : _rowWidgetsList.toList();

    _totalPages = (_rowWidgetsList.length / widget.rowsPerPage).ceil();
  }
}

abstract interface class AppDataTableSource {
  List<MyCellContainer> getCellContainers() {
    final List<MyCellContainer> rowWidgetsList = [];

    for (int i = 0; i < rowCount; i++) {
      final rowWidgets = getCellContainer(i);
      rowWidgetsList.add(rowWidgets);
    }

    return rowWidgetsList;
  }

  List<MyCellContainer> getFilteredCellContainers({
    required int filteredColumn,
    required String filteredText,
  });

  MyCellContainer getCellContainer(int index);

  int get rowCount;
}

class MyDataTableSource extends AppDataTableSource {
  MyDataTableSource({
    required this.items,
  });

  final List<MyPerson> items;

  @override
  List<MyCellContainer> getFilteredCellContainers({
    required int filteredColumn,
    required String filteredText,
  }) {
    return getCellContainers()
        .where((cellContainer) => cellContainer.cells[filteredColumn].value
            .toLowerCase()
            .contains(filteredText.toLowerCase()))
        .toList();
  }

  @override
  MyCellContainer getCellContainer(int index) {
    final item = items[index];

    return MyCellContainer(
      cells: [
        MyCell(
          value: item.name,
          widget: Wrap(
            alignment: WrapAlignment.center,
            runAlignment: WrapAlignment.center,
            crossAxisAlignment: WrapCrossAlignment.center,
            spacing: 10,
            children: [
              AppCircleAvatar(
                style: WidgetStyle.subtle,
                size: WidgetSize.md,
                path: Assets.mock.avatarSquared1.keyName,
              ),
              AppText(
                item.name,
                textAlign: TextAlign.center,
              ),
            ],
          ),
        ),
        MyCell(
          value: item.rating.toString(),
          widget: AppText(
            item.rating.toString(),
            textAlign: TextAlign.center,
          ),
        ),
        MyCell(
          value: DateFormat('yyyy-MM-dd').format(item.lastContact),
          widget: AppText(
            DateFormat('yyyy-MM-dd').format(item.lastContact),
            textAlign: TextAlign.center,
          ),
        ),
        MyCell(
          value: '',
          widget: AppOutlineButton(
            text: 'See more',
            size: WidgetSize.sm,
          ),
        ),
      ],
    );
  }

  @override
  int get rowCount => items.length;
}

class MyCell {
  const MyCell({
    required this.value,
    required this.widget,
  });

  final String value;
  final Widget widget;
}

class MyCellContainer {
  MyCellContainer({
    required this.cells,
  });

  final List<MyCell> cells;
}

//----------------------------------------------------------

class MyPaginatedDataTable extends StatefulWidget {
  const MyPaginatedDataTable({super.key});

  @override
  State<MyPaginatedDataTable> createState() => _MyPaginatedDataTableState();
}

class _MyPaginatedDataTableState extends State<MyPaginatedDataTable> {
  bool _isSortAscending = true;
  int? _currentSortColumnIndex;

  final persons = MyPerson.getPersons();
  List<MyPerson> filteredPersons = [];

  final _controller = TextEditingController();

  @override
  void initState() {
    super.initState();

    filteredPersons = persons.toList();
  }

  @override
  Widget build(BuildContext context) {
    return PaginatedDataTable2(
      header: Padding(
        padding: const EdgeInsets.only(top: 20),
        child: AppTextField(
          // controller: _controller,
          placeholderText: 'Search..',
          onTextChange: (t) {
            setState(() {
              print('t: $t');
              filteredPersons = persons
                  .where((e) => e.name.toLowerCase().contains(t.toLowerCase()))
                  .toList();
              print('f: ${filteredPersons.length}');
            });
          },
        ),
      ),
      showFirstLastButtons: true,
      showCheckboxColumn: true,
      headingCheckboxTheme: CheckboxThemeData(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(4),
        ),
      ),
      datarowCheckboxTheme: CheckboxThemeData(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(4),
        ),
      ),
      rowsPerPage: 5,
      wrapInCard: false,
      // fit: FlexFit.loose,
      fit: FlexFit.tight,
      renderEmptyRowsInTheEnd: false,
      minWidth: 1000,
      // headingRowHeight: 100,
      // dataRowHeight: 120,
      // columnSpacing: 200,
      onPageChanged: (value) {},
      hidePaginator: false,
      sortArrowAlwaysVisible: true,
      sortAscending: _isSortAscending,
      sortColumnIndex: _currentSortColumnIndex,
      // onRowsPerPageChanged: (no) {},
      columns: [
        // DataColumn2(
        //   // size: ColumnSize.L,
        //   label: Padding(
        //     padding: const EdgeInsets.only(top: 10),
        //     child: TextFormField(
        //       controller: _controller,
        //       autofocus: false,
        //       decoration: InputDecoration(
        //         hintText: 'Search..',
        //         fillColor: Colors.white,
        //         focusedBorder: OutlineInputBorder(
        //           borderRadius: BorderRadius.circular(10),
        //           borderSide: BorderSide(
        //             color: Colors.blue,
        //           ),
        //         ),
        //         enabledBorder: OutlineInputBorder(
        //           borderRadius: BorderRadius.circular(10),
        //           borderSide: BorderSide(
        //             color: Colors.grey,
        //           ),
        //         ),
        //       ),
        //       onChanged: (t) {
        //         setState(() {
        //           print('t: $t');
        //           filteredPersons = persons
        //               .where(
        //                   (e) => e.name.toLowerCase().contains(t.toLowerCase()))
        //               .toList();
        //           print('f: ${filteredPersons.length}');
        //         });
        //       },
        //     ),
        //   ),
        // ),
        // DataColumn2(
        //   // size: ColumnSize.L,
        //   label: Padding(
        //     padding: const EdgeInsets.only(top: 10),
        //     child: AppTextField(
        //       controller: _controller,
        //       placeholderText: 'Search..',
        //       onTextChange: (t) {
        //         setState(() {
        //           print('t: $t');
        //           filteredPersons = persons
        //               .where(
        //                   (e) => e.name.toLowerCase().contains(t.toLowerCase()))
        //               .toList();
        //           print('f: ${filteredPersons.length}');
        //         });
        //       },
        //     ),
        //   ),
        // ),
        DataColumn2(
          label: AppText('Name'),
          onSort: (columnIndex, isSortAscending) {
            setState(() {
              _currentSortColumnIndex = 0;

              if (isSortAscending) {
                filteredPersons.sort((a, b) => a.name.compareTo(b.name));
              } else {
                filteredPersons.sort((a, b) => b.name.compareTo(a.name));
              }

              _isSortAscending = !_isSortAscending;
            });
          },
        ),
        DataColumn2(
          // size: ColumnSize.S,
          label: AppText('Rating'),
          onSort: (columnIndex, isSortAscending) {
            _currentSortColumnIndex = 1;
            setState(() {
              if (isSortAscending) {
                filteredPersons.sort((a, b) => a.rating.compareTo(b.rating));
              } else {
                filteredPersons.sort((a, b) => b.rating.compareTo(a.rating));
              }

              _isSortAscending = !_isSortAscending;
            });
          },
        ),
        DataColumn2(
          // size: ColumnSize.S,
          label: AppText('Result'),
          onSort: (columnIndex, isSortAscending) {
            setState(() {
              _currentSortColumnIndex = 2;

              if (isSortAscending) {
                filteredPersons.sort((a, b) => a.result.compareTo(b.result));
              } else {
                filteredPersons.sort((a, b) => b.result.compareTo(a.result));
              }

              _isSortAscending = !_isSortAscending;
            });
          },
        ),
        DataColumn2(
          // size: ColumnSize.S,
          label: AppText('Last contact'),
          onSort: (columnIndex, isSortAscending) {
            setState(() {
              _currentSortColumnIndex = 3;

              if (isSortAscending) {
                filteredPersons
                    .sort((a, b) => a.lastContact.compareTo(b.lastContact));
              } else {
                filteredPersons
                    .sort((a, b) => b.lastContact.compareTo(a.lastContact));
              }

              _isSortAscending = !_isSortAscending;
            });
          },
        ),
        DataColumn2(
          label: AppText('More info'),
        ),
      ],
      source: MyDataSource(filteredPersons),
    );
  }
}

class MyDataSource extends DataTableSource {
  final List<MyPerson> _data;

  MyDataSource(this._data);

  @override
  DataRow getRow(int index) {
    final item = _data[index];

    return DataRow2(
      // selected: true,
      cells: [
        DataCell(
          Row(
            children: [
              AppCircleAvatar(
                style: WidgetStyle.subtle,
                size: WidgetSize.md,
                path: Assets.mock.avatarSquared1.keyName,
              ),
              Space.gap8,
              AppText(item.name),
            ],
          ),
          // AppText(item.name),
        ),
        DataCell(
          AppText(item.rating.toString()),
        ),
        DataCell(
          AppText(item.result),
        ),
        DataCell(
          AppText(DateFormat('yyyy-MM-dd').format(item.lastContact)),
        ),
        DataCell(
          AppOutlineButton(
            text: 'See more ->',
            size: WidgetSize.sm,
          ),
        ),
      ],
      onSelectChanged: (e) => {},
    );
  }

  @override
  int get rowCount => _data.length;

  @override
  int get selectedRowCount => 0;

  @override
  bool get isRowCountApproximate => false;
}

class MyPerson {
  String name;
  int rating;
  String result;
  DateTime lastContact;

  MyPerson({
    required this.name,
    required this.rating,
    required this.result,
    required this.lastContact,
  });

  static List<MyPerson> getPersons() {
    return [
      MyPerson(
        name: 'Olivia Carter',
        rating: Random().nextInt(10000),
        result: 'Success',
        lastContact: getRandomTime(),
      ),
      MyPerson(
        name: 'Liam Johnson',
        rating: Random().nextInt(10000),
        result: 'Success',
        lastContact: getRandomTime(),
      ),
      MyPerson(
        name: 'Emma Davis',
        rating: Random().nextInt(10000),
        result: 'Success',
        lastContact: getRandomTime(),
      ),
      MyPerson(
        name: 'Noah Miller',
        rating: Random().nextInt(10000),
        result: 'Success',
        lastContact: getRandomTime(),
      ),
      MyPerson(
        name: 'Ava Wilson',
        rating: Random().nextInt(10000),
        result: 'Success',
        lastContact: getRandomTime(),
      ),
      MyPerson(
        name: 'Jackson Moore',
        rating: Random().nextInt(10000),
        result: 'Success',
        lastContact: getRandomTime(),
      ),
      MyPerson(
        name: 'Sophia Taylor',
        rating: Random().nextInt(10000),
        result: 'Success',
        lastContact: getRandomTime(),
      ),
      MyPerson(
        name: 'Aiden Anderson',
        rating: Random().nextInt(10000),
        result: 'Success',
        lastContact: getRandomTime(),
      ),
      MyPerson(
        name: 'Isabella Thomas',
        rating: Random().nextInt(10000),
        result: 'Success',
        lastContact: getRandomTime(),
      ),
      MyPerson(
        name: 'Lucas Jackson',
        rating: Random().nextInt(10000),
        result: 'Success',
        lastContact: getRandomTime(),
      ),
      MyPerson(
        name: 'Mia White',
        rating: Random().nextInt(10000),
        result: 'Success',
        lastContact: getRandomTime(),
      ),
      MyPerson(
        name: 'Ethan Harris',
        rating: Random().nextInt(10000),
        result: 'Success',
        lastContact: getRandomTime(),
      ),
      MyPerson(
        name: 'Harper Clark',
        rating: Random().nextInt(10000),
        result: 'Success',
        lastContact: getRandomTime(),
      ),
      MyPerson(
        name: 'James Lewis',
        rating: Random().nextInt(10000),
        result: 'Success',
        lastContact: getRandomTime(),
      ),
      MyPerson(
        name: 'Amelia Robinson',
        rating: Random().nextInt(10000),
        result: 'Success',
        lastContact: getRandomTime(),
      ),
    ];
  }
}

DateTime getRandomTime() {
  final random = Random();

  return DateTime.now().subtract(Duration(
    days: random.nextInt(90),
    hours: random.nextInt(24),
    minutes: random.nextInt(60),
  ));
}
