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
    //=== InkWell ===//
    this.disabledPressAnimation = false,
    this.showFocus = true,
    this.disabled = false,
    this.disableFocused = false,
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

  ///===== Effect ======///
  final List<BoxShadow>? innerShadow;
  final List<BoxShadow>? dropShadow;
  final ImageFilter? backgroundBlur;

  ///===== InkWell ======///
  final bool disabledPressAnimation;
  final bool showFocus;
  final bool disabled;
  final bool disableFocused;
  final GestureTapCallback? onPress;
  final GestureTapCallback? onSecondaryPress;
  final GestureTapCallback? onDoubleTap;
  final GestureLongPressCallback? onLongPress;
  final ValueChanged<bool>? onHighlightChanged;
  final ValueChanged<bool>? onHover;
  final MouseCursor? mouseCursor;
  final bool enableFeedback;
  final bool excludeFromSemantics;
  final ValueChanged<bool>? onFocusChange;
  final bool autofocus;
  final FocusNode? focusNode;
  final bool canRequestFocus;
  final WidgetStatesController? statesController;

  ///===== Child Widget ======///
  final Widget? child;

  @override
  State<GestureContainerLayout> createState() => _GestureContainerLayoutState();
}

class _GestureContainerLayoutState extends State<GestureContainerLayout> {
  late final ValueNotifier<bool> _focusNotifier;

  @override
  void initState() {
    super.initState();
    _focusNotifier = ValueNotifier(false);
  }

  @override
  Widget build(BuildContext context) =>
      ChangeNotifierProvider<ValueNotifier<bool>>(
        create: (context) => _focusNotifier,
        child: Consumer<ValueNotifier<bool>>(
          builder: (context, focus, child) => FocusSpread(
            key: widget.key,
            focus: widget.disabled
                ? false
                : widget.showFocus
                    ? focus.value
                    : false,
            borderRadius:
                widget.decoration?.borderRadius ?? widget.borderRadius,
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
              child: buildInkWell(
                context,
                disabledPressAnimation: widget.disabledPressAnimation,
                borderRadius: widget.borderRadius,
                disabled: widget.disabled,
                onPress: widget.onPress,
                onSecondaryPress: widget.onSecondaryPress,
                onDoubleTap: widget.onDoubleTap,
                onLongPress: widget.onLongPress,
                onHighlightChanged: widget.onHighlightChanged,
                onHover: widget.onHover,
                mouseCursor: widget.mouseCursor,
                enableFeedback: widget.enableFeedback,
                excludeFromSemantics: widget.excludeFromSemantics,
                focusNode: !widget.disableFocused ? widget.focusNode : null,
                canRequestFocus: !widget.disableFocused,
                onFocusChange: !widget.disableFocused
                    ? (value) {
                        _focusNotifier.value = value;
                        widget.onFocusChange?.call(value);
                      }
                    : null,
                autofocus: !widget.disableFocused ? widget.autofocus : false,
                statesController: widget.statesController,
                child: ConstrainedBox(
                  constraints: BoxConstraints(
                    minWidth: widget.width ?? widget.minWidth ?? 0.0,
                    maxWidth:
                        widget.width ?? widget.maxWidth ?? double.infinity,
                    minHeight: widget.height ?? widget.minHeight ?? 0.0,
                    maxHeight:
                        widget.height ?? widget.maxHeight ?? double.infinity,
                  ),
                  child: Padding(
                    padding: widget.padding ?? const EdgeInsets.all(0.0),
                    child: widget.child,
                  ),
                ),
              ),
            ),
          ),
        ),
      );

  Widget? buildInkWell(
    BuildContext context, {
    required bool disabled,
    required bool disabledPressAnimation,
    required BorderRadius? borderRadius,
    required GestureTapCallback? onPress,
    required GestureTapCallback? onSecondaryPress,
    required GestureTapCallback? onDoubleTap,
    required GestureLongPressCallback? onLongPress,
    required ValueChanged<bool>? onHover,
    required ValueChanged<bool>? onHighlightChanged,
    required MouseCursor? mouseCursor,
    required bool enableFeedback,
    required bool excludeFromSemantics,
    required ValueChanged<bool>? onFocusChange,
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
    return Material(
      color: Colors.transparent,
      child: InkWell(
        borderRadius: borderRadius,
        hoverColor: hoverColor,
        focusColor: focusColor,
        splashColor: splashColor,
        highlightColor: highlightColor,
        onTap: onPress,
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
        onFocusChange: onFocusChange,
        autofocus: autofocus,
        statesController: statesController,
        child: child,
      ),
    );
  }
}
