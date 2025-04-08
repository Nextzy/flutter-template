import 'package:example_app/application.dart';

@RoutePage()
class Web3Page extends AppPage {
  const Web3Page({super.key});

  @override
  State<Web3Page> createState() => _Web3PageState();
}

class _Web3PageState extends AppPageState<Web3Page> {
  @override
  Widget build(BuildContext context) {
    return AppScaffold(
        backgroundColor: context.theme.color.bg,
        body: SingleChildScrollView(
          child: Column(
            children: [
              StackLayout(
                height: ResponsiveBreakpoints.of(context).largerThan(TABLET)
                    ? 480
                    : 390,
                children: [
                  ContainerLayout(
                    width: MediaQuery.of(context).size.width,
                    height: ResponsiveBreakpoints.of(context).largerThan(TABLET)
                        ? 480
                        : 390,
                    decoration: BoxDecoration(
                      image: DecorationImage(
                          image: NetworkImage(
                            'https://i.imgur.com/T6OeHox.png',
                          ),
                          fit: BoxFit.fill),
                    ),
                  ),
                  ColumnLayout(gap: 12, children: [
                    MaxWidthBox(
                      maxWidth: 443,
                      child: ColumnLayout(
                          gap: 12,
                          margin: const EdgeInsets.only(top: 72),
                          children: [
                            Gap(ResponsiveBreakpoints.of(context)
                                    .largerThan(TABLET)
                                ? 55
                                : 44),
                            AppSquareAvatar(
                                size: WidgetSize.xl,
                                style: WidgetStyle.subtle,
                                path: Assets.mock.avatarSquared1.keyName),
                            AppText('Mr. Wiggles’ Collection',
                                style: TextStyle(
                                  color: context.theme.color.textPrimaryInverse,
                                  fontSize: ResponsiveBreakpoints.of(context)
                                          .largerThan(TABLET)
                                      ? 36
                                      : 24,
                                  fontWeight: ResponsiveBreakpoints.of(context)
                                          .largerThan(TABLET)
                                      ? FontWeight.w700
                                      : FontWeight.w600,
                                )),
                            Gap(2),
                            ContainerLayout(
                              width: ResponsiveBreakpoints.of(context)
                                      .largerThan(TABLET)
                                  ? 443
                                  : 360,
                              padding: const EdgeInsets.symmetric(
                                  horizontal: 12, vertical: 20),
                              decoration: BoxDecoration(
                                  color: context.theme.color.bgSurface2Active,
                                  border: Border.all(
                                      color: context.theme.color.borderInverse,
                                      width: 0.5),
                                  borderRadius: context.theme.borderRadius.md),
                              child: RowLayout(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  gap: 4,
                                  children: [
                                    ColumnLayout(children: [
                                      AppText('Creators',
                                          style: TextStyle(
                                            color: context
                                                .theme.color.textPrimaryInverse,
                                            fontSize: 14,
                                            fontWeight: FontWeight.w600,
                                          )),
                                      RowLayout(gap: 8, children: [
                                        AppText('26',
                                            style: TextStyle(
                                              color: context.theme.color
                                                  .textPrimaryInverse,
                                              fontSize:
                                                  ResponsiveBreakpoints.of(
                                                              context)
                                                          .largerThan(TABLET)
                                                      ? 24
                                                      : 18,
                                              fontWeight: FontWeight.w600,
                                            )),
                                        RowLayout(children: [
                                          AppCircleAvatar(
                                              size: WidgetSize.sm,
                                              style: WidgetStyle.subtle,
                                              path: Assets
                                                  .mock.avatarSquared1.keyName),
                                          AppCircleAvatar(
                                              size: WidgetSize.sm,
                                              style: WidgetStyle.subtle,
                                              path: Assets
                                                  .mock.avatarSquared2.keyName),
                                          AppCircleAvatar(
                                              size: WidgetSize.sm,
                                              style: WidgetStyle.subtle,
                                              path: Assets
                                                  .mock.avatarSquared1.keyName),
                                        ])
                                      ])
                                    ]),
                                    AppDivider(
                                      direction: DividerDirection.vertical,
                                      width: 56,
                                      color: context.theme.color.borderInverse,
                                    ),
                                    ColumnLayout(children: [
                                      AppText('Collectors',
                                          style: TextStyle(
                                            color: context
                                                .theme.color.textPrimaryInverse,
                                            fontSize: 14,
                                            fontWeight: FontWeight.w600,
                                          )),
                                      RowLayout(gap: 8, children: [
                                        AppText('42',
                                            style: TextStyle(
                                              color: context.theme.color
                                                  .textPrimaryInverse,
                                              fontSize:
                                                  ResponsiveBreakpoints.of(
                                                              context)
                                                          .largerThan(TABLET)
                                                      ? 24
                                                      : 18,
                                              fontWeight: FontWeight.w600,
                                            )),
                                        RowLayout(children: [
                                          AppCircleAvatar(
                                              size: WidgetSize.sm,
                                              style: WidgetStyle.subtle,
                                              path: Assets
                                                  .mock.avatarSquared1.keyName),
                                          AppCircleAvatar(
                                              size: WidgetSize.sm,
                                              style: WidgetStyle.subtle,
                                              path: Assets
                                                  .mock.avatarSquared2.keyName),
                                          AppCircleAvatar(
                                              size: WidgetSize.sm,
                                              style: WidgetStyle.subtle,
                                              path: Assets
                                                  .mock.avatarSquared1.keyName),
                                        ])
                                      ])
                                    ]),
                                    AppDivider(
                                      direction: DividerDirection.vertical,
                                      width: 56,
                                      color: context.theme.color.borderInverse,
                                    ),
                                    ColumnLayout(children: [
                                      AppText('Sales',
                                          style: TextStyle(
                                            color: context
                                                .theme.color.textPrimaryInverse,
                                            fontSize: 14,
                                            fontWeight: FontWeight.w600,
                                          )),
                                      AppText('127.5 ETH',
                                          style: TextStyle(
                                            color: context
                                                .theme.color.textPrimaryInverse,
                                            fontSize: ResponsiveBreakpoints.of(
                                                        context)
                                                    .largerThan(TABLET)
                                                ? 24
                                                : 18,
                                            fontWeight: FontWeight.w600,
                                          )),
                                    ])
                                  ]),
                            ),
                          ]),
                    ),
                    if (ResponsiveBreakpoints.of(context).largerThan(TABLET))
                      Gap(8),
                    if (ResponsiveBreakpoints.of(context).largerThan(TABLET))
                      RowLayout(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          padding: const EdgeInsets.symmetric(horizontal: 20),
                          children: [
                            AppText('Create with Stratum',
                                style: TextStyle(
                                  color:
                                      context.theme.color.textSecondaryInverse,
                                  fontSize: 14,
                                  fontWeight: FontWeight.w600,
                                )),
                            RowLayout(gap: 12, children: [
                              AppButton(
                                text: 'Share',
                                startIcon: Assets.icon.infoRegular.keyName,
                                style: AppButtonStyle.shaded,
                                color: context.theme.color.textPrimaryInverse,
                              ),
                              ContainerLayout(
                                child: Assets.icon.infoRegular.svgIcon(
                                  size: 20,
                                  colorFilter: ColorFilter.mode(
                                      context.theme.color.iconPrimaryInverse,
                                      BlendMode.srcIn),
                                ),
                              ),
                            ])
                          ])
                  ]),
                  RowLayout(
                    height: 72,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    padding: const EdgeInsets.symmetric(
                        horizontal: 16, vertical: 14),
                    children: [
                      RowLayout(gap: 12, children: [
                        ContainerLayout(
                          child: Assets.icon.infoRegular.svgIcon(
                            size: 20,
                            colorFilter: ColorFilter.mode(
                                context.theme.color.iconPrimaryInverse,
                                BlendMode.srcIn),
                          ),
                        ),
                        if (ResponsiveBreakpoints.of(context)
                            .largerThan(TABLET))
                          AppButton(
                              text: 'Feed',
                              size: WidgetSize.lg,
                              style: AppButtonStyle.text,
                              themeMode: ThemeMode.dark),
                        if (ResponsiveBreakpoints.of(context)
                            .largerThan(TABLET))
                          AppButton(
                              text: 'Trending',
                              size: WidgetSize.lg,
                              style: AppButtonStyle.text,
                              themeMode: ThemeMode.dark),
                      ]),
                      if (ResponsiveBreakpoints.of(context).largerThan(TABLET))
                        ContainerLayout(
                          width: 360,
                          child: AppTextField(
                            style: AppTextFieldStyle.shaded,
                            startIcon: Assets.icon.infoRegular.keyName,
                            placeholderText: 'Search web3',
                            themeMode: ThemeMode.dark,
                          ),
                        ),
                      RowLayout(gap: 12, children: [
                        ContainerLayout(
                          child: Assets.icon.infoRegular.svgIcon(
                            size: 20,
                            colorFilter: ColorFilter.mode(
                                context.theme.color.iconPrimaryInverse,
                                BlendMode.srcIn),
                          ),
                        ),
                        if (ResponsiveBreakpoints.of(context)
                            .largerThan(TABLET))
                          AppButton(
                              text: 'Create',
                              size: WidgetSize.lg,
                              style: AppButtonStyle.text,
                              themeMode: ThemeMode.dark),
                        ContainerLayout(
                          child: Assets.icon.infoRegular.svgIcon(
                            size: 20,
                            colorFilter: ColorFilter.mode(
                                context.theme.color.iconPrimaryInverse,
                                BlendMode.srcIn),
                          ),
                        ),
                      ]),
                    ],
                  ),
                ],
              ),
              ColumnLayout(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  gap: 16,
                  padding: ResponsiveBreakpoints.of(context).largerThan(TABLET)
                      ? const EdgeInsets.symmetric(horizontal: 56, vertical: 32)
                      : const EdgeInsets.symmetric(
                          horizontal: 24, vertical: 24),
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Expanded(
                          child: SingleChildScrollView(
                            scrollDirection: Axis.horizontal,
                            child: AppHorizontalTab(
                                size: WidgetSize.lg,
                                style: AppTabStyle.shade,
                                children: [
                                  AppTab(text: 'All'),
                                  AppTab(text: 'Live Auction'),
                                  AppTab(text: 'Buy Now'),
                                  AppTab(text: 'Reserve'),
                                  AppTab(text: 'Offer'),
                                ]),
                          ),
                        ),
                        if (ResponsiveBreakpoints.of(context)
                            .largerThan(TABLET))
                          AppButton(
                              text: 'Most Active',
                              endIcon: Assets.icon.caretDownRegular.keyName,
                              size: WidgetSize.lg,
                              style: AppButtonStyle.outline)
                      ],
                    ),
                    if (!ResponsiveBreakpoints.of(context).largerThan(TABLET))
                      AppButton(
                          text: 'Most Active',
                          endIcon: Assets.icon.caretDownRegular.keyName,
                          size: WidgetSize.lg,
                          style: AppButtonStyle.outline),
                    ResponsiveRowColumn(
                      layout:
                          ResponsiveBreakpoints.of(context).smallerThan(DESKTOP)
                              ? ResponsiveRowColumnType.COLUMN
                              : ResponsiveRowColumnType.ROW,
                      rowSpacing: 24,
                      columnSpacing: 24,
                      children: [
                        ResponsiveRowColumnItem(
                          rowFlex: 1,
                          rowFit: FlexFit.tight,
                          child: ColumnLayout(gap: 8, children: [
                            RowLayout(
                              height: 314,
                              children: [
                                Expanded(
                                  child: ClipRRect(
                                    borderRadius: context.theme.borderRadius.md,
                                    child: Image.network(
                                      'https://i.imgur.com/JtA8HZf.png',
                                      fit: BoxFit.cover,
                                    ),
                                  ),
                                )
                              ],
                            ),
                            RowLayout(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              gap: 8,
                              children: [
                                Expanded(
                                  child: ColumnLayout(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      AppText(
                                        'The Sims',
                                        maxLines: 1,
                                        overflow: TextOverflow.ellipsis,
                                        style: TextStyle(
                                          color:
                                              context.theme.color.textPrimary,
                                          fontSize: 18,
                                          fontWeight: FontWeight.w600,
                                        ),
                                      ),
                                      AppText(
                                        '3.69 ETH',
                                        style: TextStyle(
                                          color:
                                              context.theme.color.textPrimary,
                                          fontSize: 16,
                                          fontWeight: FontWeight.w400,
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                AppButton(
                                    text: 'Bid',
                                    size: WidgetSize.lg,
                                    style: AppButtonStyle.outline),
                              ],
                            )
                          ]),
                        ),
                        ResponsiveRowColumnItem(
                          rowFlex: 1,
                          rowFit: FlexFit.tight,
                          child: ColumnLayout(gap: 8, children: [
                            RowLayout(
                              height: 314,
                              children: [
                                Expanded(
                                  child: ClipRRect(
                                    borderRadius: context.theme.borderRadius.md,
                                    child: Image.network(
                                      'https://i.imgur.com/OywBYzv.png',
                                      fit: BoxFit.cover,
                                    ),
                                  ),
                                )
                              ],
                            ),
                            RowLayout(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              gap: 8,
                              children: [
                                Expanded(
                                  child: ColumnLayout(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      AppText(
                                        'Formatting',
                                        maxLines: 1,
                                        overflow: TextOverflow.ellipsis,
                                        style: TextStyle(
                                          color:
                                              context.theme.color.textPrimary,
                                          fontSize: 18,
                                          fontWeight: FontWeight.w600,
                                        ),
                                      ),
                                      AppText(
                                        '1.00 ETH',
                                        style: TextStyle(
                                          color:
                                              context.theme.color.textPrimary,
                                          fontSize: 16,
                                          fontWeight: FontWeight.w400,
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                AppButton(
                                    text: 'Bid',
                                    size: WidgetSize.lg,
                                    style: AppButtonStyle.outline),
                              ],
                            )
                          ]),
                        ),
                        ResponsiveRowColumnItem(
                          rowFlex: 1,
                          rowFit: FlexFit.tight,
                          child: ColumnLayout(gap: 8, children: [
                            RowLayout(
                              height: 314,
                              children: [
                                Expanded(
                                  child: ClipRRect(
                                    borderRadius: context.theme.borderRadius.md,
                                    child: Image.network(
                                      'https://i.imgur.com/BEsAe51.png',
                                      fit: BoxFit.cover,
                                    ),
                                  ),
                                )
                              ],
                            ),
                            RowLayout(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              gap: 8,
                              children: [
                                Expanded(
                                  child: ColumnLayout(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      AppText(
                                        'No Profit Under The Sun',
                                        maxLines: 1,
                                        overflow: TextOverflow.ellipsis,
                                        style: TextStyle(
                                          color:
                                              context.theme.color.textPrimary,
                                          fontSize: 18,
                                          fontWeight: FontWeight.w600,
                                        ),
                                      ),
                                      AppText(
                                        '4.00 ETH',
                                        style: TextStyle(
                                          color:
                                              context.theme.color.textPrimary,
                                          fontSize: 16,
                                          fontWeight: FontWeight.w400,
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                AppButton(
                                    text: 'Bid',
                                    size: WidgetSize.lg,
                                    style: AppButtonStyle.outline),
                              ],
                            )
                          ]),
                        ),
                        ResponsiveRowColumnItem(
                          rowFlex: 1,
                          rowFit: FlexFit.tight,
                          child: ColumnLayout(gap: 8, children: [
                            RowLayout(
                              height: 314,
                              children: [
                                Expanded(
                                  child: ClipRRect(
                                    borderRadius: context.theme.borderRadius.md,
                                    child: Image.network(
                                      'https://i.imgur.com/mpwKP4r.png',
                                      fit: BoxFit.cover,
                                    ),
                                  ),
                                )
                              ],
                            ),
                            RowLayout(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              gap: 8,
                              children: [
                                Expanded(
                                  child: ColumnLayout(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      AppText(
                                        "You're just making shit up",
                                        maxLines: 1,
                                        overflow: TextOverflow.ellipsis,
                                        style: TextStyle(
                                          color:
                                              context.theme.color.textPrimary,
                                          fontSize: 18,
                                          fontWeight: FontWeight.w600,
                                        ),
                                      ),
                                      AppText(
                                        '4.99 ETH',
                                        style: TextStyle(
                                          color:
                                              context.theme.color.textPrimary,
                                          fontSize: 16,
                                          fontWeight: FontWeight.w400,
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                AppButton(
                                    text: 'Bid',
                                    size: WidgetSize.lg,
                                    style: AppButtonStyle.outline),
                              ],
                            )
                          ]),
                        ),
                      ],
                    ),
                  ]),
              RowLayout(
                height: 56,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                padding:
                    const EdgeInsets.symmetric(horizontal: 24, vertical: 16),
                children: [
                  RowLayout(gap: 12, children: [
                    ContainerLayout(
                      child: Assets.icon.infoRegular.svgIcon(
                        size: 20,
                        colorFilter: ColorFilter.mode(
                            context.theme.color.iconPrimary, BlendMode.srcIn),
                      ),
                    ),
                    AppText('Twitter',
                        style: TextStyle(
                            color: context.theme.color.textPrimary,
                            fontSize: 14,
                            fontWeight: FontWeight.w600)),
                    AppText('Instagram',
                        style: TextStyle(
                            color: context.theme.color.textPrimary,
                            fontSize: 14,
                            fontWeight: FontWeight.w600)),
                    AppText('Blog',
                        style: TextStyle(
                            color: context.theme.color.textPrimary,
                            fontSize: 14,
                            fontWeight: FontWeight.w600)),
                  ]),
                  if (ResponsiveBreakpoints.of(context).largerThan(TABLET))
                    RowLayout(gap: 12, children: [
                      AppText('Careers',
                          style: TextStyle(
                              color: context.theme.color.textPrimary,
                              fontSize: 14,
                              fontWeight: FontWeight.w600)),
                      AppText('Terms of Service',
                          style: TextStyle(
                              color: context.theme.color.textPrimary,
                              fontSize: 14,
                              fontWeight: FontWeight.w600)),
                      AppText('Privacy',
                          style: TextStyle(
                              color: context.theme.color.textPrimary,
                              fontSize: 14,
                              fontWeight: FontWeight.w600)),
                      AppText('Help',
                          style: TextStyle(
                              color: context.theme.color.textPrimary,
                              fontSize: 14,
                              fontWeight: FontWeight.w600)),
                    ]),
                ],
              ),
            ],
          ),
        ));
  }
}
