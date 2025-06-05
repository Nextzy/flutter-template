import 'package:design_system/lib.dart';

export 'back_button.dart';
export 'close_button.dart';

class AppFilledIconButton extends AppIconButton {
  const AppFilledIconButton({
    super.key,
    super.size,
    super.themeMode,
    required super.icon,
    super.customIconSize,
    super.padding,
    super.color,
    super.border,
    super.borderRadius,
    super.disabled = false,
    super.loading = false,
    super.onPress,
    super.onLongPress,
    super.onHover,
    super.onFocusChange,
  }) : super(style: AppButtonStyle.filledBand);
}
