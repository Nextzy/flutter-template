import 'package:design_system/lib.dart';

class ColumnLayout extends StatelessWidget {
  const ColumnLayout({
    super.key,
    this.ratio,
    this.width,
    this.height,
    this.minWidth,
    this.maxWidth,
    this.minHeight,
    this.maxHeight,
    this.rotate,
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
    this.crossAxisIntrinsic = false,
    this.mainAxisAlignment = MainAxisAlignment.start,
    this.mainAxisSize = MainAxisSize.max,
    this.crossAxisAlignment = CrossAxisAlignment.center,
    this.textDirection,
    this.verticalDirection = VerticalDirection.down,
    this.textBaseline,
    this.gap,
    this.scrollable = false,
    required this.children,
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

  ///====== Column ======///
  final MainAxisAlignment mainAxisAlignment;
  final MainAxisSize mainAxisSize;
  final CrossAxisAlignment crossAxisAlignment;
  final TextDirection? textDirection;
  final VerticalDirection verticalDirection;
  final TextBaseline? textBaseline;
  final bool crossAxisIntrinsic;
  final double? gap;
  final bool scrollable;

  ///===== Child Widget ======///
  final List<Widget> children;

  @override
  Widget build(BuildContext context) => _buildScrollable(
        scrollable: scrollable,
        child: ContainerLayout(
          key: key,
          ratio: ratio,
          width: width,
          height: height,
          minWidth: minWidth,
          maxWidth: maxWidth,
          minHeight: minHeight,
          maxHeight: maxHeight,
          rotate: rotate,
          decoration: decoration,
          padding: padding,
          margin: margin,
          border: border,
          borderRadius: borderRadius,
          backgroundColor: backgroundColor,
          backgroundGradient: backgroundGradient,
          backgroundImage: backgroundImage,
          foregroundColor: foregroundColor,
          foregroundGradient: foregroundGradient,
          foregroundImage: foregroundImage,
          opacity: opacity,
          clipBehavior: clipBehavior,
          innerShadow: innerShadow,
          dropShadow: dropShadow,
          backgroundBlur: backgroundBlur,
          transform: transform,
          child: _buildIntrinsic(
            width: width,
            intrinsic: crossAxisIntrinsic,
            child: Column(
              mainAxisAlignment: mainAxisAlignment,
              mainAxisSize: height != null || maxHeight != null
                  ? MainAxisSize.max
                  : mainAxisSize,
              crossAxisAlignment: crossAxisAlignment,
              textDirection: textDirection,
              verticalDirection: verticalDirection,
              textBaseline: textBaseline,
              children: _addSpaceWidgetList(
                gap: gap,
                children: children,
              ),
            ),
          ),
        ),
      );

  Widget _buildScrollable({
    required bool scrollable,
    required Widget child,
  }) =>
      (scrollable)
          ? SingleChildScrollView(
              scrollDirection: Axis.vertical,
              clipBehavior: Clip.none,
              child: child,
            )
          : child;

  Widget _buildIntrinsic({
    required bool intrinsic,
    required double? width,
    required Widget child,
  }) {
    if (intrinsic == false || width != null) return child;

    return IntrinsicWidth(
      child: child,
    );
  }

  List<Widget> _addSpaceWidgetList({
    required double? gap,
    required List<Widget> children,
  }) {
    if (gap == null || gap <= 0) {
      return children;
    }

    return children.fold(
      [],
      (list, element) {
        if (list.isNotEmpty) {
          list.add(Gap(gap));
        }
        list.add(element);
        return list;
      },
    );
  }
}
