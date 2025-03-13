import 'package:change_application_name/application.dart';

@RoutePage()
class MessengerPage extends AppPage {
  const MessengerPage({super.key});

  @override
  State<MessengerPage> createState() => _MessengerPageState();
}

class _MessengerPageState extends AppPageState<MessengerPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: ContainerLayout(
      backgroundColor: context.theme.color.bg,
      child: ResponsiveRowColumn(
        layout: ResponsiveRowColumnType.ROW,
        children: [
          if (ResponsiveBreakpoints.of(context).isDesktop)
            ResponsiveRowColumnItem(
              rowFlex: 1,
              child: ContainerLayout(
                width: 280,
                height: MediaQuery.sizeOf(context).height,
                padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 8),
                decoration: BoxDecoration(
                  color: context.theme.color.bgSurface1,
                  border: Border(
                    right: BorderSide(
                      color: context.theme.color.border,
                    ),
                  ),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                        padding: const EdgeInsets.symmetric(
                          horizontal: 10,
                          vertical: 8,
                        ),
                        child: ColumnLayout(gap: 10, children: [
                          RowLayout(gap: 8, children: [
                            AppCircleAvatar(
                              style: WidgetStyle.filled,
                              title: 'Fastlane Team',
                              color: context.theme.color.bgInverse,
                            ),
                            ColumnLayout(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  AppText(
                                    'The Fastlane team',
                                    style: TextStyle(
                                      color: context.theme.color.textPrimary,
                                      fontSize: 14,
                                      fontWeight: FontWeight.w600,
                                    ),
                                  ),
                                  AppText(
                                    'Premium plan',
                                    style: TextStyle(
                                      color: context.theme.color.textSecondary,
                                      fontSize: 12,
                                      fontWeight: FontWeight.w400,
                                    ),
                                  )
                                ])
                          ]),
                          Row(
                            children: [
                              Expanded(
                                child: AppButton(
                                    style: AppButtonStyle.filled,
                                    startIcon: Assets.icon.infoRegular.keyName,
                                    text: 'New message'),
                              )
                            ],
                          ),
                          AppDivider()
                        ])),
                    Expanded(
                        child: ColumnLayout(children: [
                      AppSidebarSection(
                          icon: Assets.icon.infoRegular.keyName,
                          title: 'General',
                          active: true),
                      AppSidebarSection(
                          icon: Assets.icon.infoRegular.keyName,
                          title: 'Threads'),
                      AppSidebarSection(
                          icon: Assets.icon.infoRegular.keyName,
                          title: 'Mentions'),
                      RowLayout(
                        gap: 4,
                        padding: const EdgeInsets.symmetric(
                          horizontal: 12,
                          vertical: 12,
                        ),
                        children: [
                          Assets.icon.caretRightRegular.svgIcon(
                              colorFilter: ColorFilter.mode(
                                context.theme.color.iconSecondary,
                                BlendMode.srcIn,
                              ),
                              size: 16),
                          AppText('CHANNELS',
                              style: TextStyle(
                                color: context.theme.color.textSecondary,
                                fontSize: 12,
                                fontWeight: FontWeight.w600,
                              ))
                        ],
                      ),
                      RowLayout(
                        gap: 4,
                        padding: const EdgeInsets.symmetric(
                          horizontal: 12,
                          vertical: 12,
                        ),
                        children: [
                          Assets.icon.caretRightRegular.svgIcon(
                              colorFilter: ColorFilter.mode(
                                context.theme.color.iconSecondary,
                                BlendMode.srcIn,
                              ),
                              size: 16),
                          AppText('GROUPS',
                              style: TextStyle(
                                color: context.theme.color.textSecondary,
                                fontSize: 12,
                                fontWeight: FontWeight.w600,
                              ))
                        ],
                      ),
                      RowLayout(
                        gap: 4,
                        padding: const EdgeInsets.symmetric(
                          horizontal: 12,
                          vertical: 12,
                        ),
                        children: [
                          Assets.icon.caretDownRegular.svgIcon(
                              colorFilter: ColorFilter.mode(
                                context.theme.color.iconPrimary,
                                BlendMode.srcIn,
                              ),
                              size: 16),
                          AppText('MESSAGES',
                              style: TextStyle(
                                color: context.theme.color.textSecondary,
                                fontSize: 12,
                                fontWeight: FontWeight.w600,
                              ))
                        ],
                      ),
                      RowLayout(
                        gap: 6,
                        padding: const EdgeInsets.symmetric(
                          horizontal: 12,
                          vertical: 8,
                        ),
                        children: [
                          AppSquareAvatar(
                              style: WidgetStyle.subtle,
                              size: WidgetSize.sm,
                              path: Assets.mock.avatarSquared2.keyName),
                          AppText('Olivia Garcia',
                              style: TextStyle(
                                color: context.theme.color.textPrimary,
                                fontSize: 14,
                                fontWeight: FontWeight.w600,
                              ))
                        ],
                      ),
                      RowLayout(
                        gap: 6,
                        padding: const EdgeInsets.symmetric(
                          horizontal: 12,
                          vertical: 8,
                        ),
                        children: [
                          AppSquareAvatar(
                              style: WidgetStyle.subtle,
                              size: WidgetSize.sm,
                              path: Assets.mock.avatarSquared1.keyName),
                          AppText('Zhang Wei',
                              style: TextStyle(
                                color: context.theme.color.textPrimary,
                                fontSize: 14,
                                fontWeight: FontWeight.w600,
                              ))
                        ],
                      ),
                      RowLayout(
                        gap: 6,
                        padding: const EdgeInsets.symmetric(
                          horizontal: 12,
                          vertical: 8,
                        ),
                        children: [
                          AppSquareAvatar(
                              style: WidgetStyle.subtle,
                              size: WidgetSize.sm,
                              path: Assets.mock.avatarSquared2.keyName),
                          AppText('Jason Miller',
                              style: TextStyle(
                                color: context.theme.color.textPrimary,
                                fontSize: 14,
                                fontWeight: FontWeight.w600,
                              ))
                        ],
                      ),
                      RowLayout(
                        gap: 6,
                        padding: const EdgeInsets.symmetric(
                          horizontal: 12,
                          vertical: 8,
                        ),
                        children: [
                          AppSquareAvatar(
                              style: WidgetStyle.subtle,
                              size: WidgetSize.sm,
                              path: Assets.mock.avatarSquared1.keyName),
                          AppText('Lee Hyori',
                              style: TextStyle(
                                color: context.theme.color.textPrimary,
                                fontSize: 14,
                                fontWeight: FontWeight.w600,
                              ))
                        ],
                      ),
                      RowLayout(
                        gap: 6,
                        padding: const EdgeInsets.symmetric(
                          horizontal: 12,
                          vertical: 8,
                        ),
                        children: [
                          AppSquareAvatar(
                              style: WidgetStyle.subtle,
                              size: WidgetSize.sm,
                              path: Assets.mock.avatarSquared2.keyName),
                          AppText('Tamika Johnson',
                              style: TextStyle(
                                color: context.theme.color.textPrimary,
                                fontSize: 14,
                                fontWeight: FontWeight.w600,
                              ))
                        ],
                      ),
                      RowLayout(
                        gap: 6,
                        padding: const EdgeInsets.symmetric(
                          horizontal: 12,
                          vertical: 8,
                        ),
                        children: [
                          AppSquareAvatar(
                              style: WidgetStyle.subtle,
                              size: WidgetSize.sm,
                              path: Assets.mock.avatarSquared1.keyName),
                          AppText('Darius Washington',
                              style: TextStyle(
                                color: context.theme.color.textPrimary,
                                fontSize: 14,
                                fontWeight: FontWeight.w600,
                              ))
                        ],
                      ),
                      RowLayout(
                        gap: 6,
                        padding: const EdgeInsets.symmetric(
                          horizontal: 12,
                          vertical: 8,
                        ),
                        children: [
                          AppSquareAvatar(
                              style: WidgetStyle.subtle,
                              size: WidgetSize.sm,
                              path: Assets.mock.avatarSquared2.keyName),
                          AppText('Anders Lindström',
                              style: TextStyle(
                                color: context.theme.color.textPrimary,
                                fontSize: 14,
                                fontWeight: FontWeight.w600,
                              ))
                        ],
                      )
                    ])),
                    ColumnLayout(children: [
                      AppSidebarSection(
                        icon: Assets.icon.infoRegular.keyName,
                        title: 'Voice room',
                      ),
                    ]),
                  ],
                ),
              ),
            ),
          ResponsiveRowColumnItem(
              rowFlex: ResponsiveBreakpoints.of(context).isDesktop ? 7 : 1,
              child: Column(
                children: [
                  RowLayout(
                    height: 56,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    padding: const EdgeInsets.symmetric(
                        horizontal: 20, vertical: 10),
                    decoration: BoxDecoration(
                      color: context.theme.color.bgSurface1,
                      border: Border(
                        bottom: BorderSide(
                          color: context.theme.color.border,
                        ),
                      ),
                    ),
                    children: [
                      RowLayout(gap: 6, children: [
                        ContainerLayout(
                          child: Assets.icon.infoRegular.svgIcon(
                            size: 20,
                            colorFilter: ColorFilter.mode(
                                context.theme.color.iconPrimary,
                                BlendMode.srcIn),
                          ),
                        ),
                        AppText('General',
                            style: TextStyle(
                              color: context.theme.color.textPrimary,
                              fontSize: 18,
                              fontWeight: FontWeight.w600,
                            ))
                      ]),
                      if (ResponsiveBreakpoints.of(context).isDesktop)
                        RowLayout(gap: 12, children: [
                          ContainerLayout(
                            width: 224,
                            child: AppTextField(
                              style: AppTextFieldStyle.shaded,
                              startIcon: Assets.icon.infoRegular.keyName,
                              placeholderText: 'Search',
                            ),
                          ),
                          ContainerLayout(
                            child: Assets.icon.infoRegular.svgIcon(
                              size: 20,
                              colorFilter: ColorFilter.mode(
                                  context.theme.color.iconPrimary,
                                  BlendMode.srcIn),
                            ),
                          ),
                          ContainerLayout(
                            child: Assets.icon.infoRegular.svgIcon(
                              size: 20,
                              colorFilter: ColorFilter.mode(
                                  context.theme.color.iconPrimary,
                                  BlendMode.srcIn),
                            ),
                          ),
                          ContainerLayout(
                            child: Assets.icon.infoRegular.svgIcon(
                              size: 20,
                              colorFilter: ColorFilter.mode(
                                  context.theme.color.iconPrimary,
                                  BlendMode.srcIn),
                            ),
                          ),
                          AppCircleAvatar(
                            style: WidgetStyle.subtle,
                            size: WidgetSize.sm,
                            path: Assets.mock.avatarSquared.keyName,
                          )
                        ])
                      else
                        RowLayout(gap: 12, children: [
                          ContainerLayout(
                            child: Assets.icon.infoRegular.svgIcon(
                              size: 20,
                              colorFilter: ColorFilter.mode(
                                  context.theme.color.iconPrimary,
                                  BlendMode.srcIn),
                            ),
                          ),
                          ContainerLayout(
                            child: Assets.icon.infoRegular.svgIcon(
                              size: 20,
                              colorFilter: ColorFilter.mode(
                                  context.theme.color.iconPrimary,
                                  BlendMode.srcIn),
                            ),
                          ),
                        ])
                    ],
                  ),
                  RowLayout(children: [
                    Expanded(
                        child: ContainerLayout(
                      height: MediaQuery.sizeOf(context).height - 56,
                      child: ColumnLayout(
                        children: [
                          Expanded(
                              child: ColumnLayout(
                                  gap: 24,
                                  padding: const EdgeInsets.symmetric(
                                    horizontal: 20,
                                    vertical: 20,
                                  ),
                                  children: [
                                RowLayout(gap: 16, children: [
                                  AppSquareAvatar(
                                    style: WidgetStyle.subtle,
                                    size: WidgetSize.lg,
                                    path: Assets.mock.avatarSquared2.keyName,
                                  ),
                                  ColumnLayout(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        RowLayout(gap: 8, children: [
                                          AppText(
                                            'Darius Washington',
                                            style: TextStyle(
                                              color: context
                                                  .theme.color.textPrimary,
                                              fontSize: 18,
                                              fontWeight: FontWeight.w600,
                                            ),
                                          ),
                                          AppText(
                                            '09:12 AM',
                                            style: TextStyle(
                                              color: context
                                                  .theme.color.textSecondary,
                                              fontSize: 14,
                                              fontWeight: FontWeight.w400,
                                            ),
                                          ),
                                        ]),
                                        AppText(
                                          "No worries, Anders. I'll send you a summary right after our team meeting.",
                                          style: TextStyle(
                                            color:
                                                context.theme.color.textPrimary,
                                            fontSize: 16,
                                            fontWeight: FontWeight.w400,
                                          ),
                                        )
                                      ])
                                ]),
                                RowLayout(gap: 16, children: [
                                  AppSquareAvatar(
                                    style: WidgetStyle.subtle,
                                    size: WidgetSize.lg,
                                    path: Assets.mock.avatarSquared1.keyName,
                                  ),
                                  ColumnLayout(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      gap: 6,
                                      children: [
                                        RowLayout(gap: 8, children: [
                                          AppText(
                                            'Jason Miller',
                                            style: TextStyle(
                                              color: context
                                                  .theme.color.textPrimary,
                                              fontSize: 18,
                                              fontWeight: FontWeight.w600,
                                            ),
                                          ),
                                          AppText(
                                            '09:14 AM',
                                            style: TextStyle(
                                              color: context
                                                  .theme.color.textSecondary,
                                              fontSize: 14,
                                              fontWeight: FontWeight.w400,
                                            ),
                                          ),
                                        ]),
                                        AppText(
                                          'Speaking of which, we should discuss the timeline for the next release. I think we might need an extra week given all these updates.',
                                          style: TextStyle(
                                            color:
                                                context.theme.color.textPrimary,
                                            fontSize: 16,
                                            fontWeight: FontWeight.w400,
                                          ),
                                        ),
                                        Gap(6),
                                        AppButton(
                                            text: '👍1',
                                            width: 45,
                                            // height: 24,
                                            size: WidgetSize.sm,
                                            style: AppButtonStyle.shaded)
                                      ])
                                ]),
                                RowLayout(gap: 16, children: [
                                  AppSquareAvatar(
                                    style: WidgetStyle.subtle,
                                    size: WidgetSize.lg,
                                    path: Assets.mock.avatarSquared2.keyName,
                                  ),
                                  ColumnLayout(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      gap: 6,
                                      children: [
                                        RowLayout(gap: 8, children: [
                                          AppText(
                                            'Tamika Johnson',
                                            style: TextStyle(
                                              color: context
                                                  .theme.color.textPrimary,
                                              fontSize: 18,
                                              fontWeight: FontWeight.w600,
                                            ),
                                          ),
                                          AppText(
                                            '09:16 AM',
                                            style: TextStyle(
                                              color: context
                                                  .theme.color.textSecondary,
                                              fontSize: 14,
                                              fontWeight: FontWeight.w400,
                                            ),
                                          ),
                                        ]),
                                        AppText(
                                          'I agree with Jason. Better to release a polished product than rush it.',
                                          style: TextStyle(
                                            color:
                                                context.theme.color.textPrimary,
                                            fontSize: 16,
                                            fontWeight: FontWeight.w400,
                                          ),
                                        ),
                                        Gap(6),
                                        RowLayout(gap: 6, children: [
                                          AppButton(
                                              text: '🙏1',
                                              width: 45,
                                              // height: 24,
                                              size: WidgetSize.sm,
                                              style: AppButtonStyle.shaded),
                                          AppButton(
                                              text: '💪2',
                                              width: 45,
                                              // height: 24,
                                              size: WidgetSize.sm,
                                              style: AppButtonStyle.shaded),
                                        ])
                                      ])
                                ]),
                                RowLayout(gap: 16, children: [
                                  AppSquareAvatar(
                                    style: WidgetStyle.filled,
                                    size: WidgetSize.lg,
                                    title: 'Anders Lindström',
                                    color: context.theme.color.bgBlue,
                                  ),
                                  ColumnLayout(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        RowLayout(gap: 8, children: [
                                          AppText(
                                            'Anders Lindström',
                                            style: TextStyle(
                                              color: context
                                                  .theme.color.textPrimary,
                                              fontSize: 18,
                                              fontWeight: FontWeight.w600,
                                            ),
                                          ),
                                          AppText(
                                            '09:18 AM',
                                            style: TextStyle(
                                              color: context
                                                  .theme.color.textSecondary,
                                              fontSize: 14,
                                              fontWeight: FontWeight.w400,
                                            ),
                                          ),
                                        ]),
                                        AppText(
                                          'Speaking of which, we should discuss the timeline for the next release. I think we might need an extra week given all these updates.',
                                          style: TextStyle(
                                            color:
                                                context.theme.color.textPrimary,
                                            fontSize: 16,
                                            fontWeight: FontWeight.w400,
                                          ),
                                        )
                                      ])
                                ]),
                                RowLayout(gap: 16, children: [
                                  AppSquareAvatar(
                                    style: WidgetStyle.subtle,
                                    size: WidgetSize.lg,
                                    path: Assets.mock.avatarSquared2.keyName,
                                  ),
                                  ColumnLayout(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        RowLayout(gap: 8, children: [
                                          AppText(
                                            'Darius Washington',
                                            style: TextStyle(
                                              color: context
                                                  .theme.color.textPrimary,
                                              fontSize: 18,
                                              fontWeight: FontWeight.w600,
                                            ),
                                          ),
                                          AppText(
                                            '09:20 AM',
                                            style: TextStyle(
                                              color: context
                                                  .theme.color.textSecondary,
                                              fontSize: 14,
                                              fontWeight: FontWeight.w400,
                                            ),
                                          ),
                                        ]),
                                        AppText(
                                          'I had a chat with the marketing team yesterday. They want a short demo video showcasing the new features. Think you could handle that, Anders?',
                                          style: TextStyle(
                                            color:
                                                context.theme.color.textPrimary,
                                            fontSize: 16,
                                            fontWeight: FontWeight.w400,
                                          ),
                                        )
                                      ])
                                ]),
                                RowLayout(gap: 16, children: [
                                  AppSquareAvatar(
                                    style: WidgetStyle.filled,
                                    size: WidgetSize.lg,
                                    title: 'Anders Lindström',
                                    color: context.theme.color.bgBlue,
                                  ),
                                  ColumnLayout(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      gap: 6,
                                      children: [
                                        RowLayout(gap: 8, children: [
                                          AppText(
                                            'Anders Lindström',
                                            style: TextStyle(
                                              color: context
                                                  .theme.color.textPrimary,
                                              fontSize: 18,
                                              fontWeight: FontWeight.w600,
                                            ),
                                          ),
                                          AppText(
                                            '09:22 AM',
                                            style: TextStyle(
                                              color: context
                                                  .theme.color.textSecondary,
                                              fontSize: 14,
                                              fontWeight: FontWeight.w400,
                                            ),
                                          ),
                                        ]),
                                        AppText(
                                          "Of course! I'll collaborate with the design team on this. Should be ready by next Wednesday.",
                                          style: TextStyle(
                                            color:
                                                context.theme.color.textPrimary,
                                            fontSize: 16,
                                            fontWeight: FontWeight.w400,
                                          ),
                                        ),
                                        Gap(6),
                                        AppButton(
                                            text: '👍1',
                                            width: 45,
                                            // height: 24,
                                            size: WidgetSize.sm,
                                            style: AppButtonStyle.shaded)
                                      ])
                                ]),
                                RowLayout(gap: 16, children: [
                                  AppSquareAvatar(
                                    style: WidgetStyle.subtle,
                                    size: WidgetSize.lg,
                                    path: Assets.mock.avatarSquared2.keyName,
                                  ),
                                  ColumnLayout(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      gap: 6,
                                      children: [
                                        RowLayout(gap: 8, children: [
                                          AppText(
                                            'Tamika Johnson',
                                            style: TextStyle(
                                              color: context
                                                  .theme.color.textPrimary,
                                              fontSize: 18,
                                              fontWeight: FontWeight.w600,
                                            ),
                                          ),
                                          AppText(
                                            '09:24 AM',
                                            style: TextStyle(
                                              color: context
                                                  .theme.color.textSecondary,
                                              fontSize: 14,
                                              fontWeight: FontWeight.w400,
                                            ),
                                          ),
                                        ]),
                                        AppText(
                                          "Sounds like a plan! Let's make this release the best one yet! 🚀",
                                          style: TextStyle(
                                            color:
                                                context.theme.color.textPrimary,
                                            fontSize: 16,
                                            fontWeight: FontWeight.w400,
                                          ),
                                        ),
                                        Gap(6),
                                        RowLayout(gap: 6, children: [
                                          AppButton(
                                              text: '🔥3',
                                              width: 45,
                                              // height: 24,
                                              size: WidgetSize.sm,
                                              style: AppButtonStyle.shaded),
                                          AppButton(
                                              text: '🙌1',
                                              width: 45,
                                              // height: 24,
                                              size: WidgetSize.sm,
                                              style: AppButtonStyle.shaded),
                                          AppButton(
                                              text: '😎2',
                                              width: 45,
                                              // height: 24,
                                              size: WidgetSize.sm,
                                              style: AppButtonStyle.shaded),
                                        ])
                                      ])
                                ]),
                              ])),
                          RowLayout(
                              mainAxisAlignment: MainAxisAlignment.center,
                              gap: 12,
                              padding: const EdgeInsets.symmetric(
                                horizontal: 16,
                                vertical: 16,
                              ),
                              decoration: BoxDecoration(
                                color: context.theme.color.bgSurface1,
                                border: Border(
                                  top: BorderSide(
                                    color: context.theme.color.border,
                                  ),
                                ),
                              ),
                              children: [
                                RowLayout(gap: 12, children: [
                                  ContainerLayout(
                                    child: Assets.icon.infoRegular.svgIcon(
                                      size: 20,
                                      colorFilter: ColorFilter.mode(
                                          context.theme.color.iconPrimary,
                                          BlendMode.srcIn),
                                    ),
                                  ),
                                  ContainerLayout(
                                    child: Assets.icon.infoRegular.svgIcon(
                                      size: 20,
                                      colorFilter: ColorFilter.mode(
                                          context.theme.color.iconPrimary,
                                          BlendMode.srcIn),
                                    ),
                                  ),
                                ]),
                                Expanded(
                                    child: AppTextField(
                                  style: AppTextFieldStyle.shaded,
                                  placeholderText: 'Message general',
                                ))
                              ])
                        ],
                      ),
                    )),
                    if (ResponsiveBreakpoints.of(context).isDesktop)
                      ContainerLayout(
                        width: 280,
                        height: MediaQuery.sizeOf(context).height - 56,
                        padding: const EdgeInsets.symmetric(
                            horizontal: 16, vertical: 16),
                        decoration: BoxDecoration(
                          color: context.theme.color.bgSurface1,
                          border: Border(
                            left: BorderSide(
                              color: context.theme.color.border,
                            ),
                          ),
                        ),
                        child: ColumnLayout(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            gap: 16,
                            children: [
                              AppText('Members (6)',
                                  style: TextStyle(
                                    color: context.theme.color.textPrimary,
                                    fontSize: 14,
                                    fontWeight: FontWeight.w600,
                                  )),
                              WrapLayout(gap: 4, children: [
                                AppSquareAvatar(
                                    style: WidgetStyle.subtle,
                                    path: Assets.mock.avatarSquared2.keyName),
                                AppSquareAvatar(
                                    style: WidgetStyle.subtle,
                                    path: Assets.mock.avatarSquared1.keyName),
                                AppSquareAvatar(
                                    style: WidgetStyle.subtle,
                                    statusDot: StatusDot(
                                      color: context.theme.color.bgPositive,
                                    ),
                                    path: Assets.mock.avatarSquared2.keyName),
                                AppSquareAvatar(
                                    style: WidgetStyle.subtle,
                                    path: Assets.mock.avatarSquared1.keyName),
                                AppSquareAvatar(
                                    style: WidgetStyle.subtle,
                                    path: Assets.mock.avatarSquared2.keyName),
                                AppSquareAvatar(
                                  style: WidgetStyle.subtle,
                                  path: Assets.mock.avatarSquared1.keyName,
                                  statusDot: StatusDot(
                                    color: context.theme.color.bgPositive,
                                  ),
                                ),
                              ]),
                              Row(
                                children: [
                                  Expanded(
                                    child: AppButton(
                                      text: 'Invite people',
                                      style: AppButtonStyle.shaded,
                                    ),
                                  )
                                ],
                              ),
                              AppText('Description',
                                  style: TextStyle(
                                    color: context.theme.color.textPrimary,
                                    fontSize: 14,
                                    fontWeight: FontWeight.w600,
                                  )),
                              AppText(
                                  "This is the primary workspace for all team members to discuss ongoing projects, updates, and announcements. Collaborate, share ideas, and stay in sync. Remember to keep it professional and relevant to our tech-startup's objectives. For topic-specific discussions, please utilize the designated channels. Let's make our startup shine! 🚀",
                                  style: TextStyle(
                                    color: context.theme.color.textPrimary,
                                    fontSize: 14,
                                    fontWeight: FontWeight.w400,
                                  ))
                            ]),
                      )
                  ])
                ],
              ))
        ],
      ),
    ));
  }
}
