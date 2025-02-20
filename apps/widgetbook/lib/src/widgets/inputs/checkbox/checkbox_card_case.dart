import 'package:widgetbook_app/widgetbook.dart';

class CardCheckboxWidgetCase extends WidgetbookScrollableUseCase {
  CardCheckboxWidgetCase({super.name = 'Card'})
      : super(
          builder: (context) => SectionH1Widgetbook(
            title: 'Checkbox Card',
            children: [
              AppCheckboxCard(
                  icon: Assets.icon.infoRegular.keyName,
                  label: 'Checkbox text',
                  helperText:
                      'Helpful description of the option which may briefly highlight side effects or conditions of the option.'),
              AppCheckboxCard(
                  icon: Assets.icon.infoRegular.keyName,
                  label: 'Checkbox text',
                  feedbackState: FeedbackState.negative,
                  statusText: 'Error message',
                  helperText:
                      'Helpful description of the option which may briefly highlight side effects or conditions of the option.'),
              AppCheckboxCard(
                  icon: Assets.icon.infoRegular.keyName,
                  label: 'Checkbox text',
                  helperText:
                      'Helpful description of the option which may briefly highlight side effects or conditions of the option.',
                  disabled: true),
              AppCheckboxCard(
                  style: AppTextFieldStyle.shaded,
                  icon: Assets.icon.infoRegular.keyName,
                  label: 'Checkbox text',
                  helperText:
                      'Helpful description of the option which may briefly highlight side effects or conditions of the option.'),
              AppCheckboxCard(
                  style: AppTextFieldStyle.shaded,
                  icon: Assets.icon.infoRegular.keyName,
                  label: 'Checkbox text',
                  feedbackState: FeedbackState.negative,
                  statusText: 'Error message',
                  helperText:
                      'Helpful description of the option which may briefly highlight side effects or conditions of the option.'),
              AppCheckboxCard(
                  style: AppTextFieldStyle.shaded,
                  icon: Assets.icon.infoRegular.keyName,
                  label: 'Checkbox text',
                  helperText:
                      'Helpful description of the option which may briefly highlight side effects or conditions of the option.',
                  disabled: true)
            ],
          ),
        );
}
