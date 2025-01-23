import 'package:design_system/lib.dart';

class AppVerticalSteps extends AppStatefulWidget {
  const AppVerticalSteps({
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
  State<AppVerticalSteps> createState() => _AppVerticalStepsState();
}

class _AppVerticalStepsState extends AppState<AppVerticalSteps> {
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
    return ColumnLayout(
      gap: 2,
      children: [
        for (final child in widget.children)
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              ColumnLayout(
                gap: 2,
                children: [
                  if (widget.style == AppStepStyle.dot &&
                      widget.children.indexOf(child) == 0)
                    SizedBox(height: 4),
                  _buildIndicator(
                      context, widget.children.indexOf(child) + 1, child.icon),
                  if (widget.children.indexOf(child) + 1 !=
                      widget.children.length)
                    Container(
                      width: 2,
                      height: 40,
                      decoration: BoxDecoration(
                        color: _currentStep > widget.children.indexOf(child) + 1
                            ? context.theme.color.brandPrimary
                            : context.theme.color.border,
                      ),
                    ),
                ],
              ),
              SizedBox(width: 12),
              AppStepItem(
                  size: widget.size,
                  title: child.title,
                  description: child.description)
            ],
          )
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
