import 'package:widgetbook_app/widgetbook.dart';

class OverviewStepperWidgetCase extends WidgetbookUseCase {
  OverviewStepperWidgetCase({super.name = 'Overview'})
      : super(
          builder: (context) => SectionH1Widgetbook(
            title: 'Stepper',
            children: [
              AppStepper(
                size: WidgetSize.sm,
              ),
              AppStepper(
                feedbackState: FeedbackState.warning,
              ),
              AppStepper(
                size: WidgetSize.lg,
                feedbackState: FeedbackState.negative,
              ),
              AppStepper(
                style: AppTextFieldStyle.shaded,
                size: WidgetSize.sm,
              ),
              AppStepper(
                style: AppTextFieldStyle.shaded,
                feedbackState: FeedbackState.positive,
              ),
              AppStepper(
                style: AppTextFieldStyle.shaded,
                size: WidgetSize.lg,
                feedbackState: FeedbackState.negative,
              ),
              AppStepper(
                style: AppTextFieldStyle.shaded,
                disabled: true,
              ),
            ],
          ),
        );
}
