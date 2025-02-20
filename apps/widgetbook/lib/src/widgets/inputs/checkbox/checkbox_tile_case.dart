import 'package:widgetbook_app/widgetbook.dart';

class TileCheckboxWidgetCase extends WidgetbookScrollableUseCase {
  TileCheckboxWidgetCase({super.name = 'Tile'})
      : super(
          builder: (context) => SectionH1Widgetbook(
            title: 'Checkbox Tile',
            children: [
              AppCheckboxTile(
                icon: Assets.icon.infoRegular.keyName,
                label: 'Tile text',
              ),
              AppCheckboxTile(
                icon: Assets.icon.infoRegular.keyName,
                label: 'Tile text',
                feedbackState: FeedbackState.negative,
              ),
              AppCheckboxTile(
                  icon: Assets.icon.infoRegular.keyName,
                  label: 'Tile text',
                  disabled: true),
              AppCheckboxTile(
                style: AppTextFieldStyle.shaded,
                icon: Assets.icon.infoRegular.keyName,
                label: 'Tile text',
              ),
              AppCheckboxTile(
                style: AppTextFieldStyle.shaded,
                icon: Assets.icon.infoRegular.keyName,
                label: 'Tile text',
                feedbackState: FeedbackState.negative,
              ),
              AppCheckboxTile(
                  style: AppTextFieldStyle.shaded,
                  icon: Assets.icon.infoRegular.keyName,
                  label: 'Tile text',
                  disabled: true)
            ],
          ),
        );
}
