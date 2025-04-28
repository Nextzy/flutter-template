import 'package:example_app/application.dart';

@RoutePage()
class StreamingPage extends AppPage {
  const StreamingPage({super.key});

  @override
  State<StreamingPage> createState() => _StreamingPageState();
}

class _StreamingPageState extends AppPageState<StreamingPage> {
  @override
  Widget build(BuildContext context) {
    return AppScaffold(
      backgroundColor: context.theme.color.bg,
      body: SafeArea(
          child: Stack(
        fit: StackFit.expand,
        children: [
          ContainerLayout(
              child: Image.network('https://i.imgur.com/yZoEeEw.png',
                  fit: BoxFit.cover)),
          ColumnLayout(
              gap: 24,
              padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 24),
              children: [
                Expanded(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      ColumnLayout(gap: 8, children: [
                        AppIconButton(
                          icon: Assets.icon.arrowLeftRegular.keyName,
                          style: AppButtonStyle.text,
                          themeMode: ThemeMode.dark,
                        ),
                        if (ResponsiveBreakpoints.of(context)
                            .largerThan(TABLET))
                          ColumnLayout(gap: 8, children: [
                            AppIconButton(
                              icon: Assets.icon.closedCaptioningFilled.keyName,
                              style: AppButtonStyle.text,
                              themeMode: ThemeMode.dark,
                            ),
                            AppIconButton(
                              icon: Assets.icon.gaugeFilled.keyName,
                              style: AppButtonStyle.text,
                              themeMode: ThemeMode.dark,
                            ),
                            AppIconButton(
                              icon: Assets.icon.videoFilled.keyName,
                              style: AppButtonStyle.text,
                              themeMode: ThemeMode.dark,
                            ),
                            AppIconButton(
                              icon: Assets.icon.infoFilled.keyName,
                              style: AppButtonStyle.text,
                              themeMode: ThemeMode.dark,
                            ),
                          ])
                      ]),
                      AppText(
                        'S1:E1 Signal Source',
                        style: TextStyle(
                            color: context.theme.color.textPrimaryInverse,
                            fontSize: 24,
                            fontWeight: FontWeight.w600),
                      ),
                      if (ResponsiveBreakpoints.of(context).largerThan(TABLET))
                        _buildContent(context)
                      else
                        AppIconButton(
                          icon: Assets.icon.listRegular.keyName,
                          style: AppButtonStyle.text,
                          themeMode: ThemeMode.dark,
                        )
                    ],
                  ),
                ),
                AppAudioPlayer(url: ''),
              ]),
        ],
      )),
    );
  }

  ContainerLayout _buildContent(BuildContext context) {
    return ContainerLayout(
        width: 416,
        padding: const EdgeInsets.symmetric(horizontal: 48, vertical: 32),
        decoration: BoxDecoration(color: context.theme.color.bgInverse),
        borderRadius: context.theme.borderRadius.lg,
        child: SingleChildScrollView(
          child: ColumnLayout(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                AppText(
                  'Celestial Odyssey',
                  style: TextStyle(
                      color: context.theme.color.textPrimaryInverse,
                      fontSize: 36,
                      fontWeight: FontWeight.w600),
                ),
                Gap(16),
                RowLayout(children: [
                  AppText(
                    '2023',
                    style: TextStyle(
                        color: context.theme.color.textSecondaryInverse,
                        fontSize: 14,
                        fontWeight: FontWeight.w600),
                  ),
                  AppText(
                    '・',
                    style: TextStyle(
                        color: context.theme.color.textSecondaryInverse,
                        fontSize: 14,
                        fontWeight: FontWeight.w600),
                  ),
                  AppText(
                    'Sci-Fi',
                    style: TextStyle(
                        color: context.theme.color.textSecondaryInverse,
                        fontSize: 14,
                        fontWeight: FontWeight.w600),
                  ),
                  AppText(
                    '・',
                    style: TextStyle(
                        color: context.theme.color.textSecondaryInverse,
                        fontSize: 14,
                        fontWeight: FontWeight.w600),
                  ),
                  AppText(
                    '3 seasons',
                    style: TextStyle(
                        color: context.theme.color.textSecondaryInverse,
                        fontSize: 14,
                        fontWeight: FontWeight.w600),
                  ),
                ]),
                Gap(16),
                AppText(
                  "In 2145, Dr. Eleanor Gray deciphers a signal from exoplanet Caelus. With a crew aboard the \"Odyssey\", they uncover not aliens but ancient human relics predating Earth's history. Unraveling this interstellar mystery, they face haunting presences and a race against time to return home.",
                  style: TextStyle(
                      color: context.theme.color.textPrimaryInverse,
                      fontSize: 14,
                      fontWeight: FontWeight.w400),
                ),
                Gap(24),
                AppHorizontalTab(style: AppTabStyle.shade, children: [
                  AppTab(text: 'Season 1'),
                  AppTab(text: 'Season 2'),
                  AppTab(text: 'Season 3'),
                ]),
                Gap(24),
                ResponsiveRowColumn(
                  layout: ResponsiveRowColumnType.COLUMN,
                  rowSpacing: 16,
                  columnSpacing: 16,
                  children: [
                    ResponsiveRowColumnItem(
                      child: Row(
                        children: [
                          Expanded(
                            child: ColumnLayout(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              gap: 4,
                              children: [
                                ContainerLayout(
                                    decoration: BoxDecoration(
                                        border: Border.all(
                                            color: context
                                                .theme.color.borderWarning,
                                            width: 2)),
                                    borderRadius: context.theme.borderRadius.lg,
                                    child: Image.network(
                                        'https://i.imgur.com/Xtg3Uxb.png',
                                        fit: BoxFit.cover)),
                                AppText(
                                  '1. Signal Source',
                                  style: TextStyle(
                                      color: context
                                          .theme.color.textPrimaryInverse,
                                      fontSize: 14,
                                      fontWeight: FontWeight.w600),
                                ),
                              ],
                            ),
                          ),
                          Gap(16),
                          Expanded(
                            child: ColumnLayout(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              gap: 4,
                              children: [
                                ContainerLayout(
                                    child: Image.network(
                                        'https://i.imgur.com/aE3vInD.png',
                                        fit: BoxFit.cover)),
                                AppText(
                                  '2. Odyssey Launch',
                                  style: TextStyle(
                                      color: context
                                          .theme.color.textPrimaryInverse,
                                      fontSize: 14,
                                      fontWeight: FontWeight.w600),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                    ResponsiveRowColumnItem(
                      child: Row(
                        children: [
                          Expanded(
                            child: ColumnLayout(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              gap: 4,
                              children: [
                                ContainerLayout(
                                    child: Image.network(
                                        'https://i.imgur.com/JF4EFkH.png',
                                        fit: BoxFit.cover)),
                                AppText(
                                  '3. Caelus Secrets',
                                  style: TextStyle(
                                      color: context
                                          .theme.color.textPrimaryInverse,
                                      fontSize: 14,
                                      fontWeight: FontWeight.w600),
                                ),
                              ],
                            ),
                          ),
                          Gap(16),
                          Expanded(
                            child: ColumnLayout(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              gap: 4,
                              children: [
                                ContainerLayout(
                                    child: Image.network(
                                        'https://i.imgur.com/ip3xAks.png',
                                        fit: BoxFit.cover)),
                                AppText(
                                  '4. Haunting Echoes',
                                  style: TextStyle(
                                      color: context
                                          .theme.color.textPrimaryInverse,
                                      fontSize: 14,
                                      fontWeight: FontWeight.w600),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                    ResponsiveRowColumnItem(
                      child: Row(
                        children: [
                          Expanded(
                            child: ColumnLayout(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              gap: 4,
                              children: [
                                ContainerLayout(
                                    child: Image.network(
                                        'https://i.imgur.com/HSBp5qg.png',
                                        fit: BoxFit.cover)),
                                AppText(
                                  '5. Ancient Relics',
                                  style: TextStyle(
                                      color: context
                                          .theme.color.textPrimaryInverse,
                                      fontSize: 14,
                                      fontWeight: FontWeight.w600),
                                ),
                              ],
                            ),
                          ),
                          Gap(16),
                          Expanded(
                            child: ColumnLayout(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              gap: 4,
                              children: [
                                ContainerLayout(
                                    child: Image.network(
                                        'https://i.imgur.com/SjHRkla.png',
                                        fit: BoxFit.cover)),
                                AppText(
                                  '6. Forgotten Legacy',
                                  style: TextStyle(
                                      color: context
                                          .theme.color.textPrimaryInverse,
                                      fontSize: 14,
                                      fontWeight: FontWeight.w600),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                    ResponsiveRowColumnItem(
                      child: Row(
                        children: [
                          Expanded(
                            child: ColumnLayout(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              gap: 4,
                              children: [
                                ContainerLayout(
                                    child: Image.network(
                                        'https://i.imgur.com/SY4WxkA.png',
                                        fit: BoxFit.cover)),
                                AppText(
                                  '7. Echoing Dangers',
                                  style: TextStyle(
                                      color: context
                                          .theme.color.textPrimaryInverse,
                                      fontSize: 14,
                                      fontWeight: FontWeight.w600),
                                ),
                              ],
                            ),
                          ),
                          Gap(16),
                          Expanded(
                            child: ColumnLayout(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              gap: 4,
                              children: [
                                ContainerLayout(
                                    child: Image.network(
                                        'https://i.imgur.com/gpbhLEH.png',
                                        fit: BoxFit.cover)),
                                AppText(
                                  '8. Race Home',
                                  style: TextStyle(
                                      color: context
                                          .theme.color.textPrimaryInverse,
                                      fontSize: 14,
                                      fontWeight: FontWeight.w600),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                    ResponsiveRowColumnItem(
                      child: Row(
                        children: [
                          Expanded(
                            child: ColumnLayout(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              gap: 4,
                              children: [
                                ContainerLayout(
                                    child: Image.network(
                                        'https://i.imgur.com/SY4WxkA.png',
                                        fit: BoxFit.cover)),
                                AppText(
                                  '7. Echoing Dangers',
                                  style: TextStyle(
                                      color: context
                                          .theme.color.textPrimaryInverse,
                                      fontSize: 14,
                                      fontWeight: FontWeight.w600),
                                ),
                              ],
                            ),
                          ),
                          Gap(16),
                          Expanded(
                            child: ColumnLayout(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              gap: 4,
                              children: [
                                ContainerLayout(
                                    child: Image.network(
                                        'https://i.imgur.com/gpbhLEH.png',
                                        fit: BoxFit.cover)),
                                AppText(
                                  '8. Race Home',
                                  style: TextStyle(
                                      color: context
                                          .theme.color.textPrimaryInverse,
                                      fontSize: 14,
                                      fontWeight: FontWeight.w600),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                )
              ]),
        ));
  }
}
