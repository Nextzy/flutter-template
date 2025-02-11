import 'package:design_system/lib.dart';

enum AppRatingStyle { star, heart, dot, emoji }

class AppRating extends AppStatefulWidget {
  const AppRating({
    super.key,
    super.size = WidgetSize.md,
    this.style = AppRatingStyle.star,
    this.defaultValue = 0,
    this.showText = false,
    this.onChanged,
  });

  final AppRatingStyle style;
  final double defaultValue;
  final bool showText;

  final ValueChanged<double>? onChanged;

  @override
  State<AppRating> createState() => _AppRatingState();
}

class _AppRatingState extends AppState<AppRating> {
  late double _defaultValue = 0;

  @override
  void initState() {
    super.initState();
    setState(() {
      _defaultValue = widget.defaultValue;
    });
  }

  void _onTap(int index) {
    setState(() {
      _defaultValue = index + 1 == _defaultValue ? 0 : index + 1;
    });

    if (widget.onChanged != null) {
      widget.onChanged!(_defaultValue);
    }
  }

  @override
  Widget build(BuildContext context) {
    List<Widget> rating = [];

    for (var i = 0; i < 5; i++) {
      double ratingValue = i + 1;

      Color color = ratingValue <= _defaultValue
          ? iconColor
          : context.theme.color.bgSurface2;

      String emoji = switch (i) {
        0 => '😠',
        1 => '😕',
        2 => '😐',
        3 => '🙂',
        4 => '😀',
        int() => '😀',
      };

      rating.add(
        GestureDetector(
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
        if (widget.showText) SizedBox(width: 16),
        if (widget.showText)
          AppText(
            _defaultValue.toString(),
            style: TextStyle(
              color: context.theme.color.textPrimary,
              fontSize: fontSize,
              fontWeight: FontWeight.w600,
            ),
          )
      ],
    );
  }

  String get icon => switch (widget.style) {
        AppRatingStyle.star => '★',
        AppRatingStyle.heart => '♥',
        AppRatingStyle.dot => '•',
        AppRatingStyle.emoji => '😀',
      };

  double get iconSize => switch (widget.size) {
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

  double get fontSize => switch (widget.size) {
        WidgetSize.xxs => 12,
        WidgetSize.xs => 12,
        WidgetSize.sm => 12,
        WidgetSize.md => 14,
        WidgetSize.lg => 24,
        WidgetSize.xl => 24,
        WidgetSize.xxl => 24,
      };
}
