import 'package:design_system/lib.dart';

class AppBreadcrumbSection extends AppStatefulWidget {
  const AppBreadcrumbSection(
      {super.key,
      super.size,
      this.label,
      this.icon,
      this.disabled = false,
      this.onPress});

  final String? label;
  final String? icon;
  final bool disabled;
  final VoidCallback? onPress;

  @override
  AppState<AppBreadcrumbSection> createState() => _AppBreadcrumbState();
}

class _AppBreadcrumbState extends AppState<AppBreadcrumbSection> {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: widget.disabled ? null : widget.onPress,
      child: Row(
        children: [
          if (widget.icon != null)
            Container(
              padding: const EdgeInsets.all(4),
              child: widget.icon.toSvgIcon(
                  size: widget.size == WidgetSize.sm ? 14 : 16,
                  colorFilter: ColorFilter.mode(
                      widget.disabled
                          ? context.theme.color.iconPrimary.withValues(
                              alpha: 0.08, red: 0, green: 0, blue: 0)
                          : context.theme.color.iconPrimary,
                      BlendMode.srcIn)),
            ),
          if (widget.label != null)
            Container(
              padding: const EdgeInsets.all(4),
              child: AppText(widget.label,
                  style: TextStyle(
                      color: widget.disabled
                          ? context.theme.color.textPrimary.withValues(
                              alpha: 0.08, red: 0, green: 0, blue: 0)
                          : context.theme.color.textPrimary,
                      fontSize: widget.size == WidgetSize.sm ? 12 : 14)),
            ),
        ],
      ),
    );
  }
}
