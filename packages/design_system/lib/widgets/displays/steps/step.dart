import 'package:design_system/lib.dart';

enum AppStepStyle { number, dot, icon }

class AppHorizontalSteps extends AppStatefulWidget {
  const AppHorizontalSteps({
    super.key,
    super.size = WidgetSize.md,
    this.style = AppStepStyle.number,
    required this.children,
    this.defaultValue = 1,
  });

  final AppStepStyle style;
  final List<AppStepItem> children;
  final int defaultValue;

  @override
  State<AppHorizontalSteps> createState() => _AppStepsState();
}

class _AppStepsState extends AppState<AppHorizontalSteps> {
  late int _currentStep = 1;

  @override
  void initState() {
    super.initState();
    setState(() {
      _currentStep = widget.defaultValue;
    });
  }

  @override
  Widget build(BuildContext context) {
    return RowLayout(
      gap: 2,
      children: [
        for (final child in widget.children)
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              RowLayout(gap: 2, children: [
                _buildIndicator(
                    context, widget.children.indexOf(child) + 1, child.icon),
                if (widget.children.indexOf(child) + 1 !=
                    widget.children.length)
                  Container(
                    width: 150,
                    height: 2,
                    decoration: BoxDecoration(
                      color: _currentStep > widget.children.indexOf(child) + 1
                          ? context.theme.color.brandPrimary
                          : context.theme.color.border,
                    ),
                  ),
              ]),
              SizedBox(height: 12),
              AppStepItem(
                  size: widget.size,
                  title: child.title,
                  description: child.description)
            ],
          ),
      ],
    );
  }

  Widget _buildIndicator(BuildContext context, int step, String? icon) {
    switch (widget.style) {
      case AppStepStyle.number:
        return Container(
          width: widget.size == WidgetSize.sm ? 18 : 24,
          height: widget.size == WidgetSize.sm ? 18 : 24,
          decoration: BoxDecoration(
            color: context.theme.color.bg,
            borderRadius: BorderRadius.circular(24),
            border: Border.all(
              color: _currentStep >= step
                  ? context.theme.color.brandPrimary
                  : context.theme.color.border,
              width: 2,
            ),
          ),
          child: Center(
            child: Text(
              step.toString(),
              style: TextStyle(
                color: _currentStep >= step
                    ? context.theme.color.brandPrimary
                    : context.theme.color.textSecondary,
                fontSize: widget.size == WidgetSize.sm ? 12 : 14,
                fontWeight: FontWeight.w600,
              ),
            ),
          ),
        );
      case AppStepStyle.dot:
        return Container(
          width: 8,
          height: 8,
          decoration: BoxDecoration(
            color: _currentStep >= step
                ? context.theme.color.bg
                : context.theme.color.border,
            borderRadius: BorderRadius.circular(24),
            border: _currentStep >= step
                ? Border.all(
                    color: _currentStep >= step
                        ? context.theme.color.brandPrimary
                        : context.theme.color.border,
                    width: 2,
                  )
                : null,
          ),
        );
      case AppStepStyle.icon:
        return icon.toSvgIcon(
          size: widget.size == WidgetSize.sm ? 16 : 24,
          colorFilter: ColorFilter.mode(
            _currentStep >= step
                ? context.theme.color.brandPrimary
                : context.theme.color.iconTertiary,
            BlendMode.srcIn,
          ),
        );
    }
  }
}
