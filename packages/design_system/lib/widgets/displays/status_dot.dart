import 'package:design_system/lib.dart';

class StatusDot extends AppStatelessWidget {
  const StatusDot({
    super.key,
    this.color,
    this.border = false,
  });

  final Color? color;
  final bool border;

  @override
  Widget build(BuildContext context) {
    final theme = getTheme(context);
    return ContainerLayout(
      borderRadius: BorderRadius.circular(1000.00),
      backgroundColor: color ?? theme.color.bgPositive,
      border: border
          ? theme.border.lg.copy(
              color: theme.color.bgSurface1,
              strokeAlign: BorderSide.strokeAlignOutside,
            )
          : null,
    );
  }
}
