import 'package:widgetbook_app/widgetbook.dart';

class TileRadioWidgetCase extends WidgetbookScrollableUseCase {
  TileRadioWidgetCase({super.name = 'Tile'})
      : super(
          builder: (context) => SectionH1Widgetbook(
            title: 'Radio Tile',
            children: [
              AppRadioTile(
                icon: Assets.icon.infoRegular.keyName,
                label: 'Radio text',
                value: true,
                defaultValue: false,
              ),
              AppRadioTile(
                icon: Assets.icon.infoRegular.keyName,
                label: 'Radio text',
                value: true,
                defaultValue: false,
                feedbackState: FeedbackState.negative,
              ),
              AppRadioTile(
                  icon: Assets.icon.infoRegular.keyName,
                  label: 'Radio text',
                  value: true,
                  defaultValue: false,
                  disabled: true),
              AppRadioTile(
                style: AppTextFieldStyle.shaded,
                icon: Assets.icon.infoRegular.keyName,
                label: 'Radio text',
                value: true,
                defaultValue: false,
              ),
              AppRadioTile(
                style: AppTextFieldStyle.shaded,
                icon: Assets.icon.infoRegular.keyName,
                label: 'Radio text',
                value: true,
                defaultValue: false,
                feedbackState: FeedbackState.negative,
              ),
              AppRadioTile(
                  style: AppTextFieldStyle.shaded,
                  icon: Assets.icon.infoRegular.keyName,
                  label: 'Radio text',
                  value: true,
                  defaultValue: false,
                  disabled: true)
            ],
          ),
        );
}
