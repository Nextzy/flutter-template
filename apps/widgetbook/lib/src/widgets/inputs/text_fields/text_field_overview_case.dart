// ignore_for_file: prefer_const_constructors

import 'package:widgetbook_app/widgetbook.dart';

class OverviewTextFieldWidgetCase extends WidgetbookScrollableUseCase {
  OverviewTextFieldWidgetCase({super.name = 'Overview'})
      : super(
          builder: (context) => SectionH1Widgetbook(
            title: 'Overview',
            children: [
              AppTextField(
                // placeholderText:
                //     TextFieldComponentBook.createPlaceholderTextOption(context),
              ),
              AppTextField(
                size: WidgetSize.lg,
                placeholderText:
                    TextFieldComponentBook.createPlaceholderTextOption(context),
              ),
              AppTextField(
                startIcon: Assets.icon.circle.keyName,
                endIcon: Assets.icon.circle.keyName,
                label: TextFieldComponentBook.createLabelTextOption(context),
                placeholderText:
                    TextFieldComponentBook.createPlaceholderTextOption(context),
                helperText:
                    TextFieldComponentBook.createHelperTextOption(context),
              ),
              AppTextField(
                startIcon: Assets.icon.circle.keyName,
                endIcon: Assets.icon.circle.keyName,
                label: TextFieldComponentBook.createLabelTextOption(context),
                placeholderText:
                    TextFieldComponentBook.createPlaceholderTextOption(context),
                helperText:
                    TextFieldComponentBook.createHelperTextOption(context),
              ),
            ],
          ),
        );
}
