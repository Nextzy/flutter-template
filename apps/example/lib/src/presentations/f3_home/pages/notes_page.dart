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
                  RowLayout(children: [
                    AppIconButton(
                      icon: Assets.icon.arrowNarrowLeft.keyName,
                      style: AppButtonStyle.text,
                    ),
                    AppIconButton(
                        icon: Assets.icon.arrowRightRegular.keyName,
                        style: AppButtonStyle.text),
                    AppBreadcrumbs(children: [
                      AppBreadcrumbSection(
                        label: '...',
                      ),
                      AppBreadcrumbSection(
                        icon: Assets.icon.stackRegular.keyName,
                        label: 'Section',
                      ),
                      AppBreadcrumbSection(
                        icon: Assets.icon.stackRegular.keyName,
                        label: 'Top ProductHunt 2020',
                      ),
                    ])
                  ]),
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
                      maxWidth: 1040,
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
                            // AppTable(
                            //     width: MediaQuery.of(context).size.width,
                            //     height: 576,
                            //     headerNames: [],
                            //     source: source)
                          ]))),
            )
          ]))
        ],
      )),
    );
  }
}
