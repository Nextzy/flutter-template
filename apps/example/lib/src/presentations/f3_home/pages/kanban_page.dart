import 'package:example_app/application.dart';

@RoutePage()
class KanbanPage extends AppPage {
  const KanbanPage({super.key});

  @override
  State<KanbanPage> createState() => _KanbanPageState();
}

class Task {
  Task({required this.id, required this.title});

  final String id;
  final String title;
}

class DragData {
  DragData({required this.task, required this.column});

  final Task task;
  final String column;
}

class _KanbanPageState extends AppPageState<KanbanPage> {
  final List<Task> todoTasks = [
    Task(
        id: '1',
        title:
            'As a translator, I want integrate Crowdin webhook to notify translators about changed strings'),
    Task(
        id: '2',
        title:
            'As a user, I want to see actual overusage price for next download'),
    Task(
        id: '3',
        title: 'As a team license owner, I want to use multiplied limits'),
    Task(
        id: '4',
        title: 'As a team license owner, I want to use multiplied limits'),
    Task(id: '5', title: 'Interate nuxt-18n in product-developers project'),
  ];
  final List<Task> inProgressTasks = [
    Task(
        id: '6',
        title:
            'As an external contributor, I want to be able to see status of uploaded materials'),
    Task(id: '7', title: 'Replace JustComments with something'),
    Task(id: '8', title: 'As manual licensed User, I want to see my limits'),
    Task(id: '9', title: 'Create a storage to store common translations'),
    Task(
        id: '10',
        title:
            'CLONE – As an external contributor, I want to be able to upload a zip of my original materials'),
  ];
  final List<Task> doneTasks = [
    Task(
        id: '11',
        title:
            'As a user, I want to access Intercom help center, so that I am not confused by Crisp'),
    Task(id: '12', title: 'Remove requests to ipfy service from frontend'),
  ];

  late Map<String, List<Task>> columns;

  @override
  void initState() {
    super.initState();
    columns = {
      'TO DO': todoTasks,
      'IN PROGRESS': inProgressTasks,
      'DONE': doneTasks,
    };
  }

  @override
  Widget build(BuildContext context) {
    return AppScaffold(
      body: ColumnLayout(
        backgroundColor: context.theme.color.bg,
        children: [
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
                  child: Assets.icon.squaresFourRegular.svgIcon(
                    size: 24,
                    colorFilter: ColorFilter.mode(
                        context.theme.color.iconPrimary, BlendMode.srcIn),
                  ),
                ),
                ContainerLayout(
                  child: Assets.icon.fireRegular.svgIcon(
                    size: 24,
                    colorFilter: ColorFilter.mode(
                        context.theme.color.iconNegative, BlendMode.srcIn),
                  ),
                ),
                if (ResponsiveBreakpoints.of(context).largerThan(TABLET))
                  RowLayout(gap: 12, children: [
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
                  ])
              ]),
              RowLayout(gap: 12, children: [
                if (ResponsiveBreakpoints.of(context).largerThan(TABLET))
                  ContainerLayout(
                    width: 276,
                    child: AppTextField(
                      style: AppTextFieldStyle.outline,
                      startIcon: Assets.icon.magnifyingGlassRegular.keyName,
                      placeholderText: 'Search projects',
                    ),
                  ),
                ContainerLayout(
                  child: Assets.icon.bellRegular.svgIcon(
                    size: 24,
                    colorFilter: ColorFilter.mode(
                        context.theme.color.iconPrimary, BlendMode.srcIn),
                  ),
                ),
                ContainerLayout(
                  child: Assets.icon.questionRegular.svgIcon(
                    size: 24,
                    colorFilter: ColorFilter.mode(
                        context.theme.color.iconPrimary, BlendMode.srcIn),
                  ),
                ),
                ContainerLayout(
                  child: Assets.icon.gearSixRegular.svgIcon(
                    size: 24,
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
          Expanded(
            child: RowLayout(
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
                              child: Assets.icon.atFilled.svgIcon(
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
                        Expanded(
                          child: SingleChildScrollView(
                            child: ColumnLayout(children: [
                              AppSidebarSection(
                                icon: Assets.icon.newspaperRegular.keyName,
                                title: 'Backlog',
                              ),
                              AppSidebarSection(
                                  icon: Assets.icon.columnsRegular.keyName,
                                  title: 'Active sprints',
                                  active: true),
                              AppSidebarSection(
                                icon: Assets.icon.trendUpRegular.keyName,
                                title: 'Reports',
                              ),
                              AppDivider(),
                              AppSidebarSection(
                                icon: Assets.icon.stackRegular.keyName,
                                title: 'Issues',
                              ),
                              AppSidebarSection(
                                  icon: Assets.icon.puzzlePieceRegular.keyName,
                                  title: 'Components'),
                              AppSidebarSection(
                                icon: Assets.icon.codeRegular.keyName,
                                title: 'Code',
                              ),
                              AppSidebarSection(
                                icon: Assets.icon.calendarCheckRegular.keyName,
                                title: 'Releases',
                              ),
                              AppSidebarSection(
                                icon: Assets.icon.filesRegular.keyName,
                                title: 'Project pages',
                              ),
                            ]),
                          ),
                        )
                      ],
                    ),
                  ),
                Expanded(
                    child: SingleChildScrollView(
                  padding: ResponsiveBreakpoints.of(context).largerThan(TABLET)
                      ? const EdgeInsets.symmetric(horizontal: 32, vertical: 24)
                      : const EdgeInsets.symmetric(
                          horizontal: 16, vertical: 16),
                  child: ColumnLayout(
                    gap: 16,
                    children: [
                      AppBreadcrumbs(children: [
                        AppBreadcrumbSection(label: 'Projects'),
                        AppBreadcrumbSection(label: 'International'),
                        AppBreadcrumbSection(label: 'Product Web')
                      ]),
                      if (ResponsiveBreakpoints.of(context).largerThan(TABLET))
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
                                child: Assets.icon.starRegular.svgIcon(
                                  size: 20,
                                  colorFilter: ColorFilter.mode(
                                      context.theme.color.iconPrimary,
                                      BlendMode.srcIn),
                                ),
                              ),
                              AppButton(text: 'Complete sprint'),
                              ContainerLayout(
                                child: Assets.icon.shareNetworkRegular.svgIcon(
                                  size: 20,
                                  colorFilter: ColorFilter.mode(
                                      context.theme.color.iconPrimary,
                                      BlendMode.srcIn),
                                ),
                              ),
                              AppIconButton(
                                  icon: Assets.icon.dotsThreeRegular.keyName,
                                  style: AppButtonStyle.outline)
                            ])
                          ],
                        ),
                      if (ResponsiveBreakpoints.of(context).largerThan(TABLET))
                        RowLayout(gap: 16, children: [
                          ContainerLayout(
                            width: 280,
                            child: AppTextField(
                              style: AppTextFieldStyle.outline,
                              startIcon:
                                  Assets.icon.magnifyingGlassRegular.keyName,
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
                                text: 'Only my issues',
                                style: AppButtonStyle.text),
                            AppButton(
                                text: 'Recently updated',
                                style: AppButtonStyle.text),
                          ])
                        ]),
                      Row(
                        children: [
                          Expanded(
                              child: SingleChildScrollView(
                            scrollDirection: Axis.horizontal,
                            child: RowLayout(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                gap: 8,
                                children: [
                                  for (final column in columns.entries)
                                    KanbanColumn(
                                      title: column.key,
                                      tasks: column.value,
                                      onDrag: (Task task) {
                                        return DragData(
                                            task: task, column: column.key);
                                      },
                                      onAccept:
                                          (Task task, String sourceColumn) {
                                        if (sourceColumn == column.key) {
                                          return;
                                        }
                                        setState(() {
                                          columns[sourceColumn]!.removeWhere(
                                              (item) => item.id == task.id);
                                          columns[column.key]!.add(task);
                                        });
                                      },
                                    ),
                                ]),
                          ))
                        ],
                      ),
                    ],
                  ),
                ))
              ],
            ),
          )
        ],
      ),
    );
  }
}

class KanbanColumn extends AppStatelessWidget {
  const KanbanColumn(
      {super.key,
      required this.title,
      required this.tasks,
      required this.onDrag,
      required this.onAccept});

  final String title;
  final List<Task> tasks;
  final Function(Task) onDrag;
  final Function(Task, String) onAccept;

  @override
  Widget build(BuildContext context) {
    return DragTarget(
      onAcceptWithDetails: (DragTargetDetails<DragData> details) {
        onAccept(details.data.task, details.data.column);
      },
      builder: (BuildContext context, candidateData, rejectedData) {
        return ContainerLayout(
            width: 374,
            minHeight: 800,
            padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 12),
            decoration: BoxDecoration(
                color: context.theme.color.bgSurface1,
                borderRadius: context.theme.borderRadius.md),
            child: ColumnLayout(
                crossAxisAlignment: CrossAxisAlignment.start,
                gap: 8,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 12),
                    child: AppText(title,
                        style: TextStyle(
                            color: context.theme.color.textSecondary,
                            fontSize: 14,
                            fontWeight: FontWeight.w600)),
                  ),
                  ListView.separated(
                      shrinkWrap: true,
                      itemCount: tasks.length,
                      itemBuilder: (BuildContext context, int index) {
                        final task = tasks[index];
                        return _buildTaskCard(task);
                      },
                      separatorBuilder: (BuildContext context, int index) {
                        return Gap(8);
                      })
                ]));
      },
    );
  }

  Widget _buildTaskCard(Task task) {
    return Draggable(
      key: Key(task.id),
      data: onDrag(task),
      feedback: Material(
        child: TaskCard(task: task),
      ),
      child: TaskCard(task: task),
    );
  }
}

class TaskCard extends AppStatelessWidget {
  const TaskCard({super.key, required this.task});

  final Task task;

  @override
  Widget build(BuildContext context) {
    return ContainerLayout(
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 16),
      decoration: BoxDecoration(
          color: context.theme.color.bgPopover,
          borderRadius: context.theme.borderRadius.md),
      child: ColumnLayout(
          crossAxisAlignment: CrossAxisAlignment.start,
          gap: 12,
          children: [
            AppText(task.title,
                style: TextStyle(
                    color: context.theme.color.textPrimary,
                    fontSize: 14,
                    fontWeight: FontWeight.w400)),
            Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
              RowLayout(gap: 8, children: [
                ContainerLayout(
                  child: Assets.icon.bookmarkSimpleFilled.svgIcon(
                    size: 24,
                    colorFilter: ColorFilter.mode(
                        context.theme.color.iconPositive, BlendMode.srcIn),
                  ),
                ),
                ContainerLayout(
                  child: Assets.icon.caretDoubleUpRegular.svgIcon(
                    size: 24,
                    colorFilter: ColorFilter.mode(
                        context.theme.color.iconNegative, BlendMode.srcIn),
                  ),
                ),
                ContainerLayout(
                  width: 24,
                  height: 24,
                  decoration: BoxDecoration(
                      color: context.theme.color.bgSurface2,
                      border: Border.all(
                          color: context.theme.color.border, width: 0.5),
                      borderRadius: BorderRadius.circular(999)),
                  child: Center(
                    child: AppText('2',
                        style: TextStyle(
                            color: context.theme.color.textPrimary,
                            fontSize: 14,
                            fontWeight: FontWeight.w500)),
                  ),
                ),
              ]),
              RowLayout(gap: 8, children: [
                AppText('FC-7',
                    style: TextStyle(
                        color: context.theme.color.textSecondary,
                        fontSize: 14,
                        fontWeight: FontWeight.w400)),
                AppCircleAvatar(
                  style: WidgetStyle.filled,
                  size: WidgetSize.sm,
                  title: 'P G',
                  statusDot: StatusDot(
                    color: context.theme.color.bgPositive,
                  ),
                )
              ])
            ])
          ]),
    );
  }
}
