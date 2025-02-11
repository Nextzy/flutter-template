import 'package:widgetbook_app/widgetbook.dart';

class OverviewNumberInputWidgetCase extends WidgetbookScrollableUseCase {
  OverviewNumberInputWidgetCase({super.name = 'Overview'})
      : super(
          builder: (context) => SectionH1Widgetbook(
            title: 'Number Input',
            children: [
              AppNumberInput(),
              AppNumberInput(
                  size: WidgetSize.sm,
                  feedbackState: FeedbackState.negative,
                  statusText: 'Error message'),
              AppNumberInput(
                  feedbackState: FeedbackState.warning,
                  statusText: 'Warning message'),
              AppNumberInput(
                  size: WidgetSize.lg,
                  feedbackState: FeedbackState.positive,
                  statusText: 'Success message'),
              AppNumberInput(
                style: AppTextFieldStyle.shaded,
                label: 'Number input',
              ),
              AppNumberInput(
                  size: WidgetSize.sm,
                  style: AppTextFieldStyle.shaded,
                  feedbackState: FeedbackState.negative,
                  statusText: 'Error message'),
              AppNumberInput(
                  style: AppTextFieldStyle.shaded,
                  feedbackState: FeedbackState.warning,
                  statusText: 'Warning message'),
              AppNumberInput(
                size: WidgetSize.lg,
                style: AppTextFieldStyle.shaded,
                feedbackState: FeedbackState.positive,
                statusText: 'Success message',
              ),
            ],
          ),
        );
}
