import 'package:design_system/lib.dart';

class AppPopover extends AppStatefulWidget {
  const AppPopover({
    super.key,
    required this.text,
    required this.child,
    this.direction = PopoverDirection.bottom,
    this.width = 200,
    this.height = 100,
  });

  final String text;
  final Widget child;
  final PopoverDirection direction;
  final double width;
  final double height;

  @override
  State<AppPopover> createState() => _AppPopoverState();
}

class _AppPopoverState extends AppState<AppPopover> {
  @override
  Widget build(BuildContext context) {
    return AppButton(
        text: widget.text,
        onPress: () => {
              showPopover(
                context: context,
                bodyBuilder: (context) => widget.child,
                direction: widget.direction,
                width: widget.width,
                height: widget.height,
                arrowHeight: 15,
                arrowWidth: 30,
              )
            });
  }
}
