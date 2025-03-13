import 'package:widgetbook_app/widgetbook.dart';

class OverviewDateInputWidgetCase extends WidgetbookScrollableUseCase {
  OverviewDateInputWidgetCase({super.name = 'Overview'})
      : super(
          builder: (context) => SectionH1Widgetbook(
            title: 'Date Input',
            children: [
              AppDateInput(
                label: 'Select a date',
                helperText: 'Hint is a helpful description',
              ),
              AppDateInput(
                size: WidgetSize.sm,
                label: 'Select a date',
                feedbackState: FeedbackState.negative,
                statusText: 'Error message',
                helperText: 'Hint is a helpful description',
              ),
              AppDateInput(
                label: 'Select a date',
                feedbackState: FeedbackState.warning,
                statusText: 'Warning message',
                helperText: 'Hint is a helpful description',
              ),
              AppDateInput(
                size: WidgetSize.lg,
                label: 'Select a date',
                feedbackState: FeedbackState.positive,
                statusText: 'Success message',
                helperText: 'Hint is a helpful description',
              ),
              AppDateInput(
                style: AppTextFieldStyle.shaded,
                label: 'Select a date',
                helperText: 'Hint is a helpful description',
              ),
              AppDateInput(
                size: WidgetSize.sm,
                style: AppTextFieldStyle.shaded,
                label: 'Select a date',
                feedbackState: FeedbackState.negative,
                statusText: 'Error message',
                helperText: 'Hint is a helpful description',
              ),
              AppDateInput(
                style: AppTextFieldStyle.shaded,
                label: 'Select a date',
                feedbackState: FeedbackState.warning,
                statusText: 'Warning message',
                helperText: 'Hint is a helpful description',
              ),
              AppDateInput(
                size: WidgetSize.lg,
                style: AppTextFieldStyle.shaded,
                label: 'Select a date',
                feedbackState: FeedbackState.positive,
                statusText: 'Success message',
                helperText: 'Hint is a helpful description',
              ),
            ],
          ),
        );
}
