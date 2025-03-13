import 'package:widgetbook_app/widgetbook.dart';

class OverviewInlineEditableTextWidgetCase extends WidgetbookScrollableUseCase {
  OverviewInlineEditableTextWidgetCase({super.name = 'Overview'})
      : super(
          builder: (context) => SectionH1Widgetbook(
            title: 'Inline Editable Text',
            children: [
              SectionH2Widgetbook(
                children: [
                  InlineEditableText(
                    text: 'Editable text',
                  ),
                  InlineEditableText(
                    text: 'Editable text',
                    feedbackState: FeedbackState.negative,
                  ),
                  InlineEditableText(
                    text: 'Editable text',
                    feedbackState: FeedbackState.warning,
                  ),
                  InlineEditableText(
                    text: 'Editable text',
                    feedbackState: FeedbackState.positive,
                  ),
                  InlineEditableText(
                    text: 'Editable text',
                    disabled: true,
                  ),
                  InlineEditableText(
                    style: AppTextFieldStyle.shaded,
                    text: 'Editable text',
                  ),
                  InlineEditableText(
                    style: AppTextFieldStyle.shaded,
                    text: 'Editable text',
                    feedbackState: FeedbackState.negative,
                  ),
                  InlineEditableText(
                    style: AppTextFieldStyle.shaded,
                    text: 'Editable text',
                    feedbackState: FeedbackState.warning,
                  ),
                  InlineEditableText(
                    style: AppTextFieldStyle.shaded,
                    text: 'Editable text',
                    feedbackState: FeedbackState.positive,
                  ),
                  InlineEditableText(
                    style: AppTextFieldStyle.shaded,
                    text: 'Editable text',
                    disabled: true,
                  ),
                ],
              ),
            ],
          ),
        );
}
