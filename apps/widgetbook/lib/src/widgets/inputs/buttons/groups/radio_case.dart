import 'package:widgetbook_app/widgetbook.dart';

class ButtonGroupRadioCases {
  static List<WidgetbookUseCase> createCases() {
    const isRadio = true;
    const selectedIndex = 1;
    const enabledDeselect = false;
    const maxSelected = 2;

    return [
      WidgetbookUseCase(
        name: 'Radio',
        builder: (context) =>  ColumnLayout(
          gap: 20,
          padding: Space.insetAll16,
          children: [
            // AppGroupButton(
            //   isRadio: isRadio,
            //   selectedIndex: selectedIndex,
            //   enableDeselect: enabledDeselect,
            //   maxSelected: maxSelected,
            //   size: WidgetSize.sm,
            //   buttons: [
            //     AppGroupButtonItem(
            //       id: '1',
            //       title: ButtonComponents.createTextButtonOption(context),
            //       startIcon:
            //           ButtonComponents.createIconButtonOption(context, 'Start Icon'),
            //       endIcon:
            //           ButtonComponents.createIconButtonOption(context, 'End Icon'),
            //     ),
            //     AppGroupButtonItem(
            //       id: '2',
            //       title: ButtonComponents.createTextButtonOption(context),
            //       startIcon:
            //           ButtonComponents.createIconButtonOption(context, 'Start Icon'),
            //       endIcon:
            //           ButtonComponents.createIconButtonOption(context, 'End Icon'),
            //     ),
            //     AppGroupButtonItem(
            //       id: '3',
            //       title: ButtonComponents.createTextButtonOption(context),
            //       startIcon:
            //           ButtonComponents.createIconButtonOption(context, 'Start Icon'),
            //       endIcon:
            //           ButtonComponents.createIconButtonOption(context, 'End Icon'),
            //     ),
            //   ],
            //   enabled: ButtonComponents.createEnabledButtonOption(context),
            //   onSelected: (value, index, isSelected) {
            //     Log.i('Value: $value, Index: $index, Selected: $isSelected');
            //   },
            // ),
            // AppGroupButton(
            //   isRadio: isRadio,
            //   selectedIndex: selectedIndex,
            //   enableDeselect: enabledDeselect,
            //   maxSelected: maxSelected,
            //   size: WidgetSize.md,
            //   buttons: [
            //     AppGroupButtonItem(
            //       id: '1',
            //       title: ButtonComponents.createTextButtonOption(context),
            //       startIcon:
            //           ButtonComponents.createIconButtonOption(context, 'Start Icon'),
            //       endIcon:
            //           ButtonComponents.createIconButtonOption(context, 'End Icon'),
            //     ),
            //     AppGroupButtonItem(
            //       id: '2',
            //       title: ButtonComponents.createTextButtonOption(context),
            //       startIcon:
            //           ButtonComponents.createIconButtonOption(context, 'Start Icon'),
            //       endIcon:
            //           ButtonComponents.createIconButtonOption(context, 'End Icon'),
            //     ),
            //     AppGroupButtonItem(
            //       id: '3',
            //       title: ButtonComponents.createTextButtonOption(context),
            //       startIcon:
            //           ButtonComponents.createIconButtonOption(context, 'Start Icon'),
            //       endIcon:
            //           ButtonComponents.createIconButtonOption(context, 'End Icon'),
            //     ),
            //   ],
            //   enabled: ButtonComponents.createEnabledButtonOption(context),
            //   onSelected: (value, index, isSelected) {
            //     Log.i('Value: $value, Index: $index, Selected: $isSelected');
            //   },
            // ),
            // AppGroupButton(
            //   isRadio: isRadio,
            //   selectedIndex: selectedIndex,
            //   enableDeselect: enabledDeselect,
            //   maxSelected: maxSelected,
            //   size: WidgetSize.lg,
            //   buttons: [
            //     AppGroupButtonItem(
            //       id: '1',
            //       title: ButtonComponents.createTextButtonOption(context),
            //       startIcon:
            //           ButtonComponents.createIconButtonOption(context, 'Start Icon'),
            //       endIcon:
            //           ButtonComponents.createIconButtonOption(context, 'End Icon'),
            //     ),
            //     AppGroupButtonItem(
            //       id: '2',
            //       title: ButtonComponents.createTextButtonOption(context),
            //       startIcon:
            //           ButtonComponents.createIconButtonOption(context, 'Start Icon'),
            //       endIcon:
            //           ButtonComponents.createIconButtonOption(context, 'End Icon'),
            //     ),
            //     AppGroupButtonItem(
            //       id: '3',
            //       title: ButtonComponents.createTextButtonOption(context),
            //       startIcon:
            //           ButtonComponents.createIconButtonOption(context, 'Start Icon'),
            //       endIcon:
            //           ButtonComponents.createIconButtonOption(context, 'End Icon'),
            //     ),
            //   ],
            //   enabled: ButtonComponents.createEnabledButtonOption(context),
            //   onSelected: (value, index, isSelected) {
            //     Log.i('Value: $value, Index: $index, Selected: $isSelected');
            //   },
            // ),
            // AppGroupButton(
            //   isRadio: isRadio,
            //   selectedIndex: selectedIndex,
            //   enableDeselect: enabledDeselect,
            //   maxSelected: maxSelected,
            //   size: WidgetSize.xl,
            //   buttons: [
            //     AppGroupButtonItem(
            //       id: '1',
            //       title: ButtonComponents.createTextButtonOption(context),
            //       startIcon:
            //           ButtonComponents.createIconButtonOption(context, 'Start Icon'),
            //       endIcon:
            //           ButtonComponents.createIconButtonOption(context, 'End Icon'),
            //     ),
            //     AppGroupButtonItem(
            //       id: '2',
            //       title: ButtonComponents.createTextButtonOption(context),
            //       startIcon:
            //           ButtonComponents.createIconButtonOption(context, 'Start Icon'),
            //       endIcon:
            //           ButtonComponents.createIconButtonOption(context, 'End Icon'),
            //     ),
            //     AppGroupButtonItem(
            //       id: '3',
            //       title: ButtonComponents.createTextButtonOption(context),
            //       startIcon:
            //           ButtonComponents.createIconButtonOption(context, 'Start Icon'),
            //       endIcon:
            //           ButtonComponents.createIconButtonOption(context, 'End Icon'),
            //     ),
            //   ],
            //   enabled: ButtonComponents.createEnabledButtonOption(context),
            //   onSelected: (value, index, isSelected) {
            //     Log.i('Value: $value, Index: $index, Selected: $isSelected');
            //   },
            // ),
          ],
        ),
      ),
    ];
  }
}
