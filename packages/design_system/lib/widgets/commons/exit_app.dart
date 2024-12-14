import 'package:design_system/lib.dart';

class ExitApp extends AppStatelessWidget {
  const ExitApp({
    super.key,
    required this.onExit,
    required this.child,
  });

  final Widget child;
  final FutureOr<bool> Function() onExit;

  @override
  Widget build(BuildContext context) {
    return PopScope(
      canPop: false,
      onPopInvokedWithResult: (didPop, result) async {
        final result = await onExit();
        if (!context.canPop() && result) {
          SystemNavigator.pop();
        }
      },
      child: child,
    );
  }
}
