import 'package:example_app/application.dart';

@RoutePage()
class NotesPage extends AppPage {
  const NotesPage({super.key});

  @override
  State<NotesPage> createState() => _NotesPageState();
}

class _NotesPageState extends AppPageState<NotesPage> {
  @override
  Widget build(BuildContext context) {
    return AppScaffold(
      backgroundColor: context.theme.color.bg,
      body: SafeArea(
          child: Row(
        children: [
          if (ResponsiveBreakpoints.of(context).largerThan(TABLET))
            ContainerLayout(
              width: 64,
              height: MediaQuery.sizeOf(context).height,
              padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 16),
              decoration: BoxDecoration(
                color: context.theme.color.bgSurface1,
                border: Border(
                  right: BorderSide(color: context.theme.color.border),
                ),
              ),
              child: ColumnLayout(children: [
                AppCircleAvatar(
                  style: WidgetStyle.subtle,
                  size: WidgetSize.md,
                  path: Assets.mock.avatarSquared2.keyName,
                ),
                Gap(16),
                Expanded(
                    child: ColumnLayout(gap: 8, children: [
                  AppIconButton(
                    icon: Assets.icon.magnifyingGlassRegular.keyName,
                    style: AppButtonStyle.text,
                  ),
                  AppIconButton(
                    icon: Assets.icon.arrowsClockwiseRegular.keyName,
                    style: AppButtonStyle.text,
                  ),
                  AppIconButton(
                    icon: Assets.icon.gearRegular.keyName,
                    style: AppButtonStyle.text,
                  ),
                  AppIconButton(
                    icon: Assets.icon.bookmarkSimpleRegular.keyName,
                    style: AppButtonStyle.text,
                  ),
                  AppIconButton(
                    icon: Assets.icon.footprintsLight.keyName,
                    style: AppButtonStyle.text,
                  ),
                ])),
                ColumnLayout(gap: 8, children: [
                  AppIconButton(
                    icon: Assets.icon.stackRegular.keyName,
                    style: AppButtonStyle.text,
                  ),
                  AppIconButton(
                    icon: Assets.icon.arrowsDownUpRegular.keyName,
                    style: AppButtonStyle.text,
                  ),
                  AppIconButton(
                    icon: Assets.icon.trashSimpleRegular.keyName,
                    style: AppButtonStyle.text,
                  ),
                  AppIconButton(
                    icon: Assets.icon.plusRegular.keyName,
                  ),
                ])
              ]),
            ),
          Expanded(
              child: Column(children: [
            ContainerLayout(
              height: 56,
              padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 12),
              decoration: BoxDecoration(
                border: Border(
                  bottom: BorderSide(color: context.theme.color.border),
                ),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  if (ResponsiveBreakpoints.of(context).largerThan(TABLET))
                    RowLayout(children: [
                      AppIconButton(
                        icon: Assets.icon.arrowLeftRegular.keyName,
                        style: AppButtonStyle.text,
                      ),
                      AppIconButton(
                          icon: Assets.icon.arrowRightRegular.keyName,
                          style: AppButtonStyle.text),
                      Gap(24),
                      AppBreadcrumbs(children: [
                        AppBreadcrumbSection(
                          label: '...',
                        ),
                        AppBreadcrumbSection(
                          icon: Assets.icon.tableRegular.keyName,
                          label: 'Section',
                        ),
                        AppBreadcrumbSection(
                          icon: Assets.logo.productHunt.keyName,
                          label: 'Top ProductHunt 2020',
                          hasColorFilter: false,
                        ),
                      ])
                    ])
                  else
                    RowLayout(children: [
                      AppIconButton(
                        icon: Assets.icon.caretLeftRegular.keyName,
                        style: AppButtonStyle.text,
                      ),
                      AppBreadcrumbs(children: [
                        AppBreadcrumbSection(
                          icon: Assets.logo.productHunt.keyName,
                          label: 'Top ProductHunt 2020',
                          hasColorFilter: false,
                        ),
                      ])
                    ]),
                  if (ResponsiveBreakpoints.of(context).largerThan(TABLET))
                    RowLayout(children: [
                      AppButton(text: 'Share', style: AppButtonStyle.text),
                      AppButton(text: 'Updates', style: AppButtonStyle.text),
                      AppButton(text: 'Favorites', style: AppButtonStyle.text),
                      AppIconButton(
                        icon: Assets.icon.dotsThreeRegular.keyName,
                        style: AppButtonStyle.text,
                      )
                    ])
                ],
              ),
            ),
            Expanded(
              child: SingleChildScrollView(
                  padding: const EdgeInsets.symmetric(vertical: 40),
                  child: MaxWidthBox(
                      maxWidth: 1300,
                      padding: const EdgeInsets.symmetric(
                          horizontal: 24, vertical: 24),
                      child: ColumnLayout(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            AppCircleAvatar(
                              size: WidgetSize.lg,
                              style: WidgetStyle.filled,
                              title: 'P',
                              color: Color(0xFFDA552F),
                            ),
                            Gap(20),
                            AppText('Top ProductHunt 2020',
                                style: TextStyle(
                                    color: context.theme.color.textPrimary,
                                    fontSize: 36,
                                    fontWeight: FontWeight.w600)),
                            Gap(16),
                            AppText(
                                'Welcome to Top Products of ProductHunt 2020!',
                                style: TextStyle(
                                    color: context.theme.color.textSecondary,
                                    fontSize: 16,
                                    fontWeight: FontWeight.w400)),
                            Gap(8),
                            AppText(
                              'Here you can see the list of all Products of the day that were relevant in 2020. Via the view settings, you can choose the most convenient type of content view for yourself: Gallery view, Board view or Table view. In each cell you will find the Project Name, Launch Date on ProductHunt and the number of Upvotes.',
                              style: TextStyle(
                                  color: context.theme.color.textSecondary,
                                  fontSize: 16,
                                  fontWeight: FontWeight.w400),
                            ),
                            Gap(32),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                AppButton(
                                    text: 'Show All',
                                    startIcon: Assets.icon.tableRegular.keyName,
                                    endIcon:
                                        Assets.icon.caretDownRegular.keyName,
                                    style: AppButtonStyle.text),
                                RowLayout(gap: 8, children: [
                                  if (ResponsiveBreakpoints.of(context)
                                      .largerThan(TABLET))
                                    RowLayout(children: [
                                      AppButton(
                                          text: 'Properties',
                                          style: AppButtonStyle.text),
                                      AppButton(
                                          text: 'Filter',
                                          style: AppButtonStyle.text),
                                      AppButton(
                                          text: 'Sort',
                                          style: AppButtonStyle.text),
                                      AppButton(
                                        text: 'Search',
                                        style: AppButtonStyle.text,
                                        startIcon: Assets.icon
                                            .magnifyingGlassRegular.keyName,
                                      ),
                                    ]),
                                  AppIconButton(
                                    icon: Assets.icon.dotsThreeRegular.keyName,
                                    style: AppButtonStyle.text,
                                  ),
                                  AppButton(
                                    text: 'New',
                                    endIcon: Assets.icon.plusRegular.keyName,
                                  ),
                                ])
                              ],
                            ),
                            AppDivider(),
                            Gap(8),
                            AppTable(
                              width: 1300,
                              height: 576,
                              headerNames: [
                                'ID',
                                'Name',
                                'URL',
                                'Upvote',
                                'Date',
                                'Day',
                              ],
                              source: NoteTableSource(items: notes),
                              sortColumn: true,
                            )
                          ]))),
            )
          ]))
        ],
      )),
    );
  }
}

final notes = Note.getNotes().toList();

class NoteTableSource implements AppTableSource {
  NoteTableSource({
    required this.items,
  });

  final List<Note> items;

  @override
  AppTableCellContainer getCellContainer(BuildContext context, int index) {
    final item = items[index];
    return AppTableCellContainer(cells: [
      AppTableCell(
        value: item.id,
        widget: AppText(
          item.id,
          textAlign: TextAlign.center,
          style: TextStyle(
              color: Colors.black, fontSize: 14, fontWeight: FontWeight.w400),
        ),
      ),
      AppTableCell(
        value: item.name,
        widget: AppText(
          item.name,
          textAlign: TextAlign.center,
          style: TextStyle(
              color: Colors.black, fontSize: 14, fontWeight: FontWeight.w400),
        ),
      ),
      AppTableCell(
        value: item.url,
        widget: AppLink(
          text: item.url,
          url: item.url,
        ),
      ),
      AppTableCell(
        value: item.vote,
        widget: AppText(
          item.vote.toString(),
          textAlign: TextAlign.center,
          style: TextStyle(
              color: Colors.black, fontSize: 14, fontWeight: FontWeight.w400),
        ),
      ),
      AppTableCell(
        value: item.date,
        widget: AppText(
          DateFormat('MMM d, yyyy').format(item.date),
          textAlign: TextAlign.center,
          style: TextStyle(
              color: Colors.black, fontSize: 14, fontWeight: FontWeight.w400),
        ),
      ),
      AppTableCell(
          value: item.day,
          widget:
              RowLayout(mainAxisAlignment: MainAxisAlignment.center, children: [
            AppBadge(
              label: item.day,
              style: WidgetStyle.subtle,
              color: item.color,
              borderRadius: BorderRadius.circular(6),
            ),
          ])),
    ]);
  }

  @override
  int get rowCount => items.length;

  @override
  List<AppTableCellContainer> getCellContainers(BuildContext context) {
    final List<AppTableCellContainer> cellContainers = [];

    for (int i = 0; i < rowCount; i++) {
      final cellContainer = getCellContainer(context, i);
      cellContainers.add(cellContainer);
    }

    return cellContainers;
  }
}

class Note {
  String id;
  String name;
  String url;
  int vote;
  DateTime date;
  String day;
  Color color;

  Note({
    required this.id,
    required this.name,
    required this.url,
    required this.vote,
    required this.date,
    required this.day,
    required this.color,
  });

  static List<Note> getNotes() {
    return [
      Note(
          id: '01',
          name: 'Colorsinspo',
          url: 'https://www.producthunt.com',
          vote: 832,
          date: DateTime(2020, 1, 1),
          day: 'Wednesday',
          color: Colors.red),
      Note(
        id: '02',
        name: 'The Remote Weekly',
        url: 'https://www.producthunt.com',
        vote: 637,
        date: DateTime(2020, 1, 2),
        day: 'Thursday',
        color: Colors.blue,
      ),
      Note(
          id: '03',
          name: 'Summerian',
          url: 'https://www.producthunt.com',
          vote: 459,
          date: DateTime(2020, 1, 3),
          day: 'Friday',
          color: Colors.green),
      Note(
          id: '04',
          name: 'IdeasDrop',
          url: 'https://www.producthunt.com',
          vote: 547,
          date: DateTime(2020, 1, 4),
          day: 'Saturday',
          color: Colors.orange),
      Note(
          id: '05',
          name: 'Acapella Extractor',
          url: 'https://www.producthunt.com',
          vote: 675,
          date: DateTime(2020, 1, 5),
          day: 'Sunday',
          color: Colors.purple),
      Note(
          id: '06',
          name: 'Resemble Clone',
          url: 'https://www.producthunt.com',
          vote: 747,
          date: DateTime(2020, 1, 6),
          day: 'Monday',
          color: Colors.teal),
      Note(
          id: '07',
          name: '30 seconds of code',
          url: 'https://www.producthunt.com',
          vote: 916,
          date: DateTime(2020, 1, 7),
          day: 'Tuesday',
          color: Colors.greenAccent),
      Note(
          id: '08',
          name: 'All Design Conferences',
          url: 'https://www.producthunt.com',
          vote: 748,
          date: DateTime(2020, 1, 8),
          day: 'Wednesday',
          color: Colors.red),
      Note(
          id: '09',
          name: 'GrowSurf 2.0',
          url: 'https://www.producthunt.com',
          vote: 732,
          date: DateTime(2020, 1, 9),
          day: 'Thursday',
          color: Colors.blue),
      Note(
          id: '10',
          name: 'LetterWell',
          url: 'https://www.producthunt.com',
          vote: 927,
          date: DateTime(2020, 1, 10),
          day: 'Friday',
          color: Colors.green),
    ];
  }
}
