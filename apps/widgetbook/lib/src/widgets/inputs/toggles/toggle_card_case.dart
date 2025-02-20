import 'package:widgetbook_app/widgetbook.dart';

class CardToggleWidgetCase extends WidgetbookScrollableUseCase {
  CardToggleWidgetCase({super.name = 'Card'})
      : super(
          builder: (context) => SectionH1Widgetbook(
            title: 'Toggle Card',
            children: [
              AppToggleCard(
                  icon: Assets.icon.infoRegular.keyName,
                  label: 'Toggle text',
                  helperText:
                      'Helpful description of the option which may briefly highlight side effects or conditions of the option.'),
              AppToggleCard(
                  icon: Assets.icon.infoRegular.keyName,
                  label: 'Toggle text',
                  feedbackState: FeedbackState.negative,
                  statusText: 'Error message',
                  helperText:
                      'Helpful description of the option which may briefly highlight side effects or conditions of the option.'),
              AppToggleCard(
                  icon: Assets.icon.infoRegular.keyName,
                  label: 'Toggle text',
                  helperText:
                      'Helpful description of the option which may briefly highlight side effects or conditions of the option.',
                  disabled: true),
              AppToggleCard(
                  style: AppTextFieldStyle.shaded,
                  icon: Assets.icon.infoRegular.keyName,
                  label: 'Toggle text',
                  helperText:
                      'Helpful description of the option which may briefly highlight side effects or conditions of the option.'),
              AppToggleCard(
                  style: AppTextFieldStyle.shaded,
                  icon: Assets.icon.infoRegular.keyName,
                  label: 'Toggle text',
                  feedbackState: FeedbackState.negative,
                  statusText: 'Error message',
                  helperText:
                      'Helpful description of the option which may briefly highlight side effects or conditions of the option.'),
              AppToggleCard(
                  style: AppTextFieldStyle.shaded,
                  icon: Assets.icon.infoRegular.keyName,
                  label: 'Toggle text',
                  helperText:
                      'Helpful description of the option which may briefly highlight side effects or conditions of the option.',
                  disabled: true)
            ],
          ),
        );
}
