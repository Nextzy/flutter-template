import 'package:design_system/lib.dart';

class ContainerLayout extends StatelessWidget {
  const ContainerLayout({
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
  final BorderRadiusGeometry? borderRadius;
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

  ///===== Child Widget ======///
  final Widget? child;

  @override
  Widget build(BuildContext context) => _buildRotate(
        rotate: rotate,
        child: Opacity(
          opacity: opacity ?? 1.0,
          child: _buildDropShadow(
            context,
            decoration: decoration,
            borderRadius: borderRadius,
            dropShadow: dropShadow,
            child: _buildClipRect(
              clipBehavior: clipBehavior,
              borderRadius: borderRadius,
              child: _buildBlur(
                backgroundBlur: backgroundBlur,
                child: _buildContent(
                  decoration: decoration,
                  alignment: alignment,
                  padding: padding,
                  margin: margin,
                  width: width,
                  height: height,
                  minWidth: minWidth,
                  maxWidth: maxWidth,
                  minHeight: minHeight,
                  maxHeight: maxHeight,
                  foregroundColor: foregroundColor,
                  foregroundGradient: foregroundGradient,
                  foregroundImage: foregroundImage,
                  backgroundColor: backgroundColor,
                  backgroundGradient: backgroundGradient,
                  backgroundImage: backgroundImage,
                  border: border,
                  borderRadius: borderRadius,
                  innerShadow: innerShadow,
                  transform: transform,
                  transformAlignment: transformAlignment,
                  child: _buildRatio(
                    ratio: ratio,
                    child: child,
                  ),
                ),
              ),
            ),
          ),
        ),
      );

  Widget _buildRotate({
    required double? rotate,
    required Widget child,
  }) =>
      (rotate != null)
          ? RotationTransition(
              turns: AlwaysStoppedAnimation((rotate % 360) / 360),
              child: child,
            )
          : child;

  Widget? _buildRatio({
    required double? ratio,
    required Widget? child,
  }) {
    if (child == null) return null;

    return (ratio != null && ratio > 0)
        ? AspectRatio(
            aspectRatio: ratio,
            child: child,
          )
        : child;
  }

  Widget _buildDropShadow(
    BuildContext context, {
    required BoxDecoration? decoration,
    required BorderRadiusGeometry? borderRadius,
    required List<BoxShadow>? dropShadow,
    required Widget child,
  }) =>
      (dropShadow != null)
          ? Container(
              decoration: BoxDecoration(
                color: context.theme.color.bg,
                borderRadius: borderRadius,
                boxShadow: decoration?.boxShadow ?? dropShadow,
              ),
              child: child,
            )
          : child;

  Widget _buildClipRect({
    required Clip clipBehavior,
    required BorderRadiusGeometry? borderRadius,
    required Widget child,
  }) =>
      (clipBehavior == Clip.none || borderRadius == null)
          ? child
          : ClipRRect(
              clipBehavior: clipBehavior,
              borderRadius: borderRadius,
              child: child,
            );

  Widget _buildBlur({
    required ImageFilter? backgroundBlur,
    required Widget child,
  }) =>
      backgroundBlur != null
          ? BackdropFilter(
              filter: backgroundBlur,
              child: child,
            )
          : child;

  Widget _buildContent({
    required BoxDecoration? decoration,
    required AlignmentGeometry? alignment,
    required EdgeInsetsGeometry? padding,
    required EdgeInsetsGeometry? margin,
    required double? width,
    required double? height,
    required double? minWidth,
    required double? maxWidth,
    required double? minHeight,
    required double? maxHeight,
    required Color? foregroundColor,
    required Gradient? foregroundGradient,
    required DecorationImage? foregroundImage,
    required Color? backgroundColor,
    required Gradient? backgroundGradient,
    required DecorationImage? backgroundImage,
    required Border? border,
    required BorderRadiusGeometry? borderRadius,
    required List<BoxShadow>? innerShadow,
    required Matrix4? transform,
    required AlignmentGeometry? transformAlignment,
    required Widget? child,
  }) =>
      Container(
        alignment: alignment,
        margin: margin,
        height: height,
        width: width,
        constraints: width != null ||
                height != null ||
                minWidth != null ||
                maxWidth != null ||
                minHeight != null ||
                maxHeight != null
            ? BoxConstraints(
                minWidth: minWidth ?? 0.0,
                maxWidth: maxWidth ?? double.infinity,
                minHeight: minHeight ?? 0.0,
                maxHeight: maxHeight ?? double.infinity,
              )
            : null,
        foregroundDecoration: BoxDecoration(
          gradient: foregroundGradient,
          color: foregroundColor,
          image: foregroundImage,
          borderRadius: decoration?.borderRadius ?? borderRadius,
          border: decoration?.border ?? border,
        ),
        decoration: BoxDecoration(
          color: decoration?.color ?? backgroundColor,
          gradient: decoration?.gradient ?? backgroundGradient,
          image: decoration?.image ?? backgroundImage,
          borderRadius: decoration?.borderRadius ?? borderRadius,
          boxShadow: [
            if (innerShadow.isNotEmptyOrNull)
              BoxShadow(color: decoration?.color ?? backgroundColor!),
            ...?innerShadow
          ],
        ),
        transform: transform,
        transformAlignment: transformAlignment,
        child: Container(
          padding: padding,
          child: child ?? const SizedBox(),
        ),
      );
}