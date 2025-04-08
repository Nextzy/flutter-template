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
                            'https://s3-alpha-sig.figma.com/img/f44d/3ed8/067db520859041cdc916f928a34a1cab?Expires=1743984000&Key-Pair-Id=APKAQ4GOSFWCW27IBOMQ&Signature=AxMSixC6~rHxVsGJdPDVI6jAyqJCMJYvg6txcuEMP3qoiqNhgm2cAybXdXytCShRR6Y7g6rIXdZhxr~6YgeaWQh9J6fz~-i9MTb5sBFyaq9t5gPVAN4gocx6sa3wA0XvEGcVunC~G5nTmmMgPiZZ0J5KHOul3AEd92UI-jajGtyN5Abkhd2c7OpQVe2qKCgdmH4BL4hXt4rAaeq2mQBAbMCT1nIpQh6xrEK~NCIX5oz8SuJ5J94-bPh5Gq-WZzYJqssCfj3VKm5yB1K~sxRe~m446ZUyEQhvO0L~LyyE~67O0ZWUXWnQ61cWoihgv-XRHW4oh9Ewbu5pqmIQyeyNzg__',
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
                                      'https://s3-alpha-sig.figma.com/img/7d8f/d1e2/d0a23dd58ebdc9f6bb81237783bcd9c0?Expires=1743984000&Key-Pair-Id=APKAQ4GOSFWCW27IBOMQ&Signature=TQ1i89s16ndRbcvaSrIHf1i-lf9dvqd~wIgI-a5zJ9oqH54t4EmQfIgOpgegOKS5xAHy43CIaUGui~iw2IvjNEv0BVf772vHhcgSHifZ3DiVYs3f1JaXqXyh~UNQEJxPkwBXV9DlnkYfIziMDUJHhMN5Or3PEjAMVn6LwLdI3P8O9H4kXCdVtDfpJIuIeSd53aWG3p-EFJc8JEwFe4bKiU-P7Z4E8y8ZX~oh3~APWtLFkW2MYKp6pHgiQQlmr6lwgF92af1NdQM~2WHJPw2Wekh~GpVsAMQij1-El0a8d9EjLE8UcEGIjIxqhtjFRi~PmWjQLX8xebRdu6AtyjBRjQ__',
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
                                      'https://s3-alpha-sig.figma.com/img/b686/59e4/9101727d8742f13d808f09dcda599c30?Expires=1743984000&Key-Pair-Id=APKAQ4GOSFWCW27IBOMQ&Signature=MAIk-v-ZieNDx5VtzBXDNrbPYonQks~Ga6ExjNYzYvCXk3q~Smb-ZFsErlMrf-ngvmLsjyICaqsuivgMivFkYoS8f8VvDasvv6Bc1so12xf6rag77ROutZDsA4Ac8xXiUmiiMfMdCVMQ0pguMrp5fIPcVYlZ7VAgt8IvzIwyxDjGP1ZPjM~3FTILdJxlFDCT84SVe7Zr7bax1Z1iP1K49fxRfVCGxZRktBf28Ogq-5Y9-mYoPJqYwvM9QMJIw9ighnAmzT9v5Tb-JMhS~4NEgIa8sLts~Can~zqyDbPcIddhvt4~luiAPClGHnUz4sJb0hUarrh35tzwDEuHvpKxZQ__',
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
                                      'https://s3-alpha-sig.figma.com/img/49af/2f58/d8e26fe3bb94a7e0a305ea49c92994ed?Expires=1743984000&Key-Pair-Id=APKAQ4GOSFWCW27IBOMQ&Signature=oVI8VSIUkblCqBli-O-pBvbsFQzNgd7199z05Wxl2L8CJ-ym4hBhlT8yMKHUnLXhmYSshuNKNPCIt0najFpmhz0uCp4AJM5fBpmaF6Ax4TnGGd2zTKLDhFL3n0jmQaDwegiDUuD4xPT0Vc0iSpnzur0OU2QywLW6R~qmJLOrBgeqc1DMhwQ1NqffdqC16y3-Uf9PTi0IbskrZPFxB97zfn69GR2e7tsD35jSr860bnPXqXmHWnuakG8Y8WucdzSfQDYyGpMdhmAl~VlEB92~HKbxfbfPYKnEnPN-nPrnUfr0hfmFlcQFvQtnq62DVARI2u71oImpdYysWh5Xi8Q~8A__',
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
                                      'https://s3-alpha-sig.figma.com/img/e294/8586/74f7fd859be76c2ecb931adda314cbc2?Expires=1743984000&Key-Pair-Id=APKAQ4GOSFWCW27IBOMQ&Signature=ZGsie9l0ZTCXdV6DTOEIwwfMQXsdIaq-aIP-2q8XUmI~pGdvHrBfaG5uq3MO9o8iSlasw7Z1oBoddYnEdDwit7AicjHNrJlD98PjH2zJfqojOjD1ODp36Celsgq7zsX1W3cSyv-bkHVZp~o~KOBj8SdwDwyx5mPDiasKcKPpNPaoCzIhsYUr5NMlJQR3cy16CB-2xh19UnQSI9u4-wakpP76i4SOQkc4SZK4aPNcAYRytCuOAwcEaJ~Jk7Fj5owTMrO3E2Eo71vmX~~HLiRTn2ZCEY3Vqwx7YE9jMgwSWWGrTUMWe~hCWLMUJGKJe~lwV1WuyrR0c1d06UhbJADm2w__',
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
