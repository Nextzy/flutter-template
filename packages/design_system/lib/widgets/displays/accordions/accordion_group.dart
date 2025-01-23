import 'package:design_system/lib.dart';

class AppAccordionGroup extends AppStatelessWidget {
  const AppAccordionGroup({
    super.key,
    super.size = WidgetSize.md,
    this.style,
    required this.children,
    this.disabled = false,
  });

  final WidgetStyle? style;
  final List<AppAccordion> children;
  final bool disabled;

  @override
  Widget build(BuildContext context) {
    return ColumnLayout(
      gap: 6,
      children: [
        for (final child in children)
          AppAccordion(
              key: child.key,
              size: size,
              style: style,
              iconLabel: child.iconLabel,
              label: child.label,
              helperText: child.helperText,
              text: child.text,
              arrowPosition: child.arrowPosition,
              helperPosition: child.helperPosition,
              disabled: child.disabled,
              isExpanded: child.isExpanded)
      ],
    );
  }
}
