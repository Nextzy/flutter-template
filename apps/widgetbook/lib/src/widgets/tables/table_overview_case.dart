import 'package:widgetbook_app/widgetbook.dart';

final persons = MyPerson.getPersons().toList();

class OverviewTableWidgetCase extends WidgetbookScrollableUseCase {
  OverviewTableWidgetCase({super.name = 'Overview'})
      : super(
          builder: (context) {
            return SectionH1Widgetbook(
              title: 'Table',
              children: [
                SizedBox(
                  width: MediaQuery.of(context).size.width,
                  // height: MediaQuery.of(context).size.height,
                  height: 420,
                  child: AppTable(
                    headerNames: [
                      'Name',
                      'Rating',
                      'Last contact',
                      'More info'
                    ],
                    source: PersonTableSource(
                      items: persons,
                    ),
                    rowsPerPage: 4,
                    filteredColumn: 0,
                    hasCheckbox: true,
                  ),
                ),
              ],
            );
          },
        );
}

class PersonTableSource implements AppTableSource {
  PersonTableSource({
    required this.items,
  });

  final List<MyPerson> items;

  @override
  AppTableCellContainer getCellContainer(int index) {
    final item = items[index];

    return AppTableCellContainer(
      cells: [
        AppTableCell(
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
        AppTableCell(
          value: item.rating,
          widget: AppText(
            item.rating.toString(),
            textAlign: TextAlign.center,
          ),
        ),
        AppTableCell(
          value: item.lastContact,
          widget: AppText(
            DateFormat('yyyy-MM-dd').format(item.lastContact),
            textAlign: TextAlign.center,
          ),
        ),
        AppTableCell(
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

  @override
  List<AppTableCellContainer> getCellContainers() {
    final List<AppTableCellContainer> cellContainers = [];

    for (int i = 0; i < rowCount; i++) {
      final cellContainer = getCellContainer(i);
      cellContainers.add(cellContainer);
    }

    return cellContainers;
  }
}

//----------------------------------------------------------

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

    // return [
    //   MyPerson(
    //     name: 'aaa',
    //     rating: Random().nextInt(10000),
    //     result: 'Success',
    //     lastContact: getRandomTime(),
    //   ),
    //   MyPerson(
    //     name: 'aab',
    //     rating: Random().nextInt(10000),
    //     result: 'Success',
    //     lastContact: getRandomTime(),
    //   ),
    //   MyPerson(
    //     name: 'abc',
    //     rating: Random().nextInt(10000),
    //     result: 'Success',
    //     lastContact: getRandomTime(),
    //   ),
    // ];
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
