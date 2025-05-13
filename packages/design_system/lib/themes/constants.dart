enum WidgetSize { xxs, xs, sm, md, lg, xl, xxl }

enum FontSize { s10, s12, s14, s16, s18, s24, s36, custom }

enum FontType { header, running, code, ui, table }

enum FocusType {
  focused,
  focusedVisible,
  disabled,
  invisible;

  bool get isFocused => this == focused; //
  bool get isFocusedVisible => this == focusedVisible; //
  bool get isDisabled => this == disabled; //
  bool get isInvisible => this == invisible; //

  bool get isNotFocused => !isFocused; //
  bool get isNotFocusedVisible => !isFocusedVisible; //
  bool get isNotDisabled => !isDisabled; //
  bool get isNotInvisible => !isInvisible; //
}

enum InputMethod {
  none,
  keyboard,
  pointer;

  bool get isNone => this == none; //
  bool get isKeyboard => this == keyboard; //
  bool get isPointer => this == pointer; //

  bool get isNotNone => !isNone; //
  bool get isNotKeyboard => !isKeyboard; //
  bool get isNotPointer => !isPointer; //
}

enum FontColor {
  brandPrimary,
  brandSecondary,
  brandTertiary,
  primary,
  primaryInverse,
  primaryOnColor,
  secondary,
  secondaryInverse,
  secondaryOnColor,
  tertiary,
  tertiaryInverse,
  tertiaryOnColor,
}
