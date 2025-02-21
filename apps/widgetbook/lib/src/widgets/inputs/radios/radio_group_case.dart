import 'package:widgetbook_app/widgetbook.dart';

class GroupRadioWidgetCase extends WidgetbookScrollableUseCase {
  GroupRadioWidgetCase({super.name = 'Group'})
      : super(
          builder: (context) => SectionH1Widgetbook(
            title: 'Radio Group',
            children: [
              AppRadioGroup(
                size: WidgetSize.sm,
                label: 'Group label',
                hintText: 'Group hint is a helpful description',
                options: ['Option 1', 'Option 2', 'Option 3'],
              ),
              AppRadioGroup(
                label: 'Group label',
                hintText: 'Group hint is a helpful description',
                options: ['Option 1', 'Option 2', 'Option 3'],
              ),
              AppRadioGroup(
                size: WidgetSize.lg,
                label: 'Group label',
                hintText: 'Group hint is a helpful description',
                options: ['Option 1', 'Option 2', 'Option 3'],
              ),
            ],
          ),
        );
}
