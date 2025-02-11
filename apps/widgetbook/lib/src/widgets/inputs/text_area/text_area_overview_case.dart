import 'package:widgetbook_app/widgetbook.dart';

class OverviewTextAreaWidgetCase extends WidgetbookScrollableUseCase {
  OverviewTextAreaWidgetCase({super.name = 'Overview'})
      : super(
          builder: (context) => SectionH1Widgetbook(
            title: 'Text Area',
            children: [
              AppTextArea(
                label: 'Label',
                placeholderText: 'Input text',
              ),
              AppTextArea(
                style: AppTextFieldStyle.shaded,
                label: 'Label',
                placeholderText: 'Input text',
              ),
              AppTextArea(
                label: 'Label',
                placeholderText: 'Input text',
                disabled: true,
              ),
              AppTextArea(
                label: 'Label',
                placeholderText: 'Input text',
                feedbackState: FeedbackState.negative,
                statusText: 'Error message',
              ),
              AppTextArea(
                label: 'Label',
                placeholderText: 'Input text',
                feedbackState: FeedbackState.warning,
                statusText: 'Warning message',
              ),
              AppTextArea(
                label: 'Label',
                placeholderText: 'Input text',
                feedbackState: FeedbackState.positive,
                statusText: 'Success message',
              ),
            ],
          ),
        );
}
