import 'package:example_app/application.dart';

@RoutePage()
class EcommercePage extends AppPage {
  const EcommercePage({super.key});

  @override
  State<EcommercePage> createState() => _EcommercePageState();
}

class _EcommercePageState extends AppPageState<EcommercePage> {
  @override
  Widget build(BuildContext context) {
    return AppScaffold(
        backgroundColor: context.theme.color.bg,
        body: SafeArea(
          child: SingleChildScrollView(
            child: Column(
              children: [
                RowLayout(
                  height: 64,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  padding:
                      const EdgeInsets.symmetric(horizontal: 12, vertical: 12),
                  children: [
                    if (ResponsiveBreakpoints.of(context).largerThan(TABLET))
                      AppIconButton(
                        icon: Assets.icon.listRegular.keyName,
                        style: AppButtonStyle.text,
                      ),
                    RowLayout(gap: 8, children: [
                      ContainerLayout(
                          child: Assets.logo.icon.svgIcon(
                        size: 24,
                      )),
                      AppText('Foculty',
                          style: TextStyle(
                            color: context.theme.color.textPrimary,
                            fontSize: ResponsiveBreakpoints.of(context)
                                    .largerThan(TABLET)
                                ? 24
                                : 18,
                            fontWeight: FontWeight.w600,
                          )),
                    ]),
                    RowLayout(gap: 12, children: [
                      AppIconButton(
                        icon: Assets.icon.magnifyingGlassRegular.keyName,
                        style: AppButtonStyle.text,
                      ),
                      AppIconButton(
                        icon: Assets.icon.heartRegular.keyName,
                        style: AppButtonStyle.text,
                      ),
                      AppIconButton(
                        icon: Assets.icon.userRegular.keyName,
                        style: AppButtonStyle.text,
                      ),
                      AppIconButton(
                        icon: Assets.icon.handbagRegular.keyName,
                        style: AppButtonStyle.text,
                      ),
                    ])
                  ],
                ),
                if (ResponsiveBreakpoints.of(context).largerThan(TABLET))
                  Gap(72),
                MaxWidthBox(
                    maxWidth: 960,
                    child: ColumnLayout(gap: 16, children: [
                      if (ResponsiveBreakpoints.of(context).largerThan(TABLET))
                        AppBreadcrumbs(
                            separator: AppBreadcrumbSeparatorType.slash,
                            children: [
                              AppBreadcrumbSection(
                                label: 'Home',
                              ),
                              AppBreadcrumbSection(
                                label: 'Catalog',
                              ),
                              AppBreadcrumbSection(
                                label: 'Cotton sweatshirt',
                              ),
                            ]),
                      ResponsiveRowColumn(
                          layout: ResponsiveBreakpoints.of(context)
                                  .smallerThan(DESKTOP)
                              ? ResponsiveRowColumnType.COLUMN
                              : ResponsiveRowColumnType.ROW,
                          rowCrossAxisAlignment: CrossAxisAlignment.start,
                          rowSpacing: 48,
                          children: [
                            ResponsiveRowColumnItem(
                              rowFlex: 1,
                              rowFit: FlexFit.tight,
                              child: RowLayout(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  gap: 16,
                                  children: [
                                    if (ResponsiveBreakpoints.of(context)
                                        .largerThan(TABLET))
                                      ColumnLayout(
                                          width: 64,
                                          gap: 16,
                                          children: [
                                            ClipRRect(
                                                borderRadius: context
                                                    .theme.borderRadius.md,
                                                child: Image.network(
                                                    'https://i.imgur.com/iqn8Tyy.png',
                                                    fit: BoxFit.cover)),
                                            ClipRRect(
                                                borderRadius: context
                                                    .theme.borderRadius.md,
                                                child: Image.network(
                                                    'https://i.imgur.com/soj5K7p.png',
                                                    fit: BoxFit.cover)),
                                            ClipRRect(
                                                borderRadius: context
                                                    .theme.borderRadius.md,
                                                child: Image.network(
                                                    'https://i.imgur.com/5yptiay.png',
                                                    fit: BoxFit.cover)),
                                            ClipRRect(
                                                borderRadius: context
                                                    .theme.borderRadius.md,
                                                child: Image.network(
                                                    'https://i.imgur.com/9zFESb4.png',
                                                    fit: BoxFit.cover)),
                                            ClipRRect(
                                                borderRadius: context
                                                    .theme.borderRadius.md,
                                                child: Image.network(
                                                    'https://i.imgur.com/SRkF22Y.png',
                                                    fit: BoxFit.cover)),
                                          ]),
                                    Expanded(
                                        child: ClipRRect(
                                            borderRadius:
                                                context.theme.borderRadius.md,
                                            child: Image.network(
                                                'https://i.imgur.com/lwQyV9B.png',
                                                fit: BoxFit.cover)))
                                  ]),
                            ),
                            ResponsiveRowColumnItem(
                              rowFlex: 1,
                              rowFit: FlexFit.tight,
                              child: ColumnLayout(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  padding: ResponsiveBreakpoints.of(context)
                                          .largerThan(TABLET)
                                      ? null
                                      : const EdgeInsets.symmetric(
                                          horizontal: 20, vertical: 24),
                                  children: [
                                    AppBadge(
                                      style: WidgetStyle.subtle,
                                      label: 'New!',
                                      color: context.theme.color.borderBlack,
                                      borderRadius:
                                          context.theme.borderRadius.md,
                                    ),
                                    Gap(8),
                                    AppText('Cotton sweatshirt',
                                        style: TextStyle(
                                          color:
                                              context.theme.color.textPrimary,
                                          fontSize: 36,
                                          fontWeight: FontWeight.w700,
                                        )),
                                    AppText('\$1,299',
                                        style: TextStyle(
                                          color:
                                              context.theme.color.textPrimary,
                                          fontSize: 36,
                                          fontWeight: FontWeight.w700,
                                        )),
                                    Gap(8),
                                    AppText('107293',
                                        style: TextStyle(
                                          color:
                                              context.theme.color.textSecondary,
                                          fontSize: 14,
                                          fontWeight: FontWeight.w400,
                                        )),
                                    Gap(24),
                                    AppText(
                                        'Relaxed fit, Crew neck, Drop shoulder sleeves, Elasticated neckline, Made in Spain',
                                        style: TextStyle(
                                          color:
                                              context.theme.color.textSecondary,
                                          fontSize: 14,
                                          fontWeight: FontWeight.w400,
                                        )),
                                    Gap(24),
                                    AppText('Size',
                                        style: TextStyle(
                                          color:
                                              context.theme.color.textSecondary,
                                          fontSize: 14,
                                          fontWeight: FontWeight.w400,
                                        )),
                                    Gap(4),
                                    AppHorizontalTab(children: [
                                      AppTab(
                                        text: 'XS',
                                        active: true,
                                      ),
                                      AppTab(
                                        text: 'S',
                                      ),
                                      AppTab(
                                        text: 'M',
                                      ),
                                      AppTab(
                                        text: 'L',
                                      ),
                                    ]),
                                    Gap(16),
                                    Row(
                                      children: [
                                        Expanded(
                                          child: AppButton(
                                            style: AppButtonStyle.filled,
                                            size: WidgetSize.lg,
                                            text: 'Add to Cart',
                                          ),
                                        ),
                                      ],
                                    ),
                                    Gap(8),
                                    Row(
                                      children: [
                                        Expanded(
                                          child: AppButton(
                                            style: AppButtonStyle.text,
                                            size: WidgetSize.lg,
                                            text: 'Add to Wishlist',
                                            startIcon: Assets
                                                .icon.heartRegular.keyName,
                                          ),
                                        ),
                                      ],
                                    ),
                                    Gap(24),
                                    AppAccordionGroup(children: [
                                      AppAccordion(
                                          label: 'Size & fit', text: ''),
                                      AppAccordion(label: 'Care', text: ''),
                                      AppAccordion(
                                          label: 'Composition', text: ''),
                                    ])
                                  ]),
                            )
                          ])
                    ])),
              ],
            ),
          ),
        ));
  }
}
