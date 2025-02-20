import 'package:widgetbook_app/widgetbook.dart';

class CardRadioWidgetCase extends WidgetbookScrollableUseCase {
  CardRadioWidgetCase({super.name = 'Card'})
      : super(
          builder: (context) => SectionH1Widgetbook(
            title: 'Radio Card',
            children: [
              AppRadioCard(
                  icon: Assets.icon.infoRegular.keyName,
                  label: 'Radio text',
                  value: true,
                  defaultValue: false,
                  helperText:
                      'Helpful description of the option which may briefly highlight side effects or conditions of the option.'),
              AppRadioCard(
                  icon: Assets.icon.infoRegular.keyName,
                  label: 'Radio text',
                  value: true,
                  defaultValue: false,
                  feedbackState: FeedbackState.negative,
                  statusText: 'Error message',
                  helperText:
                      'Helpful description of the option which may briefly highlight side effects or conditions of the option.'),
              AppRadioCard(
                  icon: Assets.icon.infoRegular.keyName,
                  label: 'Radio text',
                  value: true,
                  defaultValue: false,
                  helperText:
                      'Helpful description of the option which may briefly highlight side effects or conditions of the option.',
                  disabled: true),
              AppRadioCard(
                  style: AppTextFieldStyle.shaded,
                  icon: Assets.icon.infoRegular.keyName,
                  label: 'Radio text',
                  value: true,
                  defaultValue: false,
                  helperText:
                      'Helpful description of the option which may briefly highlight side effects or conditions of the option.'),
              AppRadioCard(
                  style: AppTextFieldStyle.shaded,
                  icon: Assets.icon.infoRegular.keyName,
                  label: 'Radio text',
                  value: true,
                  defaultValue: false,
                  feedbackState: FeedbackState.negative,
                  statusText: 'Error message',
                  helperText:
                      'Helpful description of the option which may briefly highlight side effects or conditions of the option.'),
              AppRadioCard(
                  style: AppTextFieldStyle.shaded,
                  icon: Assets.icon.infoRegular.keyName,
                  label: 'Radio text',
                  value: true,
                  defaultValue: false,
                  helperText:
                      'Helpful description of the option which may briefly highlight side effects or conditions of the option.',
                  disabled: true)
            ],
          ),
        );
}
