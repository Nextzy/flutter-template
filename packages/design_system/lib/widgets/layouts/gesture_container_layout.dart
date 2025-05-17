import 'package:design_system/lib.dart';

class GestureContainerLayout extends StatefulWidget {
  const GestureContainerLayout({
    super.key,
    this.ratio,
    this.width,
    this.height,
    this.minWidth,
    this.maxWidth,
    this.minHeight,
    this.maxHeight,
    this.rotate,
    this.alignment,
    this.decoration,
    this.padding,
    this.margin,
    this.border,
    this.borderRadius,
    this.backgroundColor,
    this.backgroundGradient,
    this.backgroundImage,
    this.foregroundColor,
    this.foregroundGradient,
    this.foregroundImage,
    this.opacity,
    this.clipBehavior = Clip.none,
    this.innerShadow,
    this.dropShadow,
    this.backgroundBlur,
    this.transform,
    this.transformAlignment,
    this.animate = true,
    this.animateDuration,
    this.animateCurve,
    this.onEndAnimate,
    //=== InkWell ===//
    this.disabledPressAnimation = false,
    this.disabled = false,
    this.onPress,
    this.onSecondaryPress,
    this.onDoubleTap,
    this.onLongPress,
    this.onHighlightChanged,
    this.onHover,
    this.mouseCursor,
    this.enableFeedback = true,
    this.excludeFromSemantics = false,
    this.focusNode,
    this.focused = FocusType.focusedVisible,
    this.canRequestFocus = true,
    this.onFocusChange,
    this.autofocus = false,
    this.statesController,
    //===============//
    this.child,
  });

  ///========== Frame ==========///
  // If you use width,height will override min and max width, height.
  final double? width;
  final double? height;
  final double? minWidth;
  final double? maxWidth;
  final double? minHeight;
  final double? maxHeight;
  final double? rotate; // 0-360 degree
  final double? ratio;

  ///========== Layout ==========///
  final BoxDecoration? decoration;
  final EdgeInsetsGeometry? padding;
  final EdgeInsetsGeometry? margin;
  final Border? border;
  final BorderRadius? borderRadius;
  final AlignmentGeometry? alignment;
  final AlignmentGeometry? transformAlignment;
  final Matrix4? transform;
  final Color? backgroundColor;
  final Gradient? backgroundGradient;
  final DecorationImage? backgroundImage;
  final Color? foregroundColor;
  final Gradient? foregroundGradient;
  final DecorationImage? foregroundImage;
  final double? opacity;
  final Clip clipBehavior;

  ///===== Animate ======///
  final bool? animate;
  final Duration? animateDuration;
  final Curve? animateCurve;
  final VoidCallback? onEndAnimate;

  ///===== Effect ======///
  final List<BoxShadow>? innerShadow;
  final List<BoxShadow>? dropShadow;
  final ImageFilter? backgroundBlur;

  ///===== InkWell ======///
  final bool disabledPressAnimation;
  final bool disabled;
  final GestureTapCallback? onPress;
  final GestureTapCallback? onSecondaryPress;
  final GestureTapCallback? onDoubleTap;
  final GestureLongPressCallback? onLongPress;
  final ValueChanged<bool>? onHighlightChanged;
  final ValueChanged<bool>? onHover;
  final MouseCursor? mouseCursor;
  final bool enableFeedback;
  final bool excludeFromSemantics;
  final FocusNode? focusNode;
  final ValueChanged<bool>? onFocusChange;
  final FocusType focused;
  final bool autofocus;
  final bool canRequestFocus;
  final WidgetStatesController? statesController;

  ///===== Child Widget ======///
  final Widget? child;

  @override
  State<GestureContainerLayout> createState() => _GestureContainerLayoutState();
}

class _GestureContainerLayoutState extends FalconState<GestureContainerLayout> {
  late FocusNode _focusNode;
  InputMethod _lastInputMethod = InputMethod.none;
  bool _isFocused = false;

  @override
  void initState() {
    super.initState();
    _focusNode = widget.focusNode ?? FocusNode();
    _focusNode.addListener(_handleFocusChange);

    ServicesBinding.instance.keyboard.addHandler(_handleKeyEvent);
  }

  @override
  Widget buildState(BuildContext context, FullWidgetState state) {
    return FocusSpread(
      key: widget.key,
      focus: widget.disabled
          ? false
          : widget.focused.isFocused || widget.focused.isFocusedVisible
              ? _isFocused
              : false,
      borderRadius: widget.decoration?.borderRadius ?? widget.borderRadius,
      child: ContainerLayout(
        key: widget.key,
        ratio: widget.ratio,
        rotate: widget.rotate,
        decoration: widget.decoration,
        margin: widget.margin,
        border: widget.border,
        borderRadius: widget.borderRadius,
        backgroundColor: widget.backgroundColor,
        backgroundGradient: widget.backgroundGradient,
        backgroundImage: widget.backgroundImage,
        foregroundColor: widget.foregroundColor,
        foregroundGradient: widget.foregroundGradient,
        foregroundImage: widget.foregroundImage,
        opacity: widget.opacity,
        clipBehavior: widget.clipBehavior,
        innerShadow: widget.innerShadow,
        dropShadow: widget.dropShadow,
        backgroundBlur: widget.backgroundBlur,
        transform: widget.transform,
        animate: widget.animate,
        animateDuration: widget.animateDuration,
        animateCurve: widget.animateCurve,
        onEndAnimate: widget.onEndAnimate,
        child: buildInkWell(
          context,
          disabledPressAnimation: widget.disabledPressAnimation,
          borderRadius: widget.borderRadius,
          disabled: widget.disabled,
          onPress: widget.onPress,
          onTapDown: (details) {
            _focusNode.requestFocus();
          },
          onSecondaryPress: widget.onSecondaryPress,
          onDoubleTap: widget.onDoubleTap,
          onLongPress: widget.onLongPress,
          onHighlightChanged: widget.onHighlightChanged,
          onHover: (value) {
            if (value) {
              setFullWidgetState(FullWidgetState.hovered);
            } else {
              setFullWidgetState(FullWidgetState.normal);
            }
            widget.onHover?.call(value);
          },
          mouseCursor: widget.mouseCursor,
          enableFeedback: widget.enableFeedback,
          excludeFromSemantics: widget.excludeFromSemantics,
          focusNode: widget.focused.isNotDisabled ? _focusNode : null,
          canRequestFocus: widget.focused.isNotDisabled,
          autofocus: widget.focused.isNotDisabled ? widget.autofocus : false,
          statesController: widget.statesController,
          child: ConstrainedBox(
            constraints: BoxConstraints(
              minWidth: widget.width ?? widget.minWidth ?? 0.0,
              maxWidth: widget.width ?? widget.maxWidth ?? double.infinity,
              minHeight: widget.height ?? widget.minHeight ?? 0.0,
              maxHeight: widget.height ?? widget.maxHeight ?? double.infinity,
            ),
            child: Padding(
              padding: widget.padding ?? const EdgeInsets.all(0.0),
              child: widget.child,
            ),
          ),
        ),
      ),
    );
  }

  Widget? buildInkWell(
    BuildContext context, {
    required bool disabled,
    required bool disabledPressAnimation,
    required BorderRadius? borderRadius,
    required GestureTapCallback? onPress,
    GestureTapDownCallback? onTapDown,
    GestureTapUpCallback? onTapUp,
    required GestureTapCallback? onSecondaryPress,
    required GestureTapCallback? onDoubleTap,
    required GestureLongPressCallback? onLongPress,
    required ValueChanged<bool>? onHover,
    required ValueChanged<bool>? onHighlightChanged,
    required MouseCursor? mouseCursor,
    required bool enableFeedback,
    required bool excludeFromSemantics,
    required bool autofocus,
    required FocusNode? focusNode,
    required bool canRequestFocus,
    required WidgetStatesController? statesController,
    required Widget? child,
  }) {
    if (disabled ||
        (onPress == null &&
            onSecondaryPress == null &&
            onLongPress == null &&
            onDoubleTap == null &&
            onHover == null &&
            onHighlightChanged == null)) {
      return child;
    }

    final focusColor = disabledPressAnimation
        ? Colors.transparent
        : context.theme.color.overlayHover;
    final hoverColor = disabledPressAnimation
        ? Colors.transparent
        : context.theme.color.overlayHover;
    final splashColor = disabledPressAnimation
        ? Colors.transparent
        : context.theme.color.overlayActive;
    final highlightColor = disabledPressAnimation
        ? Colors.transparent
        : context.theme.color.overlayActive;
    return Listener(
      onPointerDown: _handlePointerDown,
      child: Material(
        color: Colors.transparent,
        child: InkWell(
          borderRadius: borderRadius,
          hoverColor: hoverColor,
          focusColor: focusColor,
          splashColor: splashColor,
          highlightColor: highlightColor,
          onTap: onPress,
          onTapDown: onTapDown,
          onTapUp: onTapUp,
          onSecondaryTap: onSecondaryPress,
          onDoubleTap: onDoubleTap,
          onLongPress: onLongPress,
          onHighlightChanged: onHighlightChanged,
          onHover: onHover,
          mouseCursor: mouseCursor,
          enableFeedback: enableFeedback,
          excludeFromSemantics: excludeFromSemantics,
          focusNode: focusNode,
          canRequestFocus: canRequestFocus,
          autofocus: autofocus,
          statesController: statesController,
          child: child,
        ),
      ),
    );
  }

  @override
  void dispose() {
    _focusNode.dispose();
    _focusNode.removeListener(_handleFocusChange);
    ServicesBinding.instance.keyboard.removeHandler(_handleKeyEvent);
    super.dispose();
  }

  ///========================= PRIVATE METHOD =========================///
  bool _handleKeyEvent(KeyEvent event) {
    // When a keyboard event is detected, set keyboard mode to true
    if (event is KeyDownEvent || event is KeyRepeatEvent) {
      _lastInputMethod = InputMethod.keyboard;
    }
    return false; // Return false to allow the event to continue propagating
  }

  void _handlePointerDown(PointerDownEvent event) {
    // When pointer is used, we're not in keyboard mode
    if (_lastInputMethod != InputMethod.pointer) {
      _lastInputMethod = InputMethod.pointer;
    }
  }

  void _handleFocusChange() {
    if (widget.focused.isFocusedVisible &&
        _focusNode.hasFocus &&
        _lastInputMethod.isKeyboard) {
      setState(() => _isFocused = true);
      setFullWidgetState(FullWidgetState.focusedVisible);
    } else if (widget.focused.isFocused && _focusNode.hasFocus) {
      setState(() => _isFocused = true);
      setFullWidgetState(FullWidgetState.focused);
    } else {
      setState(() => _isFocused = false);
      setFullWidgetState(FullWidgetState.normal);
    }
    widget.onFocusChange?.call(_focusNode.hasFocus);
  }
}
