import 'package:design_system/lib.dart';

enum DividerDirection { vertical, horizontal }

enum DividerTextPosition { left, center, right }

class AppDivider extends AppStatelessWidget {
  const AppDivider(
      {super.key,
      this.direction = DividerDirection.horizontal,
      this.text,
      this.textPosition = DividerTextPosition.center,
      this.width,
      this.borderWidth,
      this.paddingStart,
      this.paddingEnd});

  final DividerDirection direction;
  final String? text;
  final DividerTextPosition textPosition;
  final double? width;
  final double? borderWidth;
  final double? paddingStart;
  final double? paddingEnd;

  @override
  Widget build(BuildContext context) {
    final double thickness =
        borderWidth ?? getTheme(context).border.md.maxWidth;
    final double indent = paddingStart ?? 0;
    final double endIndent = paddingEnd ?? 0;
    final Color color = getTheme(context).color.border;

    final EdgeInsets padding = switch (textPosition) {
      DividerTextPosition.left => const EdgeInsets.only(right: 8),
      DividerTextPosition.center => const EdgeInsets.symmetric(horizontal: 8),
      DividerTextPosition.right => const EdgeInsets.only(left: 8),
    };

    final EdgeInsets verticalPadding = switch (textPosition) {
      DividerTextPosition.left => const EdgeInsets.only(bottom: 8),
      DividerTextPosition.center => const EdgeInsets.symmetric(vertical: 8),
      DividerTextPosition.right => const EdgeInsets.only(top: 8),
    };

    switch (direction) {
      case DividerDirection.horizontal:
        if (text.isNotNullOrBlank) {
          return Row(
            children: [
              if (textPosition != DividerTextPosition.left)
                Expanded(
                  child: Divider(
                    thickness: thickness,
                    indent: 0,
                    endIndent: indent,
                    color: color,
                  ),
                ),
              Padding(
                padding: padding,
                child: AppText(
                  text,
                  style: TextStyle(
                    color: getTheme(context).color.textSecondary,
                    fontSize: 14,
                    fontWeight: FontWeight.w400,
                  ),
                ),
              ),
              if (textPosition != DividerTextPosition.right)
                Expanded(
                  child: Divider(
                    thickness: thickness,
                    indent: indent,
                    endIndent: 0,
                    color: color,
                  ),
                ),
            ],
          );
        } else {
          return SizedBox(
            width: width,
            child: Divider(
              thickness: thickness,
              color: color,
              indent: indent,
              endIndent: endIndent,
            ),
          );
        }
      case DividerDirection.vertical:
        if (text.isNotNullOrBlank) {
          return Column(
            children: [
              if (textPosition != DividerTextPosition.left)
                SizedBox(
                  height: textPosition == DividerTextPosition.right
                      ? 240
                      : width != null
                          ? (width! / 2)
                          : 120,
                  child: VerticalDivider(
                    thickness: thickness,
                    color: color,
                    indent: indent,
                    endIndent: endIndent,
                  ),
                ),
              Padding(
                padding: verticalPadding,
                child: AppText(
                  text,
                  style: TextStyle(
                    color: getTheme(context).color.textSecondary,
                    fontSize: 14,
                    fontWeight: FontWeight.w400,
                  ),
                ),
              ),
              if (textPosition != DividerTextPosition.right)
                SizedBox(
                  height: textPosition == DividerTextPosition.left
                      ? 240
                      : width != null
                          ? (width! / 2)
                          : 120,
                  child: VerticalDivider(
                    thickness: thickness,
                    color: color,
                    indent: indent,
                    endIndent: endIndent,
                  ),
                ),
            ],
          );
        } else {
          return SizedBox(
            height: width ?? 280,
            child: VerticalDivider(
              thickness: thickness,
              color: color,
              indent: indent,
              endIndent: endIndent,
            ),
          );
        }
    }
  }
}
