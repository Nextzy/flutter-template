import 'package:design_system/lib.dart';

enum AppTogglePosition { left, right }

class AppToggle extends AppStatefulWidget {
  const AppToggle({
    super.key,
    super.size,
    this.style = AppTextFieldStyle.outline,
    this.position = AppTogglePosition.left,
    required this.label,
    this.defaultValue = false,
    this.feedbackState,
    this.statusText,
    this.helperText,
    this.disabled = false,
    this.onChanged,
  });

  final AppTextFieldStyle style;
  final AppTogglePosition position;
  final String label;
  final bool defaultValue;
  final FeedbackState? feedbackState;
  final String? statusText;
  final String? helperText;
  final bool disabled;

  final ValueChanged<bool>? onChanged;

  @override
  State<StatefulWidget> createState() => AppToggleState();
}

class AppToggleState extends AppState<AppToggle> {
  bool _value = false;

  @override
  void initState() {
    super.initState();
    _value = widget.defaultValue;
  }

  void _onChanged(bool value) {
    setState(() {
      _value = value;
    });

    if (widget.onChanged != null) {
      widget.onChanged!(value);
    }
  }

  @override
  Widget build(BuildContext context) {
    return ColumnLayout(children: [
      Row(
        mainAxisAlignment: widget.position == AppTogglePosition.left
            ? MainAxisAlignment.start
            : MainAxisAlignment.spaceBetween,
        children: [
          if (widget.position == AppTogglePosition.left)
            Transform.scale(
              scale: 0.6,
              // alignment: Alignment.topCenter,
              child: Switch(
                  value: _value,
                  onChanged: widget.disabled ? null : _onChanged,
                  padding: EdgeInsets.zero,
                  activeColor: widget.disabled
                      ? null
                      : context.theme.color.iconPrimaryOnColor,
                  activeTrackColor: widget.disabled ? null : activeColor,
                  inactiveThumbColor:
                      widget.disabled ? null : context.theme.color.iconPrimary,
                  overlayColor: WidgetStatePropertyAll(Colors.transparent)),
            ),
          AppText(
            widget.label,
            style: TextStyle(
              color: widget.disabled
                  ? context.theme.color.textTertiary
                  : context.theme.color.textPrimary,
              fontSize: widget.size == WidgetSize.sm ? 12 : 14,
              fontWeight: FontWeight.w400,
            ),
          ),
          if (widget.position == AppTogglePosition.right)
            Transform.scale(
              scale: 0.6,
              // alignment: Alignment.topCenter,
              child: Switch(
                  value: _value,
                  onChanged: widget.disabled ? null : _onChanged,
                  padding: EdgeInsets.zero,
                  activeColor: widget.disabled
                      ? null
                      : context.theme.color.iconPrimaryOnColor,
                  activeTrackColor: widget.disabled ? null : activeColor,
                  inactiveThumbColor:
                      widget.disabled ? null : context.theme.color.iconPrimary,
                  overlayColor: WidgetStatePropertyAll(Colors.transparent)),
            ),
        ],
      ),
      if (widget.helperText.isNotNullOrBlank)
        Padding(
          padding: widget.position == AppTogglePosition.right
              ? EdgeInsets.zero
              : const EdgeInsets.only(left: 52),
          child: AppText(
            widget.helperText,
            style: TextStyle(
              color: widget.disabled
                  ? context.theme.color.textTertiary
                  : context.theme.color.textSecondary,
              fontSize: 12,
              fontWeight: FontWeight.w400,
            ),
          ),
        ),
      if (widget.statusText.isNotNullOrBlank && widget.feedbackState != null)
        Row(
          children: [
            Padding(
              padding: widget.position == AppTogglePosition.right
                  ? EdgeInsets.zero
                  : const EdgeInsets.only(left: 52),
              child: AppText(
                '$textFeedbackIcon${widget.statusText}',
                style: TextStyle(
                  color: textFeedbackColor,
                  fontSize: 12,
                  fontWeight: FontWeight.w400,
                ),
              ),
            )
          ],
        )
    ]);
  }

  Color get activeColor => switch (widget.feedbackState) {
        FeedbackState.positive => context.theme.color.textPositive,
        FeedbackState.warning => context.theme.color.textWarning,
        FeedbackState.negative => context.theme.color.buttonDestructive,
        FeedbackState.info => context.theme.color.textPrimary,
        null => widget.style == AppTextFieldStyle.shaded
            ? _value
                ? context.theme.color.borderBlack
                : Colors.transparent
            : _value
                ? context.theme.color.buttonPrimary
                : context.theme.color.border,
      };

  String get textFeedbackIcon => switch (widget.feedbackState) {
        FeedbackState.info => '',
        FeedbackState.positive => '✓ ',
        FeedbackState.warning => '⚠ ',
        FeedbackState.negative => '⚠ ',
        null => '',
      };

  Color get textFeedbackColor => switch (widget.feedbackState) {
        FeedbackState.positive => context.theme.color.textPositive,
        FeedbackState.warning => context.theme.color.textWarning,
        FeedbackState.negative => context.theme.color.textNegative,
        FeedbackState.info => context.theme.color.textPrimary,
        null => context.theme.color.textPositive,
      };
}
