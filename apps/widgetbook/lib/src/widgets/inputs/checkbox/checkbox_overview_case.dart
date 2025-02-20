import 'package:widgetbook_app/widgetbook.dart';

class OverviewCheckboxWidgetCase extends WidgetbookScrollableUseCase {
  OverviewCheckboxWidgetCase({super.name = 'Overview'})
      : super(
          builder: (context) => SectionH1Widgetbook(
            title: 'Checkbox',
            children: [
              AppCheckbox(
                size: WidgetSize.sm,
                label: 'Checkbox text',
                helperText:
                    'Helpful description of the option which may briefly highlight side effects or conditions of the option.',
              ),
              AppCheckbox(
                label: 'Checkbox text',
                defaultValue: false,
                helperText:
                    'Helpful description of the option which may briefly highlight side effects or conditions of the option.',
              ),
              AppCheckbox(
                size: WidgetSize.lg,
                label: 'Checkbox text',
                feedbackState: FeedbackState.negative,
                statusText: 'Error message',
                helperText:
                    'Helpful description of the option which may briefly highlight side effects or conditions of the option.',
              ),
              AppCheckbox(
                label: 'Checkbox text',
                helperText:
                    'Helpful description of the option which may briefly highlight side effects or conditions of the option.',
                disabled: true,
              ),
              AppCheckbox(
                size: WidgetSize.sm,
                style: AppTextFieldStyle.shaded,
                position: AppCheckboxPosition.right,
                label: 'Checkbox text',
                helperText:
                    'Helpful description of the option which may briefly highlight side effects or conditions of the option.',
              ),
              AppCheckbox(
                style: AppTextFieldStyle.shaded,
                position: AppCheckboxPosition.right,
                label: 'Checkbox text',
                feedbackState: FeedbackState.negative,
                statusText: 'Error message',
                helperText:
                    'Helpful description of the option which may briefly highlight side effects or conditions of the option.',
              ),
              AppCheckbox(
                size: WidgetSize.lg,
                style: AppTextFieldStyle.shaded,
                position: AppCheckboxPosition.right,
                label: 'Checkbox text',
                helperText:
                    'Helpful description of the option which may briefly highlight side effects or conditions of the option.',
                disabled: true,
              ),
            ],
          ),
        );
}
