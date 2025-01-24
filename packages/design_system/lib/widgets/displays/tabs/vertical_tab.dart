import 'package:design_system/lib.dart';

class AppVerticalTab extends AppStatefulWidget {
  const AppVerticalTab(
      {super.key,
      super.size,
      this.style = AppTabStyle.filled,
      required this.children,
      this.defaultValue = 0});

  final AppTabStyle style;
  final List<AppTab> children;
  final int defaultValue;

  @override
  State<AppVerticalTab> createState() => _AppVerticalTabState();
}

class _AppVerticalTabState extends AppState<AppVerticalTab> {
  late int _currentIndex = 0;

  @override
  void initState() {
    super.initState();
    _currentIndex = widget.defaultValue;
  }

  void _selectTab(int index) {
    if (index != _currentIndex) {
      setState(() {
        _currentIndex = index;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Container(
        padding: padding,
        decoration: BoxDecoration(
          color: backgroundColor,
          border: widget.style == AppTabStyle.outlined
              ? Border.all(color: context.theme.color.border)
              : null,
          borderRadius: BorderRadius.circular(6),
        ),
        child: ColumnLayout(gap: gap, children: [
          for (final child in widget.children)
            GestureDetector(
              onTap: child.disabled
                  ? null
                  : () => _selectTab(widget.children.indexOf(child)),
              child: AppTab(
                size: widget.size,
                style: widget.style,
                icon: child.icon,
                text: child.text,
                active: widget.children.indexOf(child) == _currentIndex,
                first: widget.children.indexOf(child) == 0,
                last: widget.children.indexOf(child) ==
                    widget.children.length - 1,
                vertical: true,
                disabled: child.disabled,
              ),
            ),
        ]));
  }

  EdgeInsets? get padding => switch (widget.style) {
        AppTabStyle.filled => const EdgeInsets.all(2),
        AppTabStyle.shade => const EdgeInsets.all(2),
        AppTabStyle.outlined => null,
        AppTabStyle.underline => null,
      };

  double get gap => switch (widget.style) {
        AppTabStyle.filled => 2,
        AppTabStyle.shade => 4,
        AppTabStyle.outlined => 0,
        AppTabStyle.underline => 0,
      };

  Color get backgroundColor => switch (widget.style) {
        AppTabStyle.filled => context.theme.color.bgSurface2,
        AppTabStyle.shade => context.theme.color.bgTab,
        AppTabStyle.outlined => context.theme.color.bgTab,
        AppTabStyle.underline => context.theme.color.bgTab,
      };
}
