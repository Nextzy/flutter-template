import 'package:example_app/application.dart';

@RoutePage()
class KanbanPage extends AppPage {
  const KanbanPage({super.key});

  @override
  State<KanbanPage> createState() => _KanbanPageState();
}

class _KanbanPageState extends AppPageState<KanbanPage> {
  @override
  Widget build(BuildContext context) {
    return AppScaffold(
      body: ColumnLayout(
        backgroundColor: context.theme.color.bg,
        children: [
          if (ResponsiveBreakpoints.of(context).largerThan(TABLET))
            RowLayout(
              height: 64,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 14),
              decoration: BoxDecoration(
                border: Border(
                  bottom: BorderSide(
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
                          context.theme.color.iconPrimary, BlendMode.srcIn),
                    ),
                  ),
                  ContainerLayout(
                    child: Assets.icon.infoRegular.svgIcon(
                      size: 20,
                      colorFilter: ColorFilter.mode(
                          context.theme.color.iconNegative, BlendMode.srcIn),
                    ),
                  ),
                  AppButton(
                      text: 'Projects',
                      endIcon: Assets.icon.caretDownRegular.keyName,
                      style: AppButtonStyle.text),
                  AppButton(
                      text: 'Filters',
                      endIcon: Assets.icon.caretDownRegular.keyName,
                      style: AppButtonStyle.text),
                  AppButton(
                      text: 'Dashboards',
                      endIcon: Assets.icon.caretDownRegular.keyName,
                      style: AppButtonStyle.text),
                  AppButton(
                      text: 'People',
                      endIcon: Assets.icon.caretDownRegular.keyName,
                      style: AppButtonStyle.text),
                  AppButton(
                      text: 'Apps',
                      endIcon: Assets.icon.caretDownRegular.keyName,
                      style: AppButtonStyle.text),
                  AppButton(text: 'Create', style: AppButtonStyle.outline),
                ]),
                RowLayout(gap: 12, children: [
                  ContainerLayout(
                    width: 276,
                    child: AppTextField(
                      style: AppTextFieldStyle.outline,
                      startIcon: Assets.icon.infoRegular.keyName,
                      placeholderText: 'Search projects',
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
                  AppCircleAvatar(
                    style: WidgetStyle.subtle,
                    size: WidgetSize.sm,
                    path: Assets.mock.avatarSquared1.keyName,
                  )
                ])
              ],
            ),
          RowLayout(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              if (ResponsiveBreakpoints.of(context).largerThan(TABLET))
                ContainerLayout(
                  width: 240,
                  height: MediaQuery.sizeOf(context).height - 64,
                  padding:
                      const EdgeInsets.symmetric(horizontal: 8, vertical: 8),
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
                            horizontal: 12, vertical: 12),
                        child: RowLayout(gap: 8, children: [
                          ContainerLayout(
                            child: Assets.icon.infoRegular.svgIcon(
                              size: 26,
                              colorFilter: ColorFilter.mode(
                                  context.theme.color.iconWarning,
                                  BlendMode.srcIn),
                            ),
                          ),
                          AppText(
                            'Product web',
                            style: TextStyle(
                                color: context.theme.color.textPrimary,
                                fontSize: 18,
                                fontWeight: FontWeight.w600),
                          ),
                        ]),
                      ),
                      SingleChildScrollView(
                        child: ColumnLayout(children: [
                          AppSidebarSection(
                            icon: Assets.icon.infoRegular.keyName,
                            title: 'Backlog',
                          ),
                          AppSidebarSection(
                              icon: Assets.icon.infoRegular.keyName,
                              title: 'Active sprints',
                              active: true),
                          AppSidebarSection(
                            icon: Assets.icon.infoRegular.keyName,
                            title: 'Reports',
                          ),
                          AppDivider(),
                          AppSidebarSection(
                            icon: Assets.icon.infoRegular.keyName,
                            title: 'Issues',
                          ),
                          AppSidebarSection(
                              icon: Assets.icon.infoRegular.keyName,
                              title: 'Components'),
                          AppSidebarSection(
                            icon: Assets.icon.infoRegular.keyName,
                            title: 'Code',
                          ),
                          AppSidebarSection(
                            icon: Assets.icon.infoRegular.keyName,
                            title: 'Releases',
                          ),
                          AppSidebarSection(
                            icon: Assets.icon.infoRegular.keyName,
                            title: 'Project pages',
                          ),
                        ]),
                      ),
                    ],
                  ),
                ),
              Expanded(
                  child: SingleChildScrollView(
                padding:
                    const EdgeInsets.symmetric(horizontal: 32, vertical: 24),
                child: ColumnLayout(
                  gap: 16,
                  children: [
                    AppBreadcrumbs(children: [
                      AppBreadcrumbSection(label: 'Projects'),
                      AppBreadcrumbSection(label: 'International'),
                      AppBreadcrumbSection(label: 'Product Web')
                    ]),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        AppText(
                          'All Sprints',
                          style: TextStyle(
                              color: context.theme.color.textPrimary,
                              fontSize: 24,
                              fontWeight: FontWeight.w600),
                        ),
                        RowLayout(gap: 12, children: [
                          ContainerLayout(
                            child: Assets.icon.infoRegular.svgIcon(
                              size: 20,
                              colorFilter: ColorFilter.mode(
                                  context.theme.color.iconPrimary,
                                  BlendMode.srcIn),
                            ),
                          ),
                          AppButton(text: 'Complete sprint'),
                          ContainerLayout(
                            child: Assets.icon.infoRegular.svgIcon(
                              size: 20,
                              colorFilter: ColorFilter.mode(
                                  context.theme.color.iconPrimary,
                                  BlendMode.srcIn),
                            ),
                          ),
                          AppIconButton(
                              icon: Assets.icon.infoRegular.keyName,
                              style: AppButtonStyle.outline)
                        ])
                      ],
                    ),
                    RowLayout(gap: 16, children: [
                      ContainerLayout(
                        width: 280,
                        child: AppTextField(
                          style: AppTextFieldStyle.outline,
                          startIcon: Assets.icon.infoRegular.keyName,
                          placeholderText: 'Search issues',
                        ),
                      ),
                      RowLayout(children: [
                        AppCircleAvatar(
                            size: WidgetSize.sm,
                            style: WidgetStyle.subtle,
                            path: Assets.mock.avatarSquared1.keyName),
                        AppCircleAvatar(
                            size: WidgetSize.sm,
                            style: WidgetStyle.subtle,
                            path: Assets.mock.avatarSquared2.keyName),
                        AppCircleAvatar(
                            size: WidgetSize.sm,
                            style: WidgetStyle.subtle,
                            path: Assets.mock.avatarSquared1.keyName),
                        AppCircleAvatar(
                            size: WidgetSize.sm,
                            style: WidgetStyle.subtle,
                            path: Assets.mock.avatarSquared2.keyName),
                        AppCircleAvatar(
                            size: WidgetSize.sm,
                            style: WidgetStyle.filled,
                            title: '+ 9',
                            color: context.theme.color.bgSurface2),
                        AppButton(
                            text: 'Only my issues', style: AppButtonStyle.text),
                        AppButton(
                            text: 'Recently updated',
                            style: AppButtonStyle.text),
                      ])
                    ]),
                    RowLayout(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        gap: 8,
                        children: [
                          ContainerLayout(
                            width: 374,
                            minHeight: 750,
                            padding: const EdgeInsets.symmetric(
                                horizontal: 8, vertical: 12),
                            decoration: BoxDecoration(
                                color: context.theme.color.bgSurface1,
                                borderRadius: context.theme.borderRadius.md),
                            child: ColumnLayout(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                gap: 8,
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.only(left: 12),
                                    child: AppText('TO DO',
                                        style: TextStyle(
                                            color: context
                                                .theme.color.textSecondary,
                                            fontSize: 14,
                                            fontWeight: FontWeight.w600)),
                                  ),
                                  ContainerLayout(
                                    padding: const EdgeInsets.symmetric(
                                        horizontal: 16, vertical: 16),
                                    decoration: BoxDecoration(
                                        color: context.theme.color.bgPopover,
                                        borderRadius:
                                            context.theme.borderRadius.md),
                                    child: ColumnLayout(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        gap: 12,
                                        children: [
                                          AppText(
                                              'As a translator, I want integrate Crowdin webhook to notify translators about changed strings',
                                              style: TextStyle(
                                                  color: context
                                                      .theme.color.textPrimary,
                                                  fontSize: 14,
                                                  fontWeight: FontWeight.w400)),
                                          ContainerLayout(
                                            width: 75,
                                            decoration: BoxDecoration(
                                                color: context
                                                    .theme.color.bgWarning,
                                                borderRadius:
                                                    BorderRadius.circular(2)),
                                            child: Center(
                                              child: AppText('Refactoring',
                                                  style: TextStyle(
                                                      color: context.theme.color
                                                          .textPrimary,
                                                      fontSize: 12,
                                                      fontWeight:
                                                          FontWeight.w500)),
                                            ),
                                          ),
                                          Row(
                                              mainAxisAlignment:
                                                  MainAxisAlignment
                                                      .spaceBetween,
                                              children: [
                                                RowLayout(gap: 8, children: [
                                                  ContainerLayout(
                                                    child: Assets
                                                        .icon.infoRegular
                                                        .svgIcon(
                                                      size: 20,
                                                      colorFilter:
                                                          ColorFilter.mode(
                                                              context
                                                                  .theme
                                                                  .color
                                                                  .iconPositive,
                                                              BlendMode.srcIn),
                                                    ),
                                                  ),
                                                  ContainerLayout(
                                                    child: Assets
                                                        .icon.infoRegular
                                                        .svgIcon(
                                                      size: 20,
                                                      colorFilter:
                                                          ColorFilter.mode(
                                                              context
                                                                  .theme
                                                                  .color
                                                                  .iconNegative,
                                                              BlendMode.srcIn),
                                                    ),
                                                  ),
                                                  ContainerLayout(
                                                    width: 24,
                                                    height: 24,
                                                    decoration: BoxDecoration(
                                                        color: context.theme
                                                            .color.bgSurface2,
                                                        border: Border.all(
                                                            color: context.theme
                                                                .color.border,
                                                            width: 0.5),
                                                        borderRadius:
                                                            BorderRadius
                                                                .circular(999)),
                                                    child: Center(
                                                      child: AppText('2',
                                                          style: TextStyle(
                                                              color: context
                                                                  .theme
                                                                  .color
                                                                  .textPrimary,
                                                              fontSize: 14,
                                                              fontWeight:
                                                                  FontWeight
                                                                      .w500)),
                                                    ),
                                                  ),
                                                ]),
                                                RowLayout(gap: 8, children: [
                                                  AppText('FC-7',
                                                      style: TextStyle(
                                                          color: context
                                                              .theme
                                                              .color
                                                              .textSecondary,
                                                          fontSize: 14,
                                                          fontWeight:
                                                              FontWeight.w400)),
                                                  AppCircleAvatar(
                                                    style: WidgetStyle.filled,
                                                    size: WidgetSize.sm,
                                                    title: 'P G',
                                                    statusDot: StatusDot(
                                                      color: context.theme.color
                                                          .bgPositive,
                                                    ),
                                                  )
                                                ])
                                              ])
                                        ]),
                                  ),
                                  ContainerLayout(
                                    padding: const EdgeInsets.symmetric(
                                        horizontal: 16, vertical: 16),
                                    decoration: BoxDecoration(
                                        color: context.theme.color.bgPopover,
                                        borderRadius:
                                            context.theme.borderRadius.md),
                                    child: ColumnLayout(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        gap: 12,
                                        children: [
                                          AppText(
                                              'As a user, I want to see actual overusage price for next download',
                                              style: TextStyle(
                                                  color: context
                                                      .theme.color.textPrimary,
                                                  fontSize: 14,
                                                  fontWeight: FontWeight.w400)),
                                          Row(
                                              mainAxisAlignment:
                                                  MainAxisAlignment
                                                      .spaceBetween,
                                              children: [
                                                RowLayout(gap: 8, children: [
                                                  ContainerLayout(
                                                    child: Assets
                                                        .icon.infoRegular
                                                        .svgIcon(
                                                      size: 20,
                                                      colorFilter:
                                                          ColorFilter.mode(
                                                              context
                                                                  .theme
                                                                  .color
                                                                  .iconPositive,
                                                              BlendMode.srcIn),
                                                    ),
                                                  ),
                                                  ContainerLayout(
                                                    child: Assets
                                                        .icon.infoRegular
                                                        .svgIcon(
                                                      size: 20,
                                                      colorFilter:
                                                          ColorFilter.mode(
                                                              context
                                                                  .theme
                                                                  .color
                                                                  .iconNegative,
                                                              BlendMode.srcIn),
                                                    ),
                                                  ),
                                                  ContainerLayout(
                                                    width: 24,
                                                    height: 24,
                                                    decoration: BoxDecoration(
                                                        color: context.theme
                                                            .color.bgSurface2,
                                                        border: Border.all(
                                                            color: context.theme
                                                                .color.border,
                                                            width: 0.5),
                                                        borderRadius:
                                                            BorderRadius
                                                                .circular(999)),
                                                    child: Center(
                                                      child: AppText('1',
                                                          style: TextStyle(
                                                              color: context
                                                                  .theme
                                                                  .color
                                                                  .textPrimary,
                                                              fontSize: 14,
                                                              fontWeight:
                                                                  FontWeight
                                                                      .w500)),
                                                    ),
                                                  ),
                                                ]),
                                                RowLayout(gap: 8, children: [
                                                  AppText('FC-7',
                                                      style: TextStyle(
                                                          color: context
                                                              .theme
                                                              .color
                                                              .textSecondary,
                                                          fontSize: 14,
                                                          fontWeight:
                                                              FontWeight.w400)),
                                                  AppCircleAvatar(
                                                    style: WidgetStyle.filled,
                                                    size: WidgetSize.sm,
                                                    title: 'P G',
                                                    statusDot: StatusDot(
                                                      color: context.theme.color
                                                          .bgPositive,
                                                    ),
                                                  )
                                                ])
                                              ])
                                        ]),
                                  ),
                                  ContainerLayout(
                                    padding: const EdgeInsets.symmetric(
                                        horizontal: 16, vertical: 16),
                                    decoration: BoxDecoration(
                                        color: context.theme.color.bgPopover,
                                        borderRadius:
                                            context.theme.borderRadius.md),
                                    child: ColumnLayout(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        gap: 12,
                                        children: [
                                          AppText(
                                              'As a team license owner, I want to use multiplied limits',
                                              style: TextStyle(
                                                  color: context
                                                      .theme.color.textPrimary,
                                                  fontSize: 14,
                                                  fontWeight: FontWeight.w400)),
                                          Row(
                                              mainAxisAlignment:
                                                  MainAxisAlignment
                                                      .spaceBetween,
                                              children: [
                                                RowLayout(gap: 8, children: [
                                                  ContainerLayout(
                                                    child: Assets
                                                        .icon.infoRegular
                                                        .svgIcon(
                                                      size: 20,
                                                      colorFilter:
                                                          ColorFilter.mode(
                                                              context
                                                                  .theme
                                                                  .color
                                                                  .iconPositive,
                                                              BlendMode.srcIn),
                                                    ),
                                                  ),
                                                  ContainerLayout(
                                                    child: Assets
                                                        .icon.infoRegular
                                                        .svgIcon(
                                                      size: 20,
                                                      colorFilter:
                                                          ColorFilter.mode(
                                                              context
                                                                  .theme
                                                                  .color
                                                                  .iconNegative,
                                                              BlendMode.srcIn),
                                                    ),
                                                  ),
                                                  ContainerLayout(
                                                    width: 24,
                                                    height: 24,
                                                    decoration: BoxDecoration(
                                                        color: context.theme
                                                            .color.bgSurface2,
                                                        border: Border.all(
                                                            color: context.theme
                                                                .color.border,
                                                            width: 0.5),
                                                        borderRadius:
                                                            BorderRadius
                                                                .circular(999)),
                                                    child: Center(
                                                      child: AppText('2',
                                                          style: TextStyle(
                                                              color: context
                                                                  .theme
                                                                  .color
                                                                  .textPrimary,
                                                              fontSize: 14,
                                                              fontWeight:
                                                                  FontWeight
                                                                      .w500)),
                                                    ),
                                                  ),
                                                ]),
                                                RowLayout(gap: 8, children: [
                                                  AppText('FC-7',
                                                      style: TextStyle(
                                                          color: context
                                                              .theme
                                                              .color
                                                              .textSecondary,
                                                          fontSize: 14,
                                                          fontWeight:
                                                              FontWeight.w400)),
                                                  AppCircleAvatar(
                                                    style: WidgetStyle.filled,
                                                    size: WidgetSize.sm,
                                                    title: 'P G',
                                                    statusDot: StatusDot(
                                                      color: context.theme.color
                                                          .bgPositive,
                                                    ),
                                                  )
                                                ])
                                              ])
                                        ]),
                                  ),
                                  ContainerLayout(
                                    padding: const EdgeInsets.symmetric(
                                        horizontal: 16, vertical: 16),
                                    decoration: BoxDecoration(
                                        color: context.theme.color.bgPopover,
                                        borderRadius:
                                            context.theme.borderRadius.md),
                                    child: ColumnLayout(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        gap: 12,
                                        children: [
                                          AppText(
                                              'Font SCSS mixin does not recognise fallback for font-family',
                                              style: TextStyle(
                                                  color: context
                                                      .theme.color.textPrimary,
                                                  fontSize: 14,
                                                  fontWeight: FontWeight.w400)),
                                          Row(
                                              mainAxisAlignment:
                                                  MainAxisAlignment
                                                      .spaceBetween,
                                              children: [
                                                RowLayout(gap: 8, children: [
                                                  ContainerLayout(
                                                    child: Assets
                                                        .icon.infoRegular
                                                        .svgIcon(
                                                      size: 20,
                                                      colorFilter:
                                                          ColorFilter.mode(
                                                              context
                                                                  .theme
                                                                  .color
                                                                  .iconPositive,
                                                              BlendMode.srcIn),
                                                    ),
                                                  ),
                                                  ContainerLayout(
                                                    child: Assets
                                                        .icon.infoRegular
                                                        .svgIcon(
                                                      size: 20,
                                                      colorFilter:
                                                          ColorFilter.mode(
                                                              context
                                                                  .theme
                                                                  .color
                                                                  .iconNegative,
                                                              BlendMode.srcIn),
                                                    ),
                                                  ),
                                                  ContainerLayout(
                                                    width: 24,
                                                    height: 24,
                                                    decoration: BoxDecoration(
                                                        color: context.theme
                                                            .color.bgSurface2,
                                                        border: Border.all(
                                                            color: context.theme
                                                                .color.border,
                                                            width: 0.5),
                                                        borderRadius:
                                                            BorderRadius
                                                                .circular(999)),
                                                    child: Center(
                                                      child: AppText('3',
                                                          style: TextStyle(
                                                              color: context
                                                                  .theme
                                                                  .color
                                                                  .textPrimary,
                                                              fontSize: 14,
                                                              fontWeight:
                                                                  FontWeight
                                                                      .w500)),
                                                    ),
                                                  ),
                                                ]),
                                                RowLayout(gap: 8, children: [
                                                  AppText('FC-7',
                                                      style: TextStyle(
                                                          color: context
                                                              .theme
                                                              .color
                                                              .textSecondary,
                                                          fontSize: 14,
                                                          fontWeight:
                                                              FontWeight.w400)),
                                                  AppCircleAvatar(
                                                    style: WidgetStyle.filled,
                                                    size: WidgetSize.sm,
                                                    title: 'P G',
                                                    statusDot: StatusDot(
                                                      color: context.theme.color
                                                          .bgPositive,
                                                    ),
                                                  )
                                                ])
                                              ])
                                        ]),
                                  ),
                                  ContainerLayout(
                                    padding: const EdgeInsets.symmetric(
                                        horizontal: 16, vertical: 16),
                                    decoration: BoxDecoration(
                                        color: context.theme.color.bgPopover,
                                        borderRadius:
                                            context.theme.borderRadius.md),
                                    child: ColumnLayout(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        gap: 12,
                                        children: [
                                          AppText(
                                              'Interate nuxt-18n in product-developers project',
                                              style: TextStyle(
                                                  color: context
                                                      .theme.color.textPrimary,
                                                  fontSize: 14,
                                                  fontWeight: FontWeight.w400)),
                                          ContainerLayout(
                                            width: 75,
                                            decoration: BoxDecoration(
                                                color: context
                                                    .theme.color.bgWarning,
                                                borderRadius:
                                                    BorderRadius.circular(2)),
                                            child: Center(
                                              child: AppText('Refactoring',
                                                  style: TextStyle(
                                                      color: context.theme.color
                                                          .textPrimary,
                                                      fontSize: 12,
                                                      fontWeight:
                                                          FontWeight.w500)),
                                            ),
                                          ),
                                          Row(
                                              mainAxisAlignment:
                                                  MainAxisAlignment
                                                      .spaceBetween,
                                              children: [
                                                RowLayout(gap: 8, children: [
                                                  ContainerLayout(
                                                    child: Assets
                                                        .icon.infoRegular
                                                        .svgIcon(
                                                      size: 20,
                                                      colorFilter:
                                                          ColorFilter.mode(
                                                              context
                                                                  .theme
                                                                  .color
                                                                  .iconPositive,
                                                              BlendMode.srcIn),
                                                    ),
                                                  ),
                                                  ContainerLayout(
                                                    child: Assets
                                                        .icon.infoRegular
                                                        .svgIcon(
                                                      size: 20,
                                                      colorFilter:
                                                          ColorFilter.mode(
                                                              context
                                                                  .theme
                                                                  .color
                                                                  .iconNegative,
                                                              BlendMode.srcIn),
                                                    ),
                                                  ),
                                                  ContainerLayout(
                                                    width: 24,
                                                    height: 24,
                                                    decoration: BoxDecoration(
                                                        color: context.theme
                                                            .color.bgSurface2,
                                                        border: Border.all(
                                                            color: context.theme
                                                                .color.border,
                                                            width: 0.5),
                                                        borderRadius:
                                                            BorderRadius
                                                                .circular(999)),
                                                    child: Center(
                                                      child: AppText('5',
                                                          style: TextStyle(
                                                              color: context
                                                                  .theme
                                                                  .color
                                                                  .textPrimary,
                                                              fontSize: 14,
                                                              fontWeight:
                                                                  FontWeight
                                                                      .w500)),
                                                    ),
                                                  ),
                                                ]),
                                                RowLayout(gap: 8, children: [
                                                  AppText('FC-7',
                                                      style: TextStyle(
                                                          color: context
                                                              .theme
                                                              .color
                                                              .textSecondary,
                                                          fontSize: 14,
                                                          fontWeight:
                                                              FontWeight.w400)),
                                                  AppCircleAvatar(
                                                    style: WidgetStyle.filled,
                                                    size: WidgetSize.sm,
                                                    title: 'P G',
                                                    statusDot: StatusDot(
                                                      color: context.theme.color
                                                          .bgPositive,
                                                    ),
                                                  )
                                                ])
                                              ])
                                        ]),
                                  ),
                                ]),
                          ),
                          ContainerLayout(
                            width: 374,
                            minHeight: 750,
                            padding: const EdgeInsets.symmetric(
                                horizontal: 8, vertical: 12),
                            decoration: BoxDecoration(
                                color: context.theme.color.bgSurface1,
                                borderRadius: context.theme.borderRadius.md),
                            child: ColumnLayout(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                gap: 8,
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.only(left: 12),
                                    child: AppText('IN PROGRESS',
                                        style: TextStyle(
                                            color: context
                                                .theme.color.textSecondary,
                                            fontSize: 14,
                                            fontWeight: FontWeight.w600)),
                                  ),
                                  ContainerLayout(
                                    padding: const EdgeInsets.symmetric(
                                        horizontal: 16, vertical: 16),
                                    decoration: BoxDecoration(
                                        color: context.theme.color.bgPopover,
                                        borderRadius:
                                            context.theme.borderRadius.md),
                                    child: ColumnLayout(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        gap: 12,
                                        children: [
                                          AppText(
                                              'As an external contributor, I want to be able to see status of uploaded materials',
                                              style: TextStyle(
                                                  color: context
                                                      .theme.color.textPrimary,
                                                  fontSize: 14,
                                                  fontWeight: FontWeight.w400)),
                                          Row(
                                              mainAxisAlignment:
                                                  MainAxisAlignment
                                                      .spaceBetween,
                                              children: [
                                                RowLayout(gap: 8, children: [
                                                  ContainerLayout(
                                                    child: Assets
                                                        .icon.infoRegular
                                                        .svgIcon(
                                                      size: 20,
                                                      colorFilter:
                                                          ColorFilter.mode(
                                                              context
                                                                  .theme
                                                                  .color
                                                                  .iconPositive,
                                                              BlendMode.srcIn),
                                                    ),
                                                  ),
                                                  ContainerLayout(
                                                    child: Assets
                                                        .icon.infoRegular
                                                        .svgIcon(
                                                      size: 20,
                                                      colorFilter:
                                                          ColorFilter.mode(
                                                              context
                                                                  .theme
                                                                  .color
                                                                  .iconNegative,
                                                              BlendMode.srcIn),
                                                    ),
                                                  ),
                                                  ContainerLayout(
                                                    width: 24,
                                                    height: 24,
                                                    decoration: BoxDecoration(
                                                        color: context.theme
                                                            .color.bgSurface2,
                                                        border: Border.all(
                                                            color: context.theme
                                                                .color.border,
                                                            width: 0.5),
                                                        borderRadius:
                                                            BorderRadius
                                                                .circular(999)),
                                                    child: Center(
                                                      child: AppText('3',
                                                          style: TextStyle(
                                                              color: context
                                                                  .theme
                                                                  .color
                                                                  .textPrimary,
                                                              fontSize: 14,
                                                              fontWeight:
                                                                  FontWeight
                                                                      .w500)),
                                                    ),
                                                  ),
                                                ]),
                                                RowLayout(gap: 8, children: [
                                                  AppText('FC-7',
                                                      style: TextStyle(
                                                          color: context
                                                              .theme
                                                              .color
                                                              .textSecondary,
                                                          fontSize: 14,
                                                          fontWeight:
                                                              FontWeight.w400)),
                                                  AppCircleAvatar(
                                                    style: WidgetStyle.filled,
                                                    size: WidgetSize.sm,
                                                    title: 'P G',
                                                    statusDot: StatusDot(
                                                      color: context.theme.color
                                                          .bgPositive,
                                                    ),
                                                  )
                                                ])
                                              ])
                                        ]),
                                  ),
                                  ContainerLayout(
                                    padding: const EdgeInsets.symmetric(
                                        horizontal: 16, vertical: 16),
                                    decoration: BoxDecoration(
                                        color: context.theme.color.bgPopover,
                                        borderRadius:
                                            context.theme.borderRadius.md),
                                    child: ColumnLayout(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        gap: 12,
                                        children: [
                                          AppText(
                                              'Replace JustComments with something',
                                              style: TextStyle(
                                                  color: context
                                                      .theme.color.textPrimary,
                                                  fontSize: 14,
                                                  fontWeight: FontWeight.w400)),
                                          Row(
                                              mainAxisAlignment:
                                                  MainAxisAlignment
                                                      .spaceBetween,
                                              children: [
                                                RowLayout(gap: 8, children: [
                                                  ContainerLayout(
                                                    child: Assets
                                                        .icon.infoRegular
                                                        .svgIcon(
                                                      size: 20,
                                                      colorFilter:
                                                          ColorFilter.mode(
                                                              context
                                                                  .theme
                                                                  .color
                                                                  .iconPositive,
                                                              BlendMode.srcIn),
                                                    ),
                                                  ),
                                                  ContainerLayout(
                                                    child: Assets
                                                        .icon.infoRegular
                                                        .svgIcon(
                                                      size: 20,
                                                      colorFilter:
                                                          ColorFilter.mode(
                                                              context
                                                                  .theme
                                                                  .color
                                                                  .iconNegative,
                                                              BlendMode.srcIn),
                                                    ),
                                                  ),
                                                  ContainerLayout(
                                                    width: 24,
                                                    height: 24,
                                                    decoration: BoxDecoration(
                                                        color: context.theme
                                                            .color.bgSurface2,
                                                        border: Border.all(
                                                            color: context.theme
                                                                .color.border,
                                                            width: 0.5),
                                                        borderRadius:
                                                            BorderRadius
                                                                .circular(999)),
                                                    child: Center(
                                                      child: AppText('3',
                                                          style: TextStyle(
                                                              color: context
                                                                  .theme
                                                                  .color
                                                                  .textPrimary,
                                                              fontSize: 14,
                                                              fontWeight:
                                                                  FontWeight
                                                                      .w500)),
                                                    ),
                                                  ),
                                                ]),
                                                RowLayout(gap: 8, children: [
                                                  AppText('FC-7',
                                                      style: TextStyle(
                                                          color: context
                                                              .theme
                                                              .color
                                                              .textSecondary,
                                                          fontSize: 14,
                                                          fontWeight:
                                                              FontWeight.w400)),
                                                  AppCircleAvatar(
                                                    style: WidgetStyle.filled,
                                                    size: WidgetSize.sm,
                                                    title: 'P G',
                                                    statusDot: StatusDot(
                                                      color: context.theme.color
                                                          .bgPositive,
                                                    ),
                                                  )
                                                ])
                                              ])
                                        ]),
                                  ),
                                  ContainerLayout(
                                    padding: const EdgeInsets.symmetric(
                                        horizontal: 16, vertical: 16),
                                    decoration: BoxDecoration(
                                        color: context.theme.color.bgPopover,
                                        borderRadius:
                                            context.theme.borderRadius.md),
                                    child: ColumnLayout(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        gap: 12,
                                        children: [
                                          AppText(
                                              'As manual licensed User, I want to see my limits',
                                              style: TextStyle(
                                                  color: context
                                                      .theme.color.textPrimary,
                                                  fontSize: 14,
                                                  fontWeight: FontWeight.w400)),
                                          Row(
                                              mainAxisAlignment:
                                                  MainAxisAlignment
                                                      .spaceBetween,
                                              children: [
                                                RowLayout(gap: 8, children: [
                                                  ContainerLayout(
                                                    child: Assets
                                                        .icon.infoRegular
                                                        .svgIcon(
                                                      size: 20,
                                                      colorFilter:
                                                          ColorFilter.mode(
                                                              context
                                                                  .theme
                                                                  .color
                                                                  .iconPositive,
                                                              BlendMode.srcIn),
                                                    ),
                                                  ),
                                                  ContainerLayout(
                                                    child: Assets
                                                        .icon.infoRegular
                                                        .svgIcon(
                                                      size: 20,
                                                      colorFilter:
                                                          ColorFilter.mode(
                                                              context
                                                                  .theme
                                                                  .color
                                                                  .iconNegative,
                                                              BlendMode.srcIn),
                                                    ),
                                                  ),
                                                  ContainerLayout(
                                                    width: 24,
                                                    height: 24,
                                                    decoration: BoxDecoration(
                                                        color: context.theme
                                                            .color.bgSurface2,
                                                        border: Border.all(
                                                            color: context.theme
                                                                .color.border,
                                                            width: 0.5),
                                                        borderRadius:
                                                            BorderRadius
                                                                .circular(999)),
                                                    child: Center(
                                                      child: AppText('2',
                                                          style: TextStyle(
                                                              color: context
                                                                  .theme
                                                                  .color
                                                                  .textPrimary,
                                                              fontSize: 14,
                                                              fontWeight:
                                                                  FontWeight
                                                                      .w500)),
                                                    ),
                                                  ),
                                                ]),
                                                RowLayout(gap: 8, children: [
                                                  AppText('FC-7',
                                                      style: TextStyle(
                                                          color: context
                                                              .theme
                                                              .color
                                                              .textSecondary,
                                                          fontSize: 14,
                                                          fontWeight:
                                                              FontWeight.w400)),
                                                  AppCircleAvatar(
                                                    style: WidgetStyle.filled,
                                                    size: WidgetSize.sm,
                                                    title: 'P G',
                                                    statusDot: StatusDot(
                                                      color: context.theme.color
                                                          .bgPositive,
                                                    ),
                                                  )
                                                ])
                                              ])
                                        ]),
                                  ),
                                  ContainerLayout(
                                    padding: const EdgeInsets.symmetric(
                                        horizontal: 16, vertical: 16),
                                    decoration: BoxDecoration(
                                        color: context.theme.color.bgPopover,
                                        borderRadius:
                                            context.theme.borderRadius.md),
                                    child: ColumnLayout(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        gap: 12,
                                        children: [
                                          AppText(
                                              'Create a storage to store common translations',
                                              style: TextStyle(
                                                  color: context
                                                      .theme.color.textPrimary,
                                                  fontSize: 14,
                                                  fontWeight: FontWeight.w400)),
                                          ContainerLayout(
                                            width: 75,
                                            decoration: BoxDecoration(
                                                color: context
                                                    .theme.color.bgWarning,
                                                borderRadius:
                                                    BorderRadius.circular(2)),
                                            child: Center(
                                              child: AppText('Refactoring',
                                                  style: TextStyle(
                                                      color: context.theme.color
                                                          .textPrimary,
                                                      fontSize: 12,
                                                      fontWeight:
                                                          FontWeight.w500)),
                                            ),
                                          ),
                                          Row(
                                              mainAxisAlignment:
                                                  MainAxisAlignment
                                                      .spaceBetween,
                                              children: [
                                                RowLayout(gap: 8, children: [
                                                  ContainerLayout(
                                                    child: Assets
                                                        .icon.infoRegular
                                                        .svgIcon(
                                                      size: 20,
                                                      colorFilter:
                                                          ColorFilter.mode(
                                                              context
                                                                  .theme
                                                                  .color
                                                                  .iconPositive,
                                                              BlendMode.srcIn),
                                                    ),
                                                  ),
                                                  ContainerLayout(
                                                    child: Assets
                                                        .icon.infoRegular
                                                        .svgIcon(
                                                      size: 20,
                                                      colorFilter:
                                                          ColorFilter.mode(
                                                              context
                                                                  .theme
                                                                  .color
                                                                  .iconNegative,
                                                              BlendMode.srcIn),
                                                    ),
                                                  ),
                                                  ContainerLayout(
                                                    width: 24,
                                                    height: 24,
                                                    decoration: BoxDecoration(
                                                        color: context.theme
                                                            .color.bgSurface2,
                                                        border: Border.all(
                                                            color: context.theme
                                                                .color.border,
                                                            width: 0.5),
                                                        borderRadius:
                                                            BorderRadius
                                                                .circular(999)),
                                                    child: Center(
                                                      child: AppText('5',
                                                          style: TextStyle(
                                                              color: context
                                                                  .theme
                                                                  .color
                                                                  .textPrimary,
                                                              fontSize: 14,
                                                              fontWeight:
                                                                  FontWeight
                                                                      .w500)),
                                                    ),
                                                  ),
                                                ]),
                                                RowLayout(gap: 8, children: [
                                                  AppText('FC-7',
                                                      style: TextStyle(
                                                          color: context
                                                              .theme
                                                              .color
                                                              .textSecondary,
                                                          fontSize: 14,
                                                          fontWeight:
                                                              FontWeight.w400)),
                                                  AppCircleAvatar(
                                                    style: WidgetStyle.filled,
                                                    size: WidgetSize.sm,
                                                    title: 'P G',
                                                    statusDot: StatusDot(
                                                      color: context.theme.color
                                                          .bgPositive,
                                                    ),
                                                  )
                                                ])
                                              ])
                                        ]),
                                  ),
                                  ContainerLayout(
                                    padding: const EdgeInsets.symmetric(
                                        horizontal: 16, vertical: 16),
                                    decoration: BoxDecoration(
                                        color: context.theme.color.bgPopover,
                                        borderRadius:
                                            context.theme.borderRadius.md),
                                    child: ColumnLayout(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        gap: 12,
                                        children: [
                                          AppText(
                                              'CLONE – As an external contributor, I want to be able to upload a zip of my original materials',
                                              style: TextStyle(
                                                  color: context
                                                      .theme.color.textPrimary,
                                                  fontSize: 14,
                                                  fontWeight: FontWeight.w400)),
                                          Row(
                                              mainAxisAlignment:
                                                  MainAxisAlignment
                                                      .spaceBetween,
                                              children: [
                                                RowLayout(gap: 8, children: [
                                                  ContainerLayout(
                                                    child: Assets
                                                        .icon.infoRegular
                                                        .svgIcon(
                                                      size: 20,
                                                      colorFilter:
                                                          ColorFilter.mode(
                                                              context
                                                                  .theme
                                                                  .color
                                                                  .iconPositive,
                                                              BlendMode.srcIn),
                                                    ),
                                                  ),
                                                  ContainerLayout(
                                                    child: Assets
                                                        .icon.infoRegular
                                                        .svgIcon(
                                                      size: 20,
                                                      colorFilter:
                                                          ColorFilter.mode(
                                                              context
                                                                  .theme
                                                                  .color
                                                                  .iconNegative,
                                                              BlendMode.srcIn),
                                                    ),
                                                  ),
                                                  ContainerLayout(
                                                    width: 24,
                                                    height: 24,
                                                    decoration: BoxDecoration(
                                                        color: context.theme
                                                            .color.bgSurface2,
                                                        border: Border.all(
                                                            color: context.theme
                                                                .color.border,
                                                            width: 0.5),
                                                        borderRadius:
                                                            BorderRadius
                                                                .circular(999)),
                                                    child: Center(
                                                      child: AppText('2',
                                                          style: TextStyle(
                                                              color: context
                                                                  .theme
                                                                  .color
                                                                  .textPrimary,
                                                              fontSize: 14,
                                                              fontWeight:
                                                                  FontWeight
                                                                      .w500)),
                                                    ),
                                                  ),
                                                ]),
                                                RowLayout(gap: 8, children: [
                                                  AppText('FC-7',
                                                      style: TextStyle(
                                                          color: context
                                                              .theme
                                                              .color
                                                              .textSecondary,
                                                          fontSize: 14,
                                                          fontWeight:
                                                              FontWeight.w400)),
                                                  AppCircleAvatar(
                                                    style: WidgetStyle.filled,
                                                    size: WidgetSize.sm,
                                                    title: 'P G',
                                                    statusDot: StatusDot(
                                                      color: context.theme.color
                                                          .bgPositive,
                                                    ),
                                                  )
                                                ])
                                              ])
                                        ]),
                                  ),
                                ]),
                          ),
                          ContainerLayout(
                            width: 374,
                            minHeight: 750,
                            padding: const EdgeInsets.symmetric(
                                horizontal: 8, vertical: 12),
                            decoration: BoxDecoration(
                                color: context.theme.color.bgSurface1,
                                borderRadius: context.theme.borderRadius.md),
                            child: ColumnLayout(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                gap: 8,
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.only(left: 12),
                                    child: AppText('DONE',
                                        style: TextStyle(
                                            color: context
                                                .theme.color.textSecondary,
                                            fontSize: 14,
                                            fontWeight: FontWeight.w600)),
                                  ),
                                  ContainerLayout(
                                    padding: const EdgeInsets.symmetric(
                                        horizontal: 16, vertical: 16),
                                    decoration: BoxDecoration(
                                        color: context.theme.color.bgPopover,
                                        borderRadius:
                                            context.theme.borderRadius.md),
                                    child: ColumnLayout(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        gap: 12,
                                        children: [
                                          AppText(
                                              'As a user, I want to access Intercom help center, so that I am not confused by Crisp',
                                              style: TextStyle(
                                                  color: context
                                                      .theme.color.textPrimary,
                                                  fontSize: 14,
                                                  fontWeight: FontWeight.w400)),
                                          Row(
                                              mainAxisAlignment:
                                                  MainAxisAlignment
                                                      .spaceBetween,
                                              children: [
                                                RowLayout(gap: 8, children: [
                                                  ContainerLayout(
                                                    child: Assets
                                                        .icon.infoRegular
                                                        .svgIcon(
                                                      size: 20,
                                                      colorFilter:
                                                          ColorFilter.mode(
                                                              context
                                                                  .theme
                                                                  .color
                                                                  .iconPositive,
                                                              BlendMode.srcIn),
                                                    ),
                                                  ),
                                                  ContainerLayout(
                                                    child: Assets
                                                        .icon.infoRegular
                                                        .svgIcon(
                                                      size: 20,
                                                      colorFilter:
                                                          ColorFilter.mode(
                                                              context
                                                                  .theme
                                                                  .color
                                                                  .iconNegative,
                                                              BlendMode.srcIn),
                                                    ),
                                                  ),
                                                  ContainerLayout(
                                                    width: 24,
                                                    height: 24,
                                                    decoration: BoxDecoration(
                                                        color: context.theme
                                                            .color.bgSurface2,
                                                        border: Border.all(
                                                            color: context.theme
                                                                .color.border,
                                                            width: 0.5),
                                                        borderRadius:
                                                            BorderRadius
                                                                .circular(999)),
                                                    child: Center(
                                                      child: AppText('1',
                                                          style: TextStyle(
                                                              color: context
                                                                  .theme
                                                                  .color
                                                                  .textPrimary,
                                                              fontSize: 14,
                                                              fontWeight:
                                                                  FontWeight
                                                                      .w500)),
                                                    ),
                                                  ),
                                                ]),
                                                RowLayout(gap: 8, children: [
                                                  AppText('FC-7',
                                                      style: TextStyle(
                                                          color: context
                                                              .theme
                                                              .color
                                                              .textSecondary,
                                                          fontSize: 14,
                                                          fontWeight:
                                                              FontWeight.w400)),
                                                  AppCircleAvatar(
                                                    style: WidgetStyle.filled,
                                                    size: WidgetSize.sm,
                                                    title: 'P G',
                                                    statusDot: StatusDot(
                                                      color: context.theme.color
                                                          .bgPositive,
                                                    ),
                                                  )
                                                ])
                                              ])
                                        ]),
                                  ),
                                  ContainerLayout(
                                    padding: const EdgeInsets.symmetric(
                                        horizontal: 16, vertical: 16),
                                    decoration: BoxDecoration(
                                        color: context.theme.color.bgPopover,
                                        borderRadius:
                                            context.theme.borderRadius.md),
                                    child: ColumnLayout(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        gap: 12,
                                        children: [
                                          AppText(
                                              'Remove requests to ipfy service from frontend',
                                              style: TextStyle(
                                                  color: context
                                                      .theme.color.textPrimary,
                                                  fontSize: 14,
                                                  fontWeight: FontWeight.w400)),
                                          Row(
                                              mainAxisAlignment:
                                                  MainAxisAlignment
                                                      .spaceBetween,
                                              children: [
                                                RowLayout(gap: 8, children: [
                                                  ContainerLayout(
                                                    child: Assets
                                                        .icon.infoRegular
                                                        .svgIcon(
                                                      size: 20,
                                                      colorFilter:
                                                          ColorFilter.mode(
                                                              context
                                                                  .theme
                                                                  .color
                                                                  .iconPositive,
                                                              BlendMode.srcIn),
                                                    ),
                                                  ),
                                                  ContainerLayout(
                                                    child: Assets
                                                        .icon.infoRegular
                                                        .svgIcon(
                                                      size: 20,
                                                      colorFilter:
                                                          ColorFilter.mode(
                                                              context
                                                                  .theme
                                                                  .color
                                                                  .iconNegative,
                                                              BlendMode.srcIn),
                                                    ),
                                                  ),
                                                  ContainerLayout(
                                                    width: 24,
                                                    height: 24,
                                                    decoration: BoxDecoration(
                                                        color: context.theme
                                                            .color.bgSurface2,
                                                        border: Border.all(
                                                            color: context.theme
                                                                .color.border,
                                                            width: 0.5),
                                                        borderRadius:
                                                            BorderRadius
                                                                .circular(999)),
                                                    child: Center(
                                                      child: AppText('2',
                                                          style: TextStyle(
                                                              color: context
                                                                  .theme
                                                                  .color
                                                                  .textPrimary,
                                                              fontSize: 14,
                                                              fontWeight:
                                                                  FontWeight
                                                                      .w500)),
                                                    ),
                                                  ),
                                                ]),
                                                RowLayout(gap: 8, children: [
                                                  AppText('FC-7',
                                                      style: TextStyle(
                                                          color: context
                                                              .theme
                                                              .color
                                                              .textSecondary,
                                                          fontSize: 14,
                                                          fontWeight:
                                                              FontWeight.w400)),
                                                  AppCircleAvatar(
                                                    style: WidgetStyle.filled,
                                                    size: WidgetSize.sm,
                                                    title: 'P G',
                                                    statusDot: StatusDot(
                                                      color: context.theme.color
                                                          .bgPositive,
                                                    ),
                                                  )
                                                ])
                                              ])
                                        ]),
                                  ),
                                ]),
                          ),
                        ]),
                  ],
                ),
              ))
            ],
          ),
        ],
      ),
    );
  }
}
