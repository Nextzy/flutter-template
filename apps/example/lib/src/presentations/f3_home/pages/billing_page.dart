import 'package:example_app/application.dart';

@RoutePage()
class BillingPage extends AppPage {
  const BillingPage({super.key});

  @override
  State<BillingPage> createState() => _BillingPageState();
}

class _BillingPageState extends AppPageState<BillingPage> {
  @override
  Widget build(BuildContext context) {
    return AppScaffold(
      backgroundColor: context.theme.color.bg,
      body: SafeArea(
          child: RowLayout(children: [
        if (ResponsiveBreakpoints.of(context).largerThan(TABLET))
          ContainerLayout(
            width: 240,
            height: MediaQuery.sizeOf(context).height,
            padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 8),
            decoration: BoxDecoration(
                color: context.theme.color.bgSurface1,
                border: Border(
                    right: BorderSide(color: context.theme.color.border))),
            child: Column(children: [
              Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 12, vertical: 12),
                child: RowLayout(gap: 8, children: [
                  ContainerLayout(
                    child: Assets.icon.fireFilled.svgIcon(
                      size: 26,
                      colorFilter: ColorFilter.mode(
                          context.theme.color.iconNegative, BlendMode.srcIn),
                    ),
                  ),
                  AppText(
                    'Web app',
                    style: TextStyle(
                        color: context.theme.color.textPrimary,
                        fontSize: 18,
                        fontWeight: FontWeight.w600),
                  ),
                ]),
              ),
              Expanded(
                  child: SingleChildScrollView(
                      child: ColumnLayout(children: [
                AppSidebarSection(
                  icon: Assets.icon.houseRegular.keyName,
                  title: 'Overview',
                ),
                AppSidebarSection(
                  icon: Assets.icon.moneyRegular.keyName,
                  title: 'Payments',
                  active: true,
                ),
                AppSidebarSection(
                  icon: Assets.icon.arrowsDownUpRegular.keyName,
                  title: 'Balances',
                ),
                AppSidebarSection(
                  icon: Assets.icon.userCircleRegular.keyName,
                  title: 'Customers',
                ),
                AppSidebarSection(
                  icon: Assets.icon.sealCheckRegular.keyName,
                  title: 'Connected accounts',
                ),
                AppSidebarSection(
                  icon: Assets.icon.cubeRegular.keyName,
                  title: 'Products',
                ),
                AppSidebarSection(
                  icon: Assets.icon.newspaperRegular.keyName,
                  title: 'Readers',
                ),
                AppSidebarSection(
                  icon: Assets.icon.chartBarRegular.keyName,
                  title: 'Reports',
                ),
                AppSidebarSection(
                  icon: Assets.icon.creditCardRegular.keyName,
                  title: 'Issued cards',
                ),
              ]))),
              AppSidebarSection(
                icon: Assets.icon.terminalWindowRegular.keyName,
                title: 'Developers',
              ),
              AppSidebarSection(
                icon: Assets.icon.eyeRegular.keyName,
                title: 'View test data',
              ),
              AppSidebarSection(
                icon: Assets.icon.gearRegular.keyName,
                title: 'Settings',
              ),
            ]),
          ),
        Expanded(
            child: Column(
          children: [
            ContainerLayout(
              height: 64,
              padding: const EdgeInsets.symmetric(horizontal: 28, vertical: 14),
              decoration: BoxDecoration(
                border: Border(
                    bottom: BorderSide(color: context.theme.color.border)),
              ),
              child: RowLayout(gap: 22, children: [
                if (ResponsiveBreakpoints.of(context).largerThan(TABLET))
                  ContainerLayout(
                    width: 276,
                    child: AppTextField(
                      style: AppTextFieldStyle.outline,
                      startIcon: Assets.icon.magnifyingGlassRegular.keyName,
                      placeholderText: 'Search',
                    ),
                  ),
                RowLayout(gap: 4, children: [
                  AppButton(
                      text: 'Feedback',
                      style: AppButtonStyle.text,
                      startIcon: Assets.icon.chatsTeardropRegular.keyName),
                  AppIconButton(
                      icon: Assets.icon.bellRegular.keyName,
                      style: AppButtonStyle.text),
                  AppIconButton(
                      icon: Assets.icon.questionRegular.keyName,
                      style: AppButtonStyle.text),
                  AppIconButton(
                      icon: Assets.icon.userRegular.keyName,
                      style: AppButtonStyle.text),
                ])
              ]),
            ),
            Expanded(
              child: SingleChildScrollView(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 40, vertical: 24),
                  child: ColumnLayout(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      gap: 8,
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            AppText(
                              'Payments',
                              style: TextStyle(
                                  color: context.theme.color.textPrimary,
                                  fontSize: 36,
                                  fontWeight: FontWeight.w600),
                            ),
                            if (ResponsiveBreakpoints.of(context)
                                .largerThan(TABLET))
                              RowLayout(gap: 12, children: [
                                AppButton(
                                  text: 'Filter',
                                  startIcon: Assets
                                      .icon.fadersHorizontalRegular.keyName,
                                  style: AppButtonStyle.outline,
                                ),
                                AppButton(
                                  text: 'Export',
                                  startIcon: Assets.icon.arrowUpRegular.keyName,
                                  style: AppButtonStyle.outline,
                                ),
                                AppButton(
                                  text: 'Create payment',
                                  startIcon: Assets.icon.plusRegular.keyName,
                                ),
                              ])
                          ],
                        ),
                        AppHorizontalTab(
                            style: AppTabStyle.underline,
                            children: [
                              AppTab(text: 'Succeeded'),
                              AppTab(text: 'Refunded'),
                              AppTab(text: 'Uncaptured'),
                              AppTab(text: 'All'),
                            ]),
                        Gap(16),
                        AppTable(
                          width: 1400,
                          height: 783,
                          headerNames: [
                            'Amount',
                            'Description',
                            'Customer',
                            'Date',
                            '',
                          ],
                          source: PaymentTableSource(items: persons),
                          hasCheckbox: true,
                        )
                      ])),
            )
          ],
        ))
      ])),
    );
  }
}

final persons = Payment.getPayments().toList();

class PaymentTableSource implements AppTableSource {
  PaymentTableSource({
    required this.items,
  });

  final List<Payment> items;

  @override
  AppTableCellContainer getCellContainer(BuildContext context, int index) {
    final item = items[index];
    return AppTableCellContainer(
      cells: [
        AppTableCell(
            value: item.amount,
            widget: RowLayout(
                mainAxisAlignment: MainAxisAlignment.center,
                gap: 24,
                children: [
                  AppText(
                    '\$${item.amount.toStringAsFixed(2)}',
                    style: TextStyle(
                        color: context.theme.color.textPrimary,
                        fontSize: 14,
                        fontWeight: FontWeight.w400),
                  ),
                  AppBadge(
                    label: '✓ Succeeded',
                    style: WidgetStyle.subtle,
                    color: context.theme.color.bgPositive,
                    borderRadius: BorderRadius.circular(6),
                  )
                ])),
        AppTableCell(
          value: item.description,
          widget: AppText(
            item.description,
            textAlign: TextAlign.center,
            style: TextStyle(
                color: Colors.black, fontSize: 14, fontWeight: FontWeight.w400),
          ),
        ),
        AppTableCell(
          value: item.customer,
          widget: AppText(
            item.customer,
            textAlign: TextAlign.center,
            style: TextStyle(
                color: Colors.black, fontSize: 14, fontWeight: FontWeight.w400),
          ),
        ),
        AppTableCell(
          value: item.date,
          widget: AppText(
            DateFormat('MMM d, hh:mm a').format(item.date),
            textAlign: TextAlign.center,
            style: TextStyle(
                color: Colors.black, fontSize: 14, fontWeight: FontWeight.w400),
          ),
        ),
        AppTableCell(
          value: '',
          widget: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              AppButton(
                text: 'Info',
                size: WidgetSize.sm,
                style: AppButtonStyle.outline,
                width: 43,
              )
            ],
          ),
        ),
      ],
    );
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

class Payment {
  double amount;
  String description;
  String customer;
  DateTime date;

  Payment({
    required this.amount,
    required this.description,
    required this.customer,
    required this.date,
  });

  static List<Payment> getPayments() {
    return [
      Payment(
        amount: 9.54,
        description: 'Invoice 6B1E73DA–0017',
        customer: 'manhhachkt08@gmail.com',
        date: DateTime(2024, 12, 30, 21, 42),
      ),
      Payment(
        amount: 12.83,
        description: 'Invoice 6B1E73DA–0017',
        customer: 'trungkienspktnd@gamail.com',
        date: DateTime(2024, 12, 29, 21, 42),
      ),
      Payment(
        amount: 0.19,
        description: 'Invoice 6B1E73DA–0017',
        customer: 'danghoang87hl@gmail.com',
        date: DateTime(2024, 12, 28, 23, 14),
      ),
      Payment(
        amount: 22.93,
        description: 'Invoice 6B1E73DA–0017',
        customer: 'trungkienspktnd@gamail.com',
        date: DateTime(2024, 12, 27, 21, 42),
      ),
      Payment(
        amount: 22.93,
        description: 'Invoice 6B1E73DA–0017',
        customer: 'ckctm12@gmail.com',
        date: DateTime(2024, 12, 26, 7, 52),
      ),
      Payment(
        amount: 12.03,
        description: 'Invoice 6B1E73DA–0017',
        customer: 'manhhachkt08@gmail.com',
        date: DateTime(2024, 12, 25, 5, 18),
      ),
      Payment(
        amount: 6.54,
        description: 'Invoice 6B1E73DA–0017',
        customer: 'vuhaithuongnute@gmail.com',
        date: DateTime(2024, 12, 24, 21, 42),
      ),
      Payment(
        amount: 19.22,
        description: 'Invoice 6B1E73DA–0017',
        customer: 'tranthuy.nute@gmail.com',
        date: DateTime(2024, 12, 23, 5, 18),
      ),
      Payment(
        amount: 6.19,
        description: 'Invoice 6B1E73DA–0017',
        customer: 'ckctm12@gmail.com',
        date: DateTime(2024, 12, 22, 23, 26),
      ),
      Payment(
        amount: 6.54,
        description: 'Invoice 6B1E73DA–0017',
        customer: 'tienlapspktnd@gmail.com',
        date: DateTime(2024, 12, 21, 19, 28),
      ),
      Payment(
        amount: 25.08,
        description: 'Invoice 6B1E73DA–0017',
        customer: 'nvt.isst.nute@gmail.com',
        date: DateTime(2024, 12, 20, 23, 14),
      ),
      Payment(
        amount: 8.12,
        description: 'Invoice 6B1E73DA–0017',
        customer: 'thuhang.nute@gmail.com',
        date: DateTime(2024, 12, 19, 23, 14),
      ),
      Payment(
        amount: 11.63,
        description: 'Invoice 6B1E73DA–0017',
        customer: 'tienlapspktnd@gmail.com',
        date: DateTime(2024, 12, 18, 23, 26),
      ),
      Payment(
        amount: 12.83,
        description: 'Invoice 6B1E73DA–0017',
        customer: 'binhan628@gmail.com',
        date: DateTime(2024, 12, 17, 23, 14),
      ),
    ];
  }
}
