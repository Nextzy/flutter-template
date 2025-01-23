import 'package:design_system/lib.dart';

class AppStepper extends AppStatefulWidget {
  const AppStepper({
    super.key,
    super.size = WidgetSize.md,
    this.feedbackState,
    this.defaultValue = 0,
    this.minValue = 0,
    this.maxValue = 100,
    this.style = AppTextFieldStyle.outline,
    this.disabled = false,
    this.onChanged,
  });

  final AppTextFieldStyle style;
  final FeedbackState? feedbackState;
  final int defaultValue;
  final int? minValue;
  final int? maxValue;
  final bool disabled;

  final void Function(int)? onChanged;

  @override
  State<AppStepper> createState() => _AppStepperState();
}

class _AppStepperState extends AppState<AppStepper> {
  late int _currentValue;

  @override
  void initState() {
    super.initState();
    _currentValue = widget.defaultValue;
  }

  void _increment() {
    if (_currentValue < widget.maxValue!) {
      setState(() {
        _currentValue++;
      });

      _onChanged();
    }
  }

  void _decrement() {
    if (_currentValue > widget.minValue!) {
      setState(() {
        _currentValue--;
      });

      _onChanged();
    }
  }

  void _onTextChange(String value) {
    final int newValue = int.tryParse(value) ?? widget.minValue!;
    if (newValue >= widget.minValue! && newValue <= widget.maxValue!) {
      setState(() {
        _currentValue = newValue;
      });

      if (_currentValue != newValue) {
        _onChanged();
      }
    }
  }

  void _onChanged() {
    if (widget.onChanged != null) {
      widget.onChanged!(_currentValue);
    }
  }

  @override
  Widget build(BuildContext context) {
    return RowLayout(
      mainAxisSize: MainAxisSize.min,
      gap: widget.style == AppTextFieldStyle.shaded ? 4 : 0,
      children: [
        Container(
          decoration: BoxDecoration(
            color: widget.disabled ? context.theme.color.bgInputDisabled : null,
            borderRadius: borderRadiusLeft,
          ),
          child: AppButton(
            text: '-',
            size: widget.size,
            style: widget.style == AppTextFieldStyle.shaded
                ? AppButtonStyle.shaded
                : AppButtonStyle.outline,
            width: width,
            height: height,
            borderRadius: borderRadiusLeft,
            disabled: widget.disabled || _currentValue == widget.minValue,
            onPress: _decrement,
          ),
        ),
        SizedBox(
          width: widget.size == WidgetSize.sm ? 40 : 60,
          child: AppTextField(
            controller: TextEditingController(text: _currentValue.toString()),
            onTextChange: _onTextChange,
            feedbackState: widget.feedbackState,
            size: widget.size,
            style: widget.style,
            keyboardType: TextInputType.number,
            textAlign: TextAlign.center,
            disabled: widget.disabled,
            clearButton: false,
            borderRadius: widget.style == AppTextFieldStyle.shaded
                ? BorderRadius.circular(6)
                : BorderRadius.circular(0),
            inputFormatters: [
              FilteringTextInputFormatter.allow(RegExp(r'[0-9]')),
            ],
          ),
        ),
        Container(
          decoration: BoxDecoration(
            color: widget.disabled ? context.theme.color.bgInputDisabled : null,
            borderRadius: borderRadiusRight,
          ),
          child: AppButton(
            text: '+',
            size: widget.size,
            style: widget.style == AppTextFieldStyle.shaded
                ? AppButtonStyle.shaded
                : AppButtonStyle.outline,
            width: width,
            height: height,
            borderRadius: borderRadiusRight,
            disabled: widget.disabled || _currentValue == widget.maxValue,
            onPress: _increment,
          ),
        )
      ],
    );
  }

  double get width => switch (widget.size) {
        WidgetSize.xxs => 28,
        WidgetSize.xs => 28,
        WidgetSize.sm => 28,
        WidgetSize.md => 37,
        WidgetSize.lg => 45,
        WidgetSize.xl => 45,
        WidgetSize.xxl => 45,
      };

  double get height => switch (widget.size) {
        WidgetSize.xxs => 27,
        WidgetSize.xs => 27,
        WidgetSize.sm => 27,
        WidgetSize.md => 35,
        WidgetSize.lg => 43,
        WidgetSize.xl => 43,
        WidgetSize.xxl => 43,
      };

  BorderRadius get borderRadiusLeft => widget.style == AppTextFieldStyle.shaded
      ? BorderRadius.circular(6)
      : BorderRadius.only(
          topLeft: Radius.circular(6),
          bottomLeft: Radius.circular(6),
        );

  BorderRadius get borderRadiusRight => widget.style == AppTextFieldStyle.shaded
      ? BorderRadius.circular(6)
      : BorderRadius.only(
          topRight: Radius.circular(6), bottomRight: Radius.circular(6));
}
