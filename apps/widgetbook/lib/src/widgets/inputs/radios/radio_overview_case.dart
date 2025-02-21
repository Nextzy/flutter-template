import 'package:widgetbook_app/widgetbook.dart';

class OverviewRadioWidgetCase extends WidgetbookScrollableUseCase {
  OverviewRadioWidgetCase({super.name = 'Overview'})
      : super(
          builder: (context) => SectionH1Widgetbook(
            title: 'Radio',
            children: [
              AppRadio(
                size: WidgetSize.sm,
                label: 'Radio text',
                value: true,
                defaultValue: false,
                helperText:
                    'Helpful description of the option which may briefly highlight side effects or conditions of the option.',
              ),
              AppRadio(
                label: 'Radio text',
                value: true,
                defaultValue: false,
                helperText:
                    'Helpful description of the option which may briefly highlight side effects or conditions of the option.',
              ),
              AppRadio(
                size: WidgetSize.lg,
                label: 'Radio text',
                value: true,
                defaultValue: false,
                feedbackState: FeedbackState.negative,
                statusText: 'Error message',
                helperText:
                    'Helpful description of the option which may briefly highlight side effects or conditions of the option.',
              ),
              AppRadio(
                label: 'Radio text',
                value: true,
                defaultValue: false,
                helperText:
                    'Helpful description of the option which may briefly highlight side effects or conditions of the option.',
                disabled: true,
              ),
              AppRadio(
                size: WidgetSize.sm,
                style: AppTextFieldStyle.shaded,
                position: AppRadioPosition.right,
                label: 'Radio text',
                value: true,
                defaultValue: false,
                helperText:
                    'Helpful description of the option which may briefly highlight side effects or conditions of the option.',
              ),
              AppRadio(
                style: AppTextFieldStyle.shaded,
                position: AppRadioPosition.right,
                label: 'Radio text',
                value: true,
                defaultValue: false,
                feedbackState: FeedbackState.negative,
                statusText: 'Error message',
                helperText:
                    'Helpful description of the option which may briefly highlight side effects or conditions of the option.',
              ),
              AppRadio(
                size: WidgetSize.lg,
                style: AppTextFieldStyle.shaded,
                position: AppRadioPosition.right,
                label: 'Radio text',
                value: true,
                defaultValue: false,
                feedbackState: FeedbackState.negative,
                statusText: 'Error message',
                helperText:
                    'Helpful description of the option which may briefly highlight side effects or conditions of the option.',
                disabled: true,
              ),
            ],
          ),
        );
}
