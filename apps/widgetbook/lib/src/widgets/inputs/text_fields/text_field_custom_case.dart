// ignore_for_file: prefer_const_constructors

import 'package:widgetbook_app/widgetbook.dart';

class CustomTextFieldWidgetCase extends WidgetbookScrollableUseCase {
  CustomTextFieldWidgetCase({super.name = 'Custom'})
      : super(
          builder: (context) => SectionH1Widgetbook(
            title: 'Custom',
            children: [
              SectionH2Widgetbook(
                title: 'Outline',
                children: [
                  AppTextField(
                    size: WidgetSize.sm,
                  ),
                  AppTextField(
                    size: WidgetSize.md,
                    placeholderText:
                        TextFieldComponentBook.createPlaceholderTextOption(
                            context),
                  ),
                  AppTextField(
                    size: WidgetSize.lg,
                    placeholderText:
                        TextFieldComponentBook.createPlaceholderTextOption(
                            context),
                  ),
                  AppTextField(
                    size: WidgetSize.sm,
                    style: AppTextFieldStyle.outline,
                    startIcon: Assets.icon.circle.keyName,
                    endIcon: Assets.icon.circle.keyName,
                    prefixText: 'Prefix',
                    endTextButton: 'End Button',
                    onButtonPress: () => {Log.i('Tap')},
                    label:
                        TextFieldComponentBook.createLabelTextOption(context),
                    placeholderText:
                        TextFieldComponentBook.createPlaceholderTextOption(
                            context),
                    helperText:
                        TextFieldComponentBook.createHelperTextOption(context),
                  ),
                  AppTextField(
                    size: WidgetSize.md,
                    style: AppTextFieldStyle.outline,
                    startIcon: Assets.icon.circle.keyName,
                    endIcon: Assets.icon.circle.keyName,
                    prefixText: 'Prefix',
                    endTextButton: 'End Button',
                    onButtonPress: () => {Log.i('Tap')},
                    label:
                        TextFieldComponentBook.createLabelTextOption(context),
                    placeholderText:
                        TextFieldComponentBook.createPlaceholderTextOption(
                            context),
                    helperText:
                        TextFieldComponentBook.createHelperTextOption(context),
                  ),
                  AppTextField(
                    size: WidgetSize.lg,
                    style: AppTextFieldStyle.outline,
                    prefixText: 'Prefix',
                    startIcon: Assets.icon.circle.keyName,
                    endIcon: Assets.icon.circle.keyName,
                    endTextButton: 'End Button',
                    onButtonPress: () => {Log.i('Tap')},
                    label:
                        TextFieldComponentBook.createLabelTextOption(context),
                    placeholderText:
                        TextFieldComponentBook.createPlaceholderTextOption(
                            context),
                    helperText:
                        TextFieldComponentBook.createHelperTextOption(context),
                  ),
                  AppTextField(
                    size: WidgetSize.lg,
                    style: AppTextFieldStyle.outline,
                    prefixText: 'Prefix',
                    startIcon: Assets.icon.circle.keyName,
                    endIcon: Assets.icon.circle.keyName,
                    endTextButton: 'End Button',
                    onButtonPress: () => {Log.i('Tap')},
                    loading: true,
                    label:
                        TextFieldComponentBook.createLabelTextOption(context),
                    placeholderText:
                        TextFieldComponentBook.createPlaceholderTextOption(
                            context),
                    helperText:
                        TextFieldComponentBook.createHelperTextOption(context),
                  ),
                  AppTextField(
                    size: WidgetSize.lg,
                    style: AppTextFieldStyle.outline,
                    startIcon: Assets.icon.circle.keyName,
                    prefixText: 'Prefix',
                    endIcon: Assets.icon.circle.keyName,
                    endTextButton: 'End Button',
                    onButtonPress: () => {Log.i('Tap')},
                    disabled: true,
                    label:
                        TextFieldComponentBook.createLabelTextOption(context),
                    placeholderText:
                        TextFieldComponentBook.createPlaceholderTextOption(
                            context),
                    helperText:
                        TextFieldComponentBook.createHelperTextOption(context),
                  ),
                  AppTextField(
                    size: WidgetSize.lg,
                    style: AppTextFieldStyle.outline,
                    prefixText: 'Prefix',
                    startIcon: Assets.icon.circle.keyName,
                    endIcon: Assets.icon.circle.keyName,
                    endTextButton: 'End Button',
                    onButtonPress: () => {Log.i('Tap')},
                    feedbackState: FeedbackState.positive,
                    label:
                        TextFieldComponentBook.createLabelTextOption(context),
                    placeholderText:
                        TextFieldComponentBook.createPlaceholderTextOption(
                            context),
                    helperText:
                        TextFieldComponentBook.createHelperTextOption(context),
                    statusText: 'Success',
                  ),
                  AppTextField(
                    size: WidgetSize.lg,
                    style: AppTextFieldStyle.outline,
                    prefixText: 'Prefix',
                    startIcon: Assets.icon.circle.keyName,
                    endIcon: Assets.icon.circle.keyName,
                    endTextButton: 'End Button',
                    onButtonPress: () => {Log.i('Tap')},
                    feedbackState: FeedbackState.warning,
                    label:
                        TextFieldComponentBook.createLabelTextOption(context),
                    placeholderText:
                        TextFieldComponentBook.createPlaceholderTextOption(
                            context),
                    helperText:
                        TextFieldComponentBook.createHelperTextOption(context),
                    statusText: 'Warning',
                  ),
                  AppTextField(
                    size: WidgetSize.lg,
                    style: AppTextFieldStyle.outline,
                    prefixText: 'Prefix',
                    startIcon: Assets.icon.circle.keyName,
                    endIcon: Assets.icon.circle.keyName,
                    endTextButton: 'End Button',
                    onButtonPress: () => {Log.i('Tap')},
                    feedbackState: FeedbackState.negative,
                    label:
                        TextFieldComponentBook.createLabelTextOption(context),
                    placeholderText:
                        TextFieldComponentBook.createPlaceholderTextOption(
                            context),
                    helperText:
                        TextFieldComponentBook.createHelperTextOption(context),
                    statusText: 'Error',
                  ),
                ],
              ),
              SectionH2Widgetbook(
                title: 'Shaded',
                children: [
                  AppTextField(
                    size: WidgetSize.sm,
                    style: AppTextFieldStyle.shaded,
                    prefixText: 'Prefix',
                    startIcon: Assets.icon.circle.keyName,
                    endIcon: Assets.icon.circle.keyName,
                    endTextButton: 'End Button',
                    onButtonPress: () => {Log.i('Tap')},
                    label:
                        TextFieldComponentBook.createLabelTextOption(context),
                    placeholderText:
                        TextFieldComponentBook.createPlaceholderTextOption(
                            context),
                    helperText:
                        TextFieldComponentBook.createHelperTextOption(context),
                  ),
                  AppTextField(
                    size: WidgetSize.md,
                    style: AppTextFieldStyle.shaded,
                    prefixText: 'Prefix',
                    startIcon: Assets.icon.circle.keyName,
                    endIcon: Assets.icon.circle.keyName,
                    endTextButton: 'End Button',
                    onButtonPress: () => {Log.i('Tap')},
                    label:
                        TextFieldComponentBook.createLabelTextOption(context),
                    placeholderText:
                        TextFieldComponentBook.createPlaceholderTextOption(
                            context),
                    helperText:
                        TextFieldComponentBook.createHelperTextOption(context),
                  ),
                  AppTextField(
                    size: WidgetSize.lg,
                    style: AppTextFieldStyle.shaded,
                    prefixText: 'Prefix',
                    startIcon: Assets.icon.circle.keyName,
                    endIcon: Assets.icon.circle.keyName,
                    endTextButton: 'End Button',
                    onButtonPress: () => {Log.i('Tap')},
                    label:
                        TextFieldComponentBook.createLabelTextOption(context),
                    placeholderText:
                        TextFieldComponentBook.createPlaceholderTextOption(
                            context),
                    helperText:
                        TextFieldComponentBook.createHelperTextOption(context),
                  ),
                  AppTextField(
                    size: WidgetSize.lg,
                    style: AppTextFieldStyle.shaded,
                    prefixText: 'Prefix',
                    startIcon: Assets.icon.circle.keyName,
                    endIcon: Assets.icon.circle.keyName,
                    endTextButton: 'End Button',
                    onButtonPress: () => {Log.i('Tap')},
                    loading: true,
                    label:
                        TextFieldComponentBook.createLabelTextOption(context),
                    placeholderText:
                        TextFieldComponentBook.createPlaceholderTextOption(
                            context),
                    helperText:
                        TextFieldComponentBook.createHelperTextOption(context),
                  ),
                  AppTextField(
                    size: WidgetSize.lg,
                    style: AppTextFieldStyle.shaded,
                    prefixText: 'Prefix',
                    startIcon: Assets.icon.circle.keyName,
                    endIcon: Assets.icon.circle.keyName,
                    feedbackState: FeedbackState.positive,
                    endTextButton: 'End Button',
                    onButtonPress: () => {Log.i('Tap')},
                    label:
                        TextFieldComponentBook.createLabelTextOption(context),
                    placeholderText:
                        TextFieldComponentBook.createPlaceholderTextOption(
                            context),
                    helperText:
                        TextFieldComponentBook.createHelperTextOption(context),
                    statusText: 'Success',
                  ),
                  AppTextField(
                    size: WidgetSize.lg,
                    style: AppTextFieldStyle.shaded,
                    prefixText: 'Prefix',
                    startIcon: Assets.icon.circle.keyName,
                    endIcon: Assets.icon.circle.keyName,
                    endTextButton: 'End Button',
                    onButtonPress: () => {Log.i('Tap')},
                    feedbackState: FeedbackState.warning,
                    label:
                        TextFieldComponentBook.createLabelTextOption(context),
                    placeholderText:
                        TextFieldComponentBook.createPlaceholderTextOption(
                            context),
                    helperText:
                        TextFieldComponentBook.createHelperTextOption(context),
                    statusText: 'Warning',
                  ),
                  AppTextField(
                    size: WidgetSize.lg,
                    style: AppTextFieldStyle.shaded,
                    prefixText: 'Prefix',
                    startIcon: Assets.icon.circle.keyName,
                    endIcon: Assets.icon.circle.keyName,
                    endTextButton: 'End Button',
                    onButtonPress: () => {Log.i('Tap')},
                    feedbackState: FeedbackState.negative,
                    label:
                        TextFieldComponentBook.createLabelTextOption(context),
                    placeholderText:
                        TextFieldComponentBook.createPlaceholderTextOption(
                            context),
                    helperText:
                        TextFieldComponentBook.createHelperTextOption(context),
                    statusText: 'Error',
                  ),
                ],
              ),
            ],
          ),
        );
}
