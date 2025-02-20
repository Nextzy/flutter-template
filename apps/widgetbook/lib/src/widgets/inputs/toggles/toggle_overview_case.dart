import 'package:widgetbook_app/widgetbook.dart';

class OverviewToggleWidgetCase extends WidgetbookScrollableUseCase {
  OverviewToggleWidgetCase({super.name = 'Overview'})
      : super(
          builder: (context) => SectionH1Widgetbook(
            title: 'Toggle',
            children: [
              AppToggle(
                size: WidgetSize.sm,
                label: 'Toggle text',
                helperText:
                    'Helpful description of the option which may briefly highlight side effects or conditions of the option.',
              ),
              AppToggle(
                label: 'Toggle text',
                helperText:
                    'Helpful description of the option which may briefly highlight side effects or conditions of the option.',
              ),
              AppToggle(
                size: WidgetSize.lg,
                label: 'Toggle text',
                feedbackState: FeedbackState.negative,
                statusText: 'Error message',
                helperText:
                    'Helpful description of the option which may briefly highlight side effects or conditions of the option.',
              ),
              AppToggle(
                label: 'Toggle text',
                helperText:
                    'Helpful description of the option which may briefly highlight side effects or conditions of the option.',
                disabled: true,
              ),
              AppToggle(
                size: WidgetSize.sm,
                style: AppTextFieldStyle.shaded,
                position: AppTogglePosition.right,
                label: 'Toggle text',
                helperText:
                    'Helpful description of the option which may briefly highlight side effects or conditions of the option.',
              ),
              AppToggle(
                style: AppTextFieldStyle.shaded,
                position: AppTogglePosition.right,
                label: 'Toggle text',
                feedbackState: FeedbackState.negative,
                statusText: 'Error message',
                helperText:
                    'Helpful description of the option which may briefly highlight side effects or conditions of the option.',
              ),
              AppToggle(
                size: WidgetSize.lg,
                style: AppTextFieldStyle.shaded,
                position: AppTogglePosition.right,
                label: 'Toggle text',
                helperText:
                    'Helpful description of the option which may briefly highlight side effects or conditions of the option.',
                disabled: true,
              ),
            ],
          ),
        );
}
