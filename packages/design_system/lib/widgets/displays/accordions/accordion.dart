import 'package:design_system/lib.dart';

enum AppAccordionArrowPosition { left, right }

enum AppAccordionHelpPosition { bottom, right }

class AppAccordion extends AppStatefulWidget {
  const AppAccordion({
    super.key,
    super.size = WidgetSize.md,
    this.style,
    this.iconLabel,
    required this.label,
    this.helperText,
    required this.text,
    this.arrowPosition = AppAccordionArrowPosition.left,
    this.helperPosition = AppAccordionHelpPosition.bottom,
    this.disabled = false,
    this.isExpanded = false,
  });

  final WidgetStyle? style;
  final String? iconLabel;
  final String label;
  final String? helperText;
  final String text;
  final AppAccordionArrowPosition? arrowPosition;
  final AppAccordionHelpPosition? helperPosition;
  final bool disabled;
  final bool isExpanded;

  @override
  State<AppAccordion> createState() => _AppAccordionState();
}

class _AppAccordionState extends AppState<AppAccordion> {
  bool _isExpanded = false;

  @override
  void initState() {
    super.initState();
    _isExpanded = widget.isExpanded;
  }

  void _toggleExpand() {
    if (!widget.disabled) {
      setState(() {
        _isExpanded = !_isExpanded;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: _toggleExpand,
      child: Container(
        padding: paddingBodySize,
        decoration: BoxDecoration(
          color: bodyBackgroundColor,
          borderRadius: context.theme.borderRadius.md,
          border: widget.style == WidgetStyle.outlined
              ? Border.all(
                  color: widget.disabled
                      ? context.theme.color.border
                          .withValues(alpha: 0.4, red: 0, green: 0, blue: 0)
                      : context.theme.color.border,
                )
              : null,
        ),
        child: ColumnLayout(gap: 8, children: [
          RowLayout(
            crossAxisAlignment: CrossAxisAlignment.start,
            gap: 8,
            children: [
              if (widget.arrowPosition == AppAccordionArrowPosition.left)
                _getArrowIcon(context),
              if (widget.iconLabel != null)
                Column(
                  children: [
                    widget.iconLabel.toSvgIcon(
                      size: widget.size == WidgetSize.sm ? 14 : 16,
                      colorFilter:
                          ColorFilter.mode(textPrimaryColor, BlendMode.srcIn),
                    ),
                  ],
                ),
              Expanded(
                  child: ColumnLayout(
                crossAxisAlignment: CrossAxisAlignment.start,
                gap: 8,
                children: [
                  AppText(
                    widget.label,
                    style: TextStyle(
                      color: textPrimaryColor,
                      fontSize: widget.size == WidgetSize.sm ? 12 : 14,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  if (widget.helperPosition ==
                          AppAccordionHelpPosition.bottom &&
                      widget.helperText != null)
                    AppText(
                      widget.helperText,
                      style: TextStyle(
                        color: textSecondaryColor,
                        fontSize: 12,
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                  if (widget.style != WidgetStyle.shade && _isExpanded)
                    AppText(
                      widget.text,
                      style: TextStyle(
                        color: textPrimaryColor,
                        fontSize: widget.size == WidgetSize.sm ? 12 : 14,
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                ],
              )),
              Column(
                children: [
                  if (widget.helperPosition == AppAccordionHelpPosition.right &&
                      widget.helperText != null)
                    AppText(
                      widget.helperText,
                      style: TextStyle(
                        color: textSecondaryColor,
                        fontSize: 12,
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                ],
              ),
              if (widget.arrowPosition == AppAccordionArrowPosition.right)
                _getArrowIcon(context),
            ],
          ),
          if (widget.style == WidgetStyle.shade && _isExpanded)
            Row(
              children: [
                Expanded(
                  child: Container(
                    padding: paddingTextSize,
                    decoration: BoxDecoration(
                      color: widget.style == WidgetStyle.shade
                          ? context.theme.color.bg
                          : null,
                      borderRadius: widget.style == WidgetStyle.shade
                          ? context.theme.borderRadius.sm
                          : null,
                    ),
                    child: AppText(
                      widget.text,
                      style: TextStyle(
                        color: textPrimaryColor,
                        fontSize: widget.size == WidgetSize.sm ? 12 : 14,
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                  ),
                ),
              ],
            )
        ]),
      ),
    );
  }

  EdgeInsets get paddingBodySize => switch (widget.size) {
        WidgetSize.xxs => const EdgeInsets.all(4),
        WidgetSize.xs => const EdgeInsets.all(4),
        WidgetSize.sm => const EdgeInsets.all(4),
        WidgetSize.md => const EdgeInsets.symmetric(horizontal: 6, vertical: 4),
        WidgetSize.lg =>
          const EdgeInsets.symmetric(horizontal: 8, vertical: 12),
        WidgetSize.xl =>
          const EdgeInsets.symmetric(horizontal: 8, vertical: 12),
        WidgetSize.xxl =>
          const EdgeInsets.symmetric(horizontal: 8, vertical: 12)
      };

  Color get textPrimaryColor => widget.disabled
      ? context.theme.color.textPrimary
          .withValues(alpha: 0.4, red: 0, green: 0, blue: 0)
      : context.theme.color.textPrimary;

  Color get textSecondaryColor => widget.disabled
      ? context.theme.color.textSecondary
          .withValues(alpha: 0.4, red: 0, green: 0, blue: 0)
      : context.theme.color.textSecondary;

  Color get iconColor => widget.disabled
      ? context.theme.color.iconPrimary
          .withValues(alpha: 0.4, red: 0, green: 0, blue: 0)
      : context.theme.color.iconPrimary;

  Color get bodyBackgroundColor => switch (widget.style) {
        WidgetStyle.outlined => widget.disabled
            ? context.theme.color.bg
                .withValues(alpha: 0.005, red: 0, green: 0, blue: 0)
            : context.theme.color.bg,
        WidgetStyle.shade => widget.disabled
            ? context.theme.color.buttonShade
                .withValues(alpha: 0.05, red: 0, green: 0, blue: 0)
            : context.theme.color.buttonShade,
        WidgetStyle.filled => widget.disabled
            ? context.theme.color.bg
                .withValues(alpha: 0.005, red: 0, green: 0, blue: 0)
            : context.theme.color.bg,
        WidgetStyle.subtle => widget.disabled
            ? context.theme.color.bg
                .withValues(alpha: 0.005, red: 0, green: 0, blue: 0)
            : context.theme.color.bg,
        WidgetStyle.text => widget.disabled
            ? context.theme.color.bg
                .withValues(alpha: 0.005, red: 0, green: 0, blue: 0)
            : context.theme.color.bg,
        null => widget.disabled
            ? context.theme.color.bg
                .withValues(alpha: 0.005, red: 0, green: 0, blue: 0)
            : context.theme.color.bg
      };

  EdgeInsets get paddingTextSize => switch (widget.size) {
        WidgetSize.xxs =>
          const EdgeInsets.symmetric(horizontal: 8, vertical: 4),
        WidgetSize.xs => const EdgeInsets.symmetric(horizontal: 8, vertical: 4),
        WidgetSize.sm => const EdgeInsets.symmetric(horizontal: 8, vertical: 4),
        WidgetSize.md =>
          const EdgeInsets.symmetric(horizontal: 12, vertical: 6),
        WidgetSize.lg =>
          const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
        WidgetSize.xl =>
          const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
        WidgetSize.xxl =>
          const EdgeInsets.symmetric(horizontal: 16, vertical: 8)
      };

  Widget _getArrowIcon(BuildContext context) {
    return Column(children: [
      if (_isExpanded)
        Assets.icon.caretDownRegular.svgIcon(
            size: widget.size == WidgetSize.sm ? 12 : 16,
            colorFilter: ColorFilter.mode(iconColor, BlendMode.srcIn))
      else
        Assets.icon.caretRightRegular.svgIcon(
            size: widget.size == WidgetSize.sm ? 12 : 16,
            colorFilter: ColorFilter.mode(iconColor, BlendMode.srcIn)),
    ]);
  }
}
