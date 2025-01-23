import 'package:widgetbook_app/widgetbook.dart';

class OverviewTimeInputWidgetCase extends WidgetbookScrollableUseCase {
  OverviewTimeInputWidgetCase({super.name = 'Overview'})
      : super(
          builder: (context) => SectionH1Widgetbook(
            title: 'Time Input',
            children: [
              AppTimeInput(),
              AppTimeInput(
                  size: WidgetSize.sm,
                  feedbackState: FeedbackState.negative,
                  statusText: 'Error message'),
              AppTimeInput(
                  feedbackState: FeedbackState.warning,
                  statusText: 'Warning message'),
              AppTimeInput(
                  size: WidgetSize.lg,
                  feedbackState: FeedbackState.positive,
                  statusText: 'Success message'),
              AppTimeInput(
                style: AppTextFieldStyle.shaded,
                label: 'Time input',
              ),
              AppTimeInput(
                  size: WidgetSize.sm,
                  style: AppTextFieldStyle.shaded,
                  feedbackState: FeedbackState.negative,
                  statusText: 'Error message'),
              AppTimeInput(
                  style: AppTextFieldStyle.shaded,
                  feedbackState: FeedbackState.warning,
                  statusText: 'Warning message'),
              AppTimeInput(
                size: WidgetSize.lg,
                style: AppTextFieldStyle.shaded,
                feedbackState: FeedbackState.positive,
                statusText: 'Success message',
              ),
            ],
          ),
        );
}
