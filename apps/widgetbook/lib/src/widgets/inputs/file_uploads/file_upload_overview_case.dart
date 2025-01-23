import 'package:widgetbook_app/widgetbook.dart';

class OverviewFileUploadWidgetCase extends WidgetbookScrollableUseCase {
  OverviewFileUploadWidgetCase({super.name = 'Overview'})
      : super(
          builder: (context) => SectionH1Widgetbook(
            title: 'File Upload',
            children: [
              AppFileUpload(
                label: 'File Upload',
              ),
              AppFileUpload(
                size: WidgetSize.sm,
                feedbackState: FeedbackState.negative,
                statusText: 'Error message',
              ),
              AppFileUpload(
                feedbackState: FeedbackState.warning,
                statusText: 'Warning message',
              ),
              AppFileUpload(
                size: WidgetSize.lg,
                feedbackState: FeedbackState.positive,
                statusText: 'Success message',
              ),
              AppFileUpload(
                disabled: true,
              ),
            ],
          ),
        );
}
