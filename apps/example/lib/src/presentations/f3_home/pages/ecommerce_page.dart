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
        body: SingleChildScrollView(
          child: Column(
            children: [
              RowLayout(
                height: 64,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                padding:
                    const EdgeInsets.symmetric(horizontal: 12, vertical: 12),
                children: [
                  if (ResponsiveBreakpoints.of(context).largerThan(TABLET))
                    ContainerLayout(
                      child: Assets.icon.infoRegular.svgIcon(
                        size: 20,
                        colorFilter: ColorFilter.mode(
                            context.theme.color.iconPrimary, BlendMode.srcIn),
                      ),
                    ),
                  AppText('Foculty',
                      style: TextStyle(
                        color: context.theme.color.textPrimary,
                        fontSize:
                            ResponsiveBreakpoints.of(context).largerThan(TABLET)
                                ? 24
                                : 18,
                        fontWeight: FontWeight.w600,
                      )),
                  RowLayout(gap: 12, children: [
                    ContainerLayout(
                      child: Assets.icon.infoRegular.svgIcon(
                        size: 20,
                        colorFilter: ColorFilter.mode(
                            context.theme.color.iconPrimary, BlendMode.srcIn),
                      ),
                    ),
                    ContainerLayout(
                      child: Assets.icon.infoRegular.svgIcon(
                        size: 20,
                        colorFilter: ColorFilter.mode(
                            context.theme.color.iconPrimary, BlendMode.srcIn),
                      ),
                    ),
                    ContainerLayout(
                      child: Assets.icon.infoRegular.svgIcon(
                        size: 20,
                        colorFilter: ColorFilter.mode(
                            context.theme.color.iconPrimary, BlendMode.srcIn),
                      ),
                    ),
                    ContainerLayout(
                      child: Assets.icon.infoRegular.svgIcon(
                        size: 20,
                        colorFilter: ColorFilter.mode(
                            context.theme.color.iconPrimary, BlendMode.srcIn),
                      ),
                    ),
                  ])
                ],
              ),
              if (ResponsiveBreakpoints.of(context).largerThan(TABLET)) Gap(72),
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
                                    ColumnLayout(width: 64, gap: 16, children: [
                                      ClipRRect(
                                          borderRadius:
                                              context.theme.borderRadius.md,
                                          child: Image.network(
                                              'https://s3-alpha-sig.figma.com/img/4f48/7f59/fa526a9a0c95a32c4fd356db8f349433?Expires=1743379200&Key-Pair-Id=APKAQ4GOSFWCW27IBOMQ&Signature=PAKxBTFDugmYX9tii3yTtaaNvD-H72C0uFtiJZ7FlW5QX4EZrDsUsSKrvYKBDXBjRsYF13iSQxaZEl1KjwNK-0MlKSK6x4566FnejpWizSH5XXrY0bcCu6~1eiDDdC-J4o6BQzF72C6oNFEDsffBY0Ts5-IaIaGxqQDQ1zYxbheI6azI-5R5qcqe3tMcqUwr6ILjdwQ5BCteVAhcBeO7k-xUYpKAvWdyS0YqSL0t8S9nIGiBP1d9dC-hPh9FW973v-sfgpcrinDG81wyyZXfe9fUfbVpmq-oB0ITLvOQeZl2LaFa7uVNwPvRTq6tj~YWHIdc3LLMYNJrFExGdzNG6A__',
                                              fit: BoxFit.cover)),
                                      ClipRRect(
                                          borderRadius:
                                              context.theme.borderRadius.md,
                                          child: Image.network(
                                              'https://s3-alpha-sig.figma.com/img/fb8b/8033/18a982dc1fceeb83e7852e93fa339d6f?Expires=1743379200&Key-Pair-Id=APKAQ4GOSFWCW27IBOMQ&Signature=U2ktCe978YhT9Y5sa2imxNwR0AtzF-7RaagGb59bm3U0fy~fMHKP45HeoGaGQSEBOSbQV6X6BdosiRZo0-FCii~UzW6jCVfH8cGZW3jTu34iVs3PuV4VBZnQUbVmnGcIV~Dex9kWfs7NVe2mlTAC1KZwUoWYY27ZqE-7DULSDwBtadmCqGZjMxKlbdIi3Su7r3MyK~gWbnChEUOW4~sqvRvOpUD6mE60W2XRytXdfEMATSAlHj0d5FQIqrR1nU3Cj0CDNVonWcp1IHYyeAM99cScBf-2RfpQQMfPV69R13qnqtpEGSLcpk7kZFmznQOA4RFpNZ~qM3mBZZydMnKQQA__',
                                              fit: BoxFit.cover)),
                                      ClipRRect(
                                          borderRadius:
                                              context.theme.borderRadius.md,
                                          child: Image.network(
                                              'https://s3-alpha-sig.figma.com/img/a339/c91b/3a5a5614482495e19f0146957c5be32d?Expires=1743379200&Key-Pair-Id=APKAQ4GOSFWCW27IBOMQ&Signature=nCfLubBWHl9F1VL0oSz9tLM5XC5WkS9fCp8Kn4QyyXw8C7iFMbzQERchu6FBgYA5jGYzvqIQIHYqbLCllWKWbQNIewPCeKVgFRfOP9g0znoQ6DpWmkF--AdYPS3vv1wHs9sP3AQZeJyMvg9e11b2BsLic8XOEWCvvLGotYFkuyqamvd3maBC8VFRD-Z01QCkhCmIXLReE6BnrcirAl-0XtdVoIUDa4K5i0K-pT1O9RtXpzhEyx6zY9ANSO1Qu5V05WuDb18OXb1A4OT1gZ-9M4b8qCa~SITNTIkc14rcl0-jQpWyl50vS7YsG5oXy8H9H8EbV4naVNjSj1ymQd8gWA__',
                                              fit: BoxFit.cover)),
                                      ClipRRect(
                                          borderRadius:
                                              context.theme.borderRadius.md,
                                          child: Image.network(
                                              'https://s3-alpha-sig.figma.com/img/cfab/6ac1/d43e20d838d8f2459176bb44cb368789?Expires=1743379200&Key-Pair-Id=APKAQ4GOSFWCW27IBOMQ&Signature=jI3TBIj4ThgiBbR~pkSAMO11GmJSH8P7NyvmYHOoR5A03EAbdzoDrI3eANQDMsy50h4NhRCexFer4fSDicDRo2mibfNwQw3c7QKUyqtcqrULEbNHxrod-x3z7petfZ9C7R3A1pHFuH9XCptwAKEBBVWef0qLS2gwLnKRApDm-WvF7fn9zRHTkCdw-nAfDqD3C5zigSYHA4sZ79VOV2eMcEhkGzGOp20sFQZcO5kh9hlqisrxOxtc4Fl4xrZaWcpdHsW-~CgNmuvy-iAkLnZz3I9B3xkGaLcYywH1pDTlMtfqUwE-QbSWYJGCiGYuELCXXL0z8S8GnEuBY1Vcw28hUQ__',
                                              fit: BoxFit.cover)),
                                      ClipRRect(
                                          borderRadius:
                                              context.theme.borderRadius.md,
                                          child: Image.network(
                                              'https://s3-alpha-sig.figma.com/img/3b72/2f7c/9ad46c714e9ba786290607915f3570ec?Expires=1743379200&Key-Pair-Id=APKAQ4GOSFWCW27IBOMQ&Signature=iGOGSBKd4eWYVAQFrFWpl3dv6O3AmaPptETm5ZFAe20WlR8P2mfXZd91O7E9pT524SjEamfV0qr~YP4s-pMvSYsPtqyzR6KP-eI6BMFc-dK~tTPWB~dVMFg2s9M8c511fCzmkza6lYsOjy5sjvVcD1AH8Z-l6nVvNPp0KIZLA-cTNXbXrnPB4Zl4bSl0RcBCYAtHRgrK4rx4iqybWh1pA9cTrliOYKz0wVxDCI5eDJOBdktk2GQq0F3-oJ2YYZwU6qSGAyG~s~vwk6cKzfoKlAJ7xRyoCjtnMzhEiV6GUfNHbY0ZJrQ8nogctWa6GAr39wFEnapRdwX3UpD6bTyX~Q__',
                                              fit: BoxFit.cover)),
                                    ]),
                                  Expanded(
                                      child: ClipRRect(
                                          borderRadius:
                                              context.theme.borderRadius.md,
                                          child: Image.network(
                                              'https://s3-alpha-sig.figma.com/img/fb8a/6954/deaebdb3825aa99c909ac90fb8891090?Expires=1743379200&Key-Pair-Id=APKAQ4GOSFWCW27IBOMQ&Signature=n1Aw9UGcFml449mzKJjXLri1QcTRR6IraqZL3mlMrs4dZMJiCZvcvSBtLaDsH9DG694ZLLF~KbSeiQRSF7a~Sv6xpHI4hRk~mqZxDYo11l-qd~kWoqiAN~MOkIWx6degGaYy8cPjLJ1SowKtckYc5FPtqbou4li602ryxseltt25TuzEQ8mPCB6PGx~eizu5Qnsja8iwKIHV5K-i~Ac566vYgmqV8hvRwvw2ToQCF8oO67toB1fDCZSFVhOnbGaNeMKCCqC2l9fZC1UrjgUcQQIykE2EwnmJZGuk0CIAKR6WriNzq4VN6shgo5dKYHIezK0J2fGF7tVheXzRmZ686w__',
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
                                    borderRadius: context.theme.borderRadius.md,
                                  ),
                                  Gap(8),
                                  AppText('Cotton sweatshirt',
                                      style: TextStyle(
                                        color: context.theme.color.textPrimary,
                                        fontSize: 36,
                                        fontWeight: FontWeight.w700,
                                      )),
                                  AppText('\$1,299',
                                      style: TextStyle(
                                        color: context.theme.color.textPrimary,
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
                                        ),
                                      ),
                                    ],
                                  ),
                                  Gap(24),
                                  AppAccordionGroup(children: [
                                    AppAccordion(label: 'Size & fit', text: ''),
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
        ));
  }
}
