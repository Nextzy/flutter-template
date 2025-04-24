import 'package:example_app/application.dart';

@RoutePage()
class HomePage extends AppPage {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends AppPageState<HomePage> {
  @override
  Widget build(BuildContext context) {
    return AppScaffold(
      backgroundColor: context.theme.color.bg,
      body: SafeArea(
        child: ContainerLayout(
          alignment: Alignment.center,
          child: ColumnLayout(
            scrollable: true,
            mainAxisSize: MainAxisSize.min,
            mainAxisAlignment: MainAxisAlignment.center,
            padding: Space.insetAll16,
            gap: 40,
            children: [
              ResponsiveRowColumn(
                  layout: ResponsiveBreakpoints.of(context).smallerThan(DESKTOP)
                      ? ResponsiveRowColumnType.COLUMN
                      : ResponsiveRowColumnType.ROW,
                  rowSpacing: 50,
                  columnSpacing: 50,
                  children: [
                    ResponsiveRowColumnItem(
                      rowFlex: 1,
                      rowFit: FlexFit.tight,
                      child: ColumnLayout(gap: 8, children: [
                        GestureContainerLayout(
                          onPress: () {
                            navigate(VideoCallRoute());
                          },
                          child: Image.network(
                            'https://i.imgur.com/20jqZXd.png',
                            fit: BoxFit.cover,
                          ),
                        ),
                        AppText('Video call app',
                            style: TextStyle(
                              color: context.theme.color.textPrimary,
                              fontSize: 16,
                              fontWeight: FontWeight.w600,
                            )),
                      ]),
                    ),
                    ResponsiveRowColumnItem(
                      rowFlex: 1,
                      rowFit: FlexFit.tight,
                      child: ColumnLayout(
                        gap: 8,
                        children: [
                          GestureContainerLayout(
                            child: Image.network(
                              'https://i.imgur.com/HTEJ1Kx.png',
                              fit: BoxFit.cover,
                            ),
                          ),
                          AppText('Streaming app',
                              style: TextStyle(
                                color: context.theme.color.textPrimary,
                                fontSize: 16,
                                fontWeight: FontWeight.w600,
                              )),
                        ],
                      ),
                    ),
                    ResponsiveRowColumnItem(
                      rowFlex: 1,
                      rowFit: FlexFit.tight,
                      child: ColumnLayout(
                        gap: 8,
                        children: [
                          GestureContainerLayout(
                            onPress: () {
                              navigate(SignupRoute());
                            },
                            child: Image.network(
                              'https://i.imgur.com/JZ7gHpm.png',
                              fit: BoxFit.cover,
                            ),
                          ),
                          AppText('Sign up screen',
                              style: TextStyle(
                                color: context.theme.color.textPrimary,
                                fontSize: 16,
                                fontWeight: FontWeight.w600,
                              )),
                        ],
                      ),
                    )
                  ]),
              ResponsiveRowColumn(
                  layout: ResponsiveBreakpoints.of(context).smallerThan(DESKTOP)
                      ? ResponsiveRowColumnType.COLUMN
                      : ResponsiveRowColumnType.ROW,
                  rowSpacing: 50,
                  columnSpacing: 50,
                  children: [
                    ResponsiveRowColumnItem(
                      rowFlex: 1,
                      rowFit: FlexFit.tight,
                      child: ColumnLayout(
                        gap: 8,
                        children: [
                          GestureContainerLayout(
                            onPress: () {
                              navigate(KanbanRoute());
                            },
                            child: Image.network(
                              'https://i.imgur.com/4dqxskX.png',
                              fit: BoxFit.cover,
                            ),
                          ),
                          AppText('Kanban app',
                              style: TextStyle(
                                color: context.theme.color.textPrimary,
                                fontSize: 16,
                                fontWeight: FontWeight.w600,
                              )),
                        ],
                      ),
                    ),
                    ResponsiveRowColumnItem(
                      rowFlex: 1,
                      rowFit: FlexFit.tight,
                      child: ColumnLayout(
                        gap: 8,
                        children: [
                          GestureContainerLayout(
                            onPress: () {
                              navigate(MessengerRoute());
                            },
                            child: Image.network(
                              'https://i.imgur.com/WuP86gw.png',
                              fit: BoxFit.cover,
                            ),
                          ),
                          AppText('Messenger app',
                              style: TextStyle(
                                color: context.theme.color.textPrimary,
                                fontSize: 16,
                                fontWeight: FontWeight.w600,
                              )),
                        ],
                      ),
                    ),
                    ResponsiveRowColumnItem(
                      rowFlex: 1,
                      rowFit: FlexFit.tight,
                      child: ColumnLayout(
                        children: [
                          GestureContainerLayout(
                            onPress: () {
                              navigate(BillingRoute());
                            },
                            child: Image.network(
                              'https://i.imgur.com/B3M72zN.png',
                              fit: BoxFit.cover,
                            ),
                          ),
                          AppText('Billing app',
                              style: TextStyle(
                                color: context.theme.color.textPrimary,
                                fontSize: 16,
                                fontWeight: FontWeight.w600,
                              )),
                        ],
                      ),
                    )
                  ]),
              ResponsiveRowColumn(
                  layout: ResponsiveBreakpoints.of(context).smallerThan(DESKTOP)
                      ? ResponsiveRowColumnType.COLUMN
                      : ResponsiveRowColumnType.ROW,
                  rowSpacing: 50,
                  columnSpacing: 50,
                  children: [
                    ResponsiveRowColumnItem(
                      rowFlex: 1,
                      rowFit: FlexFit.tight,
                      child: ColumnLayout(
                        gap: 8,
                        children: [
                          GestureContainerLayout(
                            onPress: () {
                              navigate(NotesRoute());
                            },
                            child: Image.network(
                              'https://i.imgur.com/urCdIkg.png',
                              fit: BoxFit.cover,
                            ),
                          ),
                          AppText('Notes app',
                              style: TextStyle(
                                color: context.theme.color.textPrimary,
                                fontSize: 16,
                                fontWeight: FontWeight.w600,
                              )),
                        ],
                      ),
                    ),
                    ResponsiveRowColumnItem(
                      rowFlex: 1,
                      rowFit: FlexFit.tight,
                      child: ColumnLayout(
                        gap: 8,
                        children: [
                          GestureContainerLayout(
                            onPress: () {
                              navigate(Web3Route());
                            },
                            child: Image.network(
                              'https://i.imgur.com/zaJpCVV.png',
                              fit: BoxFit.cover,
                            ),
                          ),
                          AppText('Web3 app',
                              style: TextStyle(
                                color: context.theme.color.textPrimary,
                                fontSize: 16,
                                fontWeight: FontWeight.w600,
                              )),
                        ],
                      ),
                    ),
                    ResponsiveRowColumnItem(
                      rowFlex: 1,
                      rowFit: FlexFit.tight,
                      child: ColumnLayout(
                        gap: 8,
                        children: [
                          GestureContainerLayout(
                            onPress: () {
                              navigate(EcommerceRoute());
                            },
                            child: Image.network(
                              'https://i.imgur.com/m2uYJDd.png',
                              fit: BoxFit.cover,
                            ),
                          ),
                          AppText('E-commerce',
                              style: TextStyle(
                                color: context.theme.color.textPrimary,
                                fontSize: 16,
                                fontWeight: FontWeight.w600,
                              )),
                        ],
                      ),
                    )
                  ]),
            ],
          ),
        ),
      ),
    );
  }
}
