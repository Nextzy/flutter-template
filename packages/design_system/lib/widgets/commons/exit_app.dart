import 'package:design_system/lib.dart';

class ExitApp extends AppStatefulWidget {
  const ExitApp({
    super.key,
    this.canPop = false,
    this.duration = const Duration(seconds: 1),
    required this.onExit,
    required this.child,
  });

  final Duration duration;
  final Widget child;
  final bool canPop;
  final Function() onExit;

  @override
  State<ExitApp> createState() => _ExitAppState();
}

class _ExitAppState extends AppState<ExitApp> {
  DateTime? _lastPressedAt;

  @override
  Widget build(BuildContext context) {
    return PopScope(
      canPop: widget.canPop,
      onPopInvokedWithResult: (didPop, result) async {
        final canPop = context.canPop();
        if (kIsWeb) {
          await widget.onExit();
          return;
        }
        if (didPop) return;

        final now = DateTime.now();
        if (_lastPressedAt == null ||
            now.difference(_lastPressedAt!) > widget.duration) {
          _lastPressedAt = now;
          //TODO:
          Log.i(Strings.common.alert.info.doubleTapExit);
          // AppToast.show(Strings.common.double_tap_exit);
          return;
        }

        if (!canPop) {
          await widget.onExit();
          SystemNavigator.pop();
        }
      },
      child: widget.child,
    );
  }
}
