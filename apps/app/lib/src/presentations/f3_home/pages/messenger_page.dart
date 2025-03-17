import 'package:change_application_name/application.dart';

@RoutePage()
class MessengerPage extends AppPage {
  const MessengerPage({super.key});

  @override
  State<MessengerPage> createState() => _MessengerPageState();
}

class _MessengerPageState extends AppPageState<MessengerPage> {
  List<ChatMessage> messages = [
    ChatMessage(
        avatar: Assets.mock.avatarSquared2.keyName,
        name: 'Darius Washington',
        time: '09:12 AM',
        message:
            "No worries, Anders. I'll send you a summary right after our team meeting."),
    ChatMessage(
        avatar: Assets.mock.avatarSquared1.keyName,
        name: 'Jason Miller',
        time: '09:14 AM',
        message:
            'Speaking of which, we should discuss the timeline for the next release. I think we might need an extra week given all these updates.',
        reactions: ['👍 1']),
    ChatMessage(
        avatar: Assets.mock.avatarSquared2.keyName,
        name: 'Tamika Johnson',
        time: '09:16 AM',
        message:
            'I agree with Jason. Better to release a polished product than rush it.',
        reactions: ['🙏 1', '💪 2']),
    ChatMessage(
        name: 'Anders Lindström',
        time: '09:18 AM',
        message:
            'Speaking of which, we should discuss the timeline for the next release. I think we might need an extra week given all these updates.'),
    ChatMessage(
      avatar: Assets.mock.avatarSquared2.keyName,
      name: 'Darius Washington',
      time: '09:20 AM',
      message:
          'I had a chat with the marketing team yesterday. They want a short demo video showcasing the new features. Think you could handle that, Anders?',
    ),
    ChatMessage(
        name: 'Anders Lindström',
        time: '09:22 AM',
        message:
            "Of course! I'll collaborate with the design team on this. Should be ready by next Wednesday.",
        reactions: [
          '👍 1',
        ]),
    ChatMessage(
        avatar: Assets.mock.avatarSquared2.keyName,
        name: 'Tamika Johnson',
        time: '09:24 AM',
        message:
            "Sounds like a plan! Let's make this release the best one yet! 🚀",
        reactions: ['🔥 3', '🙌 1', '😎 2']),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: RowLayout(
        backgroundColor: context.theme.color.bg,
        children: [
          if (ResponsiveBreakpoints.of(context).largerThan(TABLET))
            ContainerLayout(
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
                    child: ColumnLayout(
                      gap: 8,
                      children: [
                        RowLayout(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          gap: 8,
                          children: [
                            AppCircleAvatar(
                              style: WidgetStyle.filled,
                              title: 'Fastlane Team',
                              color: context.theme.color.bgInverse,
                            ),
                            Expanded(
                                child: ColumnLayout(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                  AppText(
                                    'The Fastlane team The Fastlane team The Fastlane team',
                                    style: TextStyle(
                                      color: context.theme.color.textPrimary,
                                      fontSize: 14,
                                      fontWeight: FontWeight.w600,
                                    ),
                                    overflow: TextOverflow.ellipsis,
                                  ),
                                  AppText(
                                    'Premium plan',
                                    style: TextStyle(
                                      color: context.theme.color.textSecondary,
                                      fontSize: 12,
                                      fontWeight: FontWeight.w400,
                                    ),
                                    overflow: TextOverflow.ellipsis,
                                  )
                                ]))
                          ],
                        ),
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
                      ],
                    ),
                  ),
                  Expanded(
                      child: SingleChildScrollView(
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
                    ]),
                  )),
                  AppSidebarSection(
                    icon: Assets.icon.infoRegular.keyName,
                    title: 'Voice room',
                  ),
                ],
              ),
            ),
          Expanded(
            child: Column(
              children: [
                RowLayout(
                  height: 56,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  padding:
                      const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
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
                              context.theme.color.iconPrimary, BlendMode.srcIn),
                        ),
                      ),
                      AppText('General',
                          style: TextStyle(
                            color: context.theme.color.textPrimary,
                            fontSize: 18,
                            fontWeight: FontWeight.w600,
                          ))
                    ]),
                    if (ResponsiveBreakpoints.of(context).largerThan(TABLET))
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
                            child: ListView.separated(
                          itemCount: messages.length,
                          padding: const EdgeInsets.symmetric(
                            horizontal: 20,
                            vertical: 20,
                          ),
                          itemBuilder: (BuildContext context, int index) {
                            final item = messages[index];
                            return _buildMessageItem(
                                context,
                                item.avatar,
                                item.name,
                                item.time,
                                item.message,
                                item.reactions);
                          },
                          separatorBuilder: (BuildContext context, int index) {
                            return Gap(20);
                          },
                        )),
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
                  if (ResponsiveBreakpoints.of(context).largerThan(TABLET))
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
                        child: Expanded(
                            child: SingleChildScrollView(
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
                        )))
                ])
              ],
            ),
          )
        ],
      ),
    );
  }

  Widget _buildMessageItem(BuildContext context, String? avatar, String name,
      String time, String message, List<String>? reactions) {
    return RowLayout(
      crossAxisAlignment: CrossAxisAlignment.start,
      gap: 16,
      children: [
        AppSquareAvatar(
          style:
              avatar.isNotNullOrBlank ? WidgetStyle.subtle : WidgetStyle.filled,
          size: WidgetSize.lg,
          path: avatar,
          title: name,
          color: context.theme.color.bgBlue,
        ),
        Expanded(
            child: ColumnLayout(
          crossAxisAlignment: CrossAxisAlignment.start,
          gap: 4,
          children: [
            RowLayout(
              gap: 8,
              children: [
                AppText(
                  name,
                  style: TextStyle(
                    color: context.theme.color.textPrimary,
                    fontSize: 18,
                    fontWeight: FontWeight.w600,
                  ),
                ),
                AppText(
                  time,
                  style: TextStyle(
                    color: context.theme.color.textSecondary,
                    fontSize: 14,
                    fontWeight: FontWeight.w400,
                  ),
                ),
              ],
            ),
            AppText(
              message,
              style: TextStyle(
                color: context.theme.color.textPrimary,
                fontSize: 16,
                fontWeight: FontWeight.w400,
              ),
            ),
            if (reactions.isNotEmptyOrNull) Gap(8),
            if (reactions.isNotEmptyOrNull)
              RowLayout(
                gap: 6,
                children: [
                  for (final reaction in reactions!)
                    AppButton(
                      text: reaction,
                      width: 50,
                      size: WidgetSize.sm,
                      style: AppButtonStyle.shaded,
                    )
                ],
              )
          ],
        ))
      ],
    );
  }
}

class ChatMessage {
  final String? avatar;
  final String name;
  final String time;
  final String message;
  final List<String>? reactions;

  ChatMessage({
    this.avatar,
    required this.name,
    required this.time,
    required this.message,
    this.reactions,
  });
}
