import 'package:widgetbook_app/widgetbook.dart';

class OverviewComboBoxWidgetCase extends WidgetbookScrollableUseCase {
  OverviewComboBoxWidgetCase({super.name = 'Overview'})
      : super(
          builder: (context) => SectionH1Widgetbook(
            title: 'ComboBox',
            children: [
              AppComboBox(
                items: ['Item 1', 'Item 2', 'Item 3'],
              ),
              AppComboBox(
                size: WidgetSize.sm,
                items: ['Item 1', 'Item 2', 'Item 3'],
                feedbackState: FeedbackState.negative,
                statusText: 'Error message',
              ),
              AppComboBox(
                items: [
                  'Item 1',
                  'Item 2',
                  'Item 3',
                ],
                feedbackState: FeedbackState.warning,
                statusText: 'Warning message',
              ),
              AppComboBox(
                size: WidgetSize.lg,
                items: ['Item 1', 'Item 2', 'Item 3'],
                feedbackState: FeedbackState.positive,
                statusText: 'Success message',
              ),
              AppComboBox(
                style: AppTextFieldStyle.shaded,
                items: ['Item 1', 'Item 2', 'Item 3'],
              ),
              AppComboBox(
                size: WidgetSize.sm,
                style: AppTextFieldStyle.shaded,
                items: ['Item 1', 'Item 2', 'Item 3'],
                feedbackState: FeedbackState.negative,
                statusText: 'Error message',
              ),
              AppComboBox(
                size: WidgetSize.sm,
                style: AppTextFieldStyle.shaded,
                items: ['Item 1', 'Item 2', 'Item 3'],
                feedbackState: FeedbackState.warning,
                statusText: 'Warning message',
              ),
              AppComboBox(
                size: WidgetSize.sm,
                style: AppTextFieldStyle.shaded,
                items: ['Item 1', 'Item 2', 'Item 3'],
                feedbackState: FeedbackState.positive,
                statusText: 'Success message',
              ),
            ],
          ),
        );
}
