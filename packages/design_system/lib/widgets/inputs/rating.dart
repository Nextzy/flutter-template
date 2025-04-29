import 'package:design_system/lib.dart';

enum AppRatingStyle { star, heart, dot, emoji }

class AppRating extends AppStatefulWidget {
  const AppRating({
    super.key,
    super.size = WidgetSize.md,
    this.style = AppRatingStyle.star,
    this.value = 0,
    this.max = 5,
    this.color,
    this.showText = false,
    this.textColor,
    this.onChanged,
  });

  final AppRatingStyle style;
  final double value;
  final int max;
  final Color? color;
  final bool showText;
  final Color? textColor;

  final ValueChanged<double>? onChanged;

  @override
  AppState<AppRating> createState() => _AppRatingState();
}

class _AppRatingState extends AppState<AppRating> {
  late double _value = 0;

  @override
  void initState() {
    super.initState();
    setState(() {
      _value = widget.value;
    });
  }

  void _onTap(int index) {
    setState(() {
      _value = index + 1 == _value ? 0 : index + 1;
    });

    if (widget.onChanged != null) {
      widget.onChanged!(_value);
    }
  }

  @override
  Widget build(BuildContext context) {
    List<Widget> rating = [];

    for (var i = 0; i < widget.max; i++) {
      double ratingValue = i + 1;

      Color color = ratingValue <= _value
          ? widget.color ?? iconColor
          : context.theme.color.bgSurface3;

      String emoji = switch (i) {
        0 => '😠',
        1 => '😕',
        2 => '😐',
        3 => '🙂',
        4 => '😀',
        int() => '😀',
      };

      rating.add(
        InkWell(
          onTap: () => _onTap(i),
          child: AppText(widget.style == AppRatingStyle.emoji ? emoji : icon,
              style: TextStyle(
                fontSize: iconSize,
                color: color,
              )),
        ),
      );
    }

    return Row(
      children: [
        ...rating,
        if (widget.showText) ...[
          Gap(16),
          AppText(
            _value.toString(),
            style: TextStyle(
              color: widget.textColor ?? context.theme.color.textPrimary,
              fontSize: fontSize,
              fontWeight: FontWeight.w600,
            ),
          )
        ]
      ],
    );
  }

  String get icon => switch (widget.style) {
        AppRatingStyle.star => '★',
        AppRatingStyle.heart => '♥',
        AppRatingStyle.dot => '•',
        AppRatingStyle.emoji => '😀',
      };

  double get iconSize => switch (widgetSize) {
        WidgetSize.xxs => 16,
        WidgetSize.xs => 16,
        WidgetSize.sm => 16,
        WidgetSize.md => 24,
        WidgetSize.lg => 40,
        WidgetSize.xl => 40,
        WidgetSize.xxl => 40,
      };

  Color get iconColor => switch (widget.style) {
        AppRatingStyle.star => context.theme.color.iconWarning,
        AppRatingStyle.heart => context.theme.color.iconNegative,
        AppRatingStyle.dot => context.theme.color.iconBlue,
        AppRatingStyle.emoji => context.theme.color.iconWarning,
      };

  double get fontSize => switch (widgetSize) {
        WidgetSize.xxs => 12,
        WidgetSize.xs => 12,
        WidgetSize.sm => 12,
        WidgetSize.md => 14,
        WidgetSize.lg => 24,
        WidgetSize.xl => 24,
        WidgetSize.xxl => 24,
      };
}
