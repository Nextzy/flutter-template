import 'package:widgetbook_app/widgetbook.dart';

class DropdownButtonCases {
  static List<WidgetbookUseCase> createCases() {
    return [
      WidgetbookUseCase(
        name: 'Dropdown Button',
        builder: (context) => ColumnLayout(
          crossAxisAlignment: CrossAxisAlignment.start,
          gap: 20,
          padding: Space.insetAll16,
          children: [
            // AppDropdownButton(
            //   size: WidgetSize.sm,
            //   text: ButtonComponents.createTextButtonOption(context),
            //   buttonStartIcon: ButtonComponents.createIconButtonOption(
            //       context, 'Start Icon'),
            //   enabled: ButtonComponents.createEnabledButtonOption(context),
            //   destructive:
            //       ButtonComponents.createDestructiveButtonOption(context),
            //   expanded: ButtonComponents.createExpandedButtonOption(context),
            //   items: [],
            // ),
            // AppDropdownButton(
            //   size: WidgetSize.lg,
            //   text: ButtonComponents.createTextButtonOption(context),
            //   buttonStartIcon: ButtonComponents.createIconButtonOption(
            //       context, 'Start Icon'),
            //   buttonEndIcon:
            //       ButtonComponents.createIconButtonOption(context, 'End Icon'),
            //   enabled: ButtonComponents.createEnabledButtonOption(context),
            //   destructive:
            //       ButtonComponents.createDestructiveButtonOption(context),
            //   expanded: ButtonComponents.createExpandedButtonOption(context),
            //   items: [
            //     AppDropdownListItem(
            //       id: '0',
            //       state: DropdownListItemState(
            //         startIcon: DropdownButtonComponentBook
            //             .createStartIconMenuItemOption(context),
            //         textTitle:
            //             DropdownButtonComponentBook.createTextTitleOption(
            //                 context),
            //         textSupport:
            //             DropdownButtonComponentBook.createTextSupportOption(
            //                 context),
            //         endIcon:
            //             DropdownButtonComponentBook.createEndIconMenuItemOption(
            //                 context),
            //       ),
            //     ),
            //     AppDropdownListItem(
            //       id: '1',
            //       state: DropdownListItemState(
            //         startIcon: DropdownButtonComponentBook
            //             .createStartIconMenuItemOption(context),
            //         textTitle:
            //             DropdownButtonComponentBook.createTextTitleOption(
            //                 context),
            //         textSupport:
            //             DropdownButtonComponentBook.createTextSupportOption(
            //                 context),
            //         endIcon:
            //             DropdownButtonComponentBook.createEndIconMenuItemOption(
            //                 context),
            //       ),
            //     ),
            //   ],
            // ),
          ],
        ),
      ),
      WidgetbookUseCase(
        name: 'Dropdown Icon Button',
        builder: (context) => ColumnLayout(
          crossAxisAlignment: CrossAxisAlignment.start,
          gap: 20,
          padding: Space.insetAll16,
          children: [
            // AppDropdownIconButton(
            //   size: WidgetSize.sm,
            //   iconButton: AppOutlineGrayIconButton(
            //     icon: Assets.icon.circle.keyName,
            //   ),
            //   enabled: ButtonComponents.createEnabledButtonOption(context),
            //   destructive:
            //       ButtonComponents.createDestructiveButtonOption(context),
            //   expanded: ButtonComponents.createExpandedButtonOption(context),
            //   items: [],
            // ),
            // Align(
            //   alignment: Alignment.centerRight,
            //   child: AppDropdownIconButton(
            //     size: WidgetSize.lg,
            //     iconButton: AppOutlineGrayIconButton(
            //       icon: Assets.icon.circle.keyName,
            //     ),
            //     enabled: ButtonComponents.createEnabledButtonOption(context),
            //     destructive:
            //         ButtonComponents.createDestructiveButtonOption(context),
            //     expanded: ButtonComponents.createExpandedButtonOption(context),
            //     items: [
            //       AppDropdownListItem(
            //         id: '0',
            //         state: DropdownListItemState(
            //           startIcon: DropdownButtonComponentBook
            //               .createStartIconMenuItemOption(context),
            //           textTitle:
            //               DropdownButtonComponentBook.createTextTitleOption(
            //                   context),
            //           textSupport:
            //               DropdownButtonComponentBook.createTextSupportOption(
            //                   context),
            //           endIcon: DropdownButtonComponentBook
            //               .createEndIconMenuItemOption(context),
            //         ),
            //       ),
            //       AppDropdownListItem(
            //         id: '1',
            //         state: DropdownListItemState(
            //           startIcon: DropdownButtonComponentBook
            //               .createStartIconMenuItemOption(context),
            //           textTitle:
            //               DropdownButtonComponentBook.createTextTitleOption(
            //                   context),
            //           textSupport:
            //               DropdownButtonComponentBook.createTextSupportOption(
            //                   context),
            //           endIcon: DropdownButtonComponentBook
            //               .createEndIconMenuItemOption(context),
            //         ),
            //       ),
            //     ],
            //   ),
            // ),
          ],
        ),
      ),
      WidgetbookUseCase(
        name: 'Menu Item',
        builder: (context) =>  ColumnLayout(
          crossAxisAlignment: CrossAxisAlignment.start,
          gap: 20,
          children: [
            AppDropdownMenu(
              state: DropdownMenuItemState(
                startIcon:
                    DropdownButtonComponentBook.createStartIconMenuItemOption(
                        context),
                textTitle:
                    DropdownButtonComponentBook.createTextTitleOption(context),
                textSupport:
                    DropdownButtonComponentBook.createTextSupportOption(
                        context),
                endIcon:
                    DropdownButtonComponentBook.createEndIconMenuItemOption(
                        context),
                divider: false,
              ),
              onPressed: () {},
            ),
          ],
        ),
      ),
      // WidgetbookUseCase(
      //   name: 'List Item',
      //   builder: (context) => ContainerLayout(
      //     crossAxisAlignment: CrossAxisAlignment.start,
      //     spacing: 20,
      //     children: [
      //       AppDropdownListItem(
      //         state: DropdownListItemState(
      //           startIcon:
      //               DropdownButtonBook.createStartIconMenuItemOption(context),
      //           textTitle: DropdownButtonBook.createTextTitleOption(context),
      //           textSupport:
      //               DropdownButtonBook.createTextSupportOption(context),
      //           endIcon:
      //               DropdownButtonBook.createEndIconMenuItemOption(context),
      //           divider: false,
      //         ),
      //         onPressed: () {},
      //       ),
      //     ],
      //   ),
      // ),
    ];
  }
}
