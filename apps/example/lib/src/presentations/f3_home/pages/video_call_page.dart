import 'package:example_app/application.dart';

@RoutePage()
class VideoCallPage extends AppPage {
  const VideoCallPage({super.key});

  @override
  State<VideoCallPage> createState() => _VideoCallPageState();
}

class _VideoCallPageState extends AppPageState<VideoCallPage> {
  @override
  Widget build(BuildContext context) {
    return AppScaffold(
      backgroundColor: context.theme.color.bg,
      body: SafeArea(
          child: ContainerLayout(
        child: ResponsiveRowColumn(
          rowCrossAxisAlignment: CrossAxisAlignment.start,
          layout: ResponsiveRowColumnType.ROW,
          children: [
            ResponsiveRowColumnItem(
              rowFlex: 2,
              rowFit: FlexFit.tight,
              child: Stack(
                fit: StackFit.expand,
                children: [
                  ContainerLayout(
                      child: Image.network('https://i.imgur.com/q1DeHS7.png',
                          fit: BoxFit.cover)),
                  ColumnLayout(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    margin: const EdgeInsets.symmetric(
                        horizontal: 24, vertical: 24),
                    children: [
                      Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            ContainerLayout(
                                width: 140,
                                height: 140,
                                child: ClipRRect(
                                    borderRadius: context.theme.borderRadius.md,
                                    child: Image.network(
                                        'https://i.imgur.com/gDQkM0D.png',
                                        fit: BoxFit.cover))),
                            if (ResponsiveBreakpoints.of(context)
                                .largerThan(TABLET))
                              RowLayout(gap: 8, children: [
                                AppIconButton(
                                  style: AppButtonStyle.shaded,
                                  icon: Assets.icon.microphoneFilled.keyName,
                                  borderRadius: BorderRadius.circular(999),
                                  themeMode: ThemeMode.dark,
                                ),
                                AppIconButton(
                                  style: AppButtonStyle.shaded,
                                  icon: Assets.icon.videoCameraFilled.keyName,
                                  borderRadius: BorderRadius.circular(999),
                                  themeMode: ThemeMode.dark,
                                ),
                                AppIconButton(
                                  style: AppButtonStyle.shaded,
                                  icon: Assets.icon.monitorFilled.keyName,
                                  borderRadius: BorderRadius.circular(999),
                                  themeMode: ThemeMode.dark,
                                ),
                                AppIconButton(
                                  style: AppButtonStyle.destructive,
                                  icon:
                                      Assets.icon.phoneDisconnectFilled.keyName,
                                  borderRadius: BorderRadius.circular(999),
                                  themeMode: ThemeMode.dark,
                                ),
                              ])
                            else
                              AppIconButton(
                                style: AppButtonStyle.shaded,
                                icon: Assets.icon.listFilled.keyName,
                                borderRadius: BorderRadius.circular(999),
                                themeMode: ThemeMode.dark,
                              )
                          ]),
                      ColumnLayout(gap: 24, children: [
                        ContainerLayout(
                          padding: const EdgeInsets.symmetric(
                              horizontal: 24, vertical: 16),
                          decoration: BoxDecoration(
                              color: context.theme.color.transparent.black15),
                          borderRadius: BorderRadius.circular(999),
                          child: AppText(
                            "Hi there! We have our first Spanish class today. How've you been?",
                            style: TextStyle(
                                color: context.theme.color.textPrimaryInverse,
                                fontSize: 18,
                                fontWeight: FontWeight.w600),
                          ),
                        ),
                        if (!ResponsiveBreakpoints.of(context)
                            .largerThan(TABLET))
                          RowLayout(
                              mainAxisAlignment: MainAxisAlignment.center,
                              gap: 8,
                              children: [
                                AppIconButton(
                                  style: AppButtonStyle.shaded,
                                  icon: Assets.icon.microphoneFilled.keyName,
                                  borderRadius: BorderRadius.circular(999),
                                  themeMode: ThemeMode.dark,
                                ),
                                AppIconButton(
                                  style: AppButtonStyle.shaded,
                                  icon: Assets.icon.videoCameraFilled.keyName,
                                  borderRadius: BorderRadius.circular(999),
                                  themeMode: ThemeMode.dark,
                                ),
                                AppIconButton(
                                  style: AppButtonStyle.shaded,
                                  icon: Assets.icon.monitorFilled.keyName,
                                  borderRadius: BorderRadius.circular(999),
                                  themeMode: ThemeMode.dark,
                                ),
                                AppIconButton(
                                  style: AppButtonStyle.destructive,
                                  icon:
                                      Assets.icon.phoneDisconnectFilled.keyName,
                                  borderRadius: BorderRadius.circular(999),
                                  themeMode: ThemeMode.dark,
                                ),
                              ])
                      ])
                    ],
                  )
                ],
              ),
            ),
            if (ResponsiveBreakpoints.of(context).largerThan(TABLET))
              ResponsiveRowColumnItem(
                rowFlex: 1,
                rowFit: FlexFit.tight,
                child: ColumnLayout(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    margin: const EdgeInsets.symmetric(
                        horizontal: 24, vertical: 24),
                    children: [
                      ColumnLayout(gap: 80, children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            AppIconButton(
                              style: AppButtonStyle.shaded,
                              icon: Assets.icon.spain.keyName,
                              hasColorFilter: false,
                            ),
                            RowLayout(gap: 8, children: [
                              AppIconButton(
                                style: AppButtonStyle.shaded,
                                icon: Assets.icon.pencilLineRegular.keyName,
                              ),
                              AppIconButton(
                                style: AppButtonStyle.shaded,
                                icon: Assets.icon.microphoneRegular.keyName,
                              ),
                              AppIconButton(
                                style: AppButtonStyle.shaded,
                                icon: Assets.icon.fileTextRegular.keyName,
                              ),
                              AppIconButton(
                                style: AppButtonStyle.shaded,
                                icon: Assets.icon.chatCircleRegular.keyName,
                              ),
                            ])
                          ],
                        ),
                        ColumnLayout(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            gap: 8,
                            children: [
                              AppText('Spanish with Maria R.',
                                  style: TextStyle(
                                      color: context.theme.color.textPrimary,
                                      fontSize: 36,
                                      fontWeight: FontWeight.w600)),
                              AppText(
                                  'Congratulations! Today is your first lesson.',
                                  style: TextStyle(
                                      color: context.theme.color.textPrimary,
                                      fontSize: 14,
                                      fontWeight: FontWeight.w400)),
                              Gap(24),
                              AppVerticalSteps(
                                style: AppStepStyle.icon,
                                children: [
                                  AppStepItem(
                                    icon: Assets.icon.handPalmFilled.keyName,
                                    title: 'Introduction',
                                    description:
                                        'Get to know the teacher and tell them about yourself.',
                                  ),
                                  AppStepItem(
                                    icon: Assets.icon.chatTextFilled.keyName,
                                    title: 'Test',
                                    description: 'Assess your knowledge.',
                                  ),
                                  AppStepItem(
                                    icon: Assets.icon.eyeglassesFilled.keyName,
                                    title: 'Learning plan',
                                    description:
                                        'Establish a learning plan with the teacher.',
                                  ),
                                  AppStepItem(
                                    icon: Assets.icon.footprintsFilled.keyName,
                                    title: 'Simple steps',
                                    description:
                                        'Break down your learning plan into simple steps.',
                                  ),
                                  AppStepItem(
                                    icon: Assets.icon.bookOpenFilled.keyName,
                                    title: 'Homework',
                                    description:
                                        'Determine your homework with the teacher.',
                                  ),
                                ],
                              )
                            ]),
                      ]),
                      ContainerLayout(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 20, vertical: 20),
                        decoration: BoxDecoration(
                            color: context.theme.color.bgSurface2),
                        borderRadius: context.theme.borderRadius.lg,
                        child: RowLayout(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            gap: 16,
                            children: [
                              ContainerLayout(
                                  child: Assets.icon.handWavingRegular.svgIcon(
                                size: 24,
                                colorFilter: ColorFilter.mode(
                                    context.theme.color.iconPrimary,
                                    BlendMode.srcIn),
                              )),
                              Expanded(
                                child: ColumnLayout(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    gap: 4,
                                    children: [
                                      AppText('Inspirational tip #1',
                                          style: TextStyle(
                                              color: context
                                                  .theme.color.textPrimary,
                                              fontSize: 14,
                                              fontWeight: FontWeight.w600)),
                                      AppText(
                                          "Don't be afraid to speak in Spanish, even if you know very few words.",
                                          style: TextStyle(
                                              color: context
                                                  .theme.color.textPrimary,
                                              fontSize: 14,
                                              fontWeight: FontWeight.w400)),
                                    ]),
                              )
                            ]),
                      ),
                    ]),
              ),
          ],
        ),
      )),
    );
  }
}
